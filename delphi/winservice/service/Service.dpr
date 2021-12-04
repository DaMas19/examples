program Service;

{$APPTYPE CONSOLE}
{$R *.res}

{$R 'service_events.res' 'service_events.rc'}

uses
  FastMM4,
  ExceptionLog,
  Classes,
  SysUtils,
  Windows,
  JwaWinNT,
  JwaWinSvc,
  win_services,
  win_scm,
  command_line,
  console_tools,
  version_info,
  eventlog,
  conf,
  defs,
  eventlog_events,
  logs,
  ConfigurationConsole in 'Lib\ConfigConsole\ConfigurationConsole.pas' {ConfigurationConsoleForm},
  DMServer in 'Lib\Server\DMServer.pas' {DM: TDataModule},
  Server in 'Lib\Server\Server.pas',
  ndProtocol in 'Lib\Server\ndProtocol.pas',
  ndProtocolSosEventv1 in 'Lib\Server\ndProtocolSosEventv1.pas',
  ConnectionInfo in 'Lib\ConfigConsole\ConnectionInfo.pas' {ConnectionInfoForm};

const
  MAX_WAIT_COUNT                             = 20;
  QUERY_TIMEOUT                              = 1000;


function GetExecutableName: String;
var
  i: Integer;
begin
  Result := ExtractFileName(ParamStr(0));
  i := Pos('.', Result);
  System.Delete(Result, i, Length(Result)-i+1);
end;

// Справка по ключам
procedure PrintDescription;
begin
  Writeln(Format(SRV_DESCR_F, [VersionInfo.FileVersion]));
  Writeln('');
  Writeln(Format('Syntax: %s <command>', [GetExecutableName]));
  Writeln('');
  Writeln('  install     Installs server instance');
  Writeln('  uninstall   Uninstalls server instance');
  Writeln('');
  Writeln('  configure   Opens server configuration console');
  Writeln('');
  Writeln('  start       Starts server instance');
  Writeln('  stop        Stops server instance');
  Writeln('  restart     Stops then starts server instance');
end;

procedure SyntaxError;
begin
  Writeln(Format(
    'Syntax error. Type ''%s'' to view syntax description', [GetExecutableName]));
end;

procedure Uninstall;
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CONNECT) do
      DeleteService(OpenService(SRV_KEY, DELETE));
    Writeln('SUCCESS: server instance uninstalled successfully');
  except
    on E: Exception do
      Writeln(Format('ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure Configure(Machine: String);
begin
  with TConfigurationConsoleForm.Create(nil) do
    begin
      Execute(Machine);
      Free;
    end;
end;

procedure Start(Machine: String);
var
  i: Integer;
  s: TServiceStatusProcess;
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CONNECT) do
      with OpenService(SRV_KEY, SERVICE_START or SERVICE_QUERY_STATUS) do
        begin
          Write('Starting server');
          Start([]);
          i := MAX_WAIT_COUNT;
          repeat
            s := QueryStatusEx;
            Dec(i);
            if s.dwCurrentState=SERVICE_RUNNING then
              begin
                Writeln(#13#10'SUCCESS: server instance is running');
                Break;
              end
            else
              if s.dwCurrentState=SERVICE_STOPPED then
                begin
                  Writeln(Format(#13#10'ERROR: server stopped with code %d',
                    [s.dwServiceSpecificExitCode]));
                  Break;
                end
              else
                if i<=0 then
                  begin
                    Writeln(#13#10'ERROR: server not yet started');
                    Break;
                  end
                else
                  begin
                    Write('.');
                    Sleep(QUERY_TIMEOUT);
                  end;
          until False;
        end;
  except
    on E: Exception do
      Writeln(Format(#13#10'ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure Stop(Machine: String);
var
  i: Integer;
  s: TServiceStatusProcess;
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CONNECT) do
      with OpenService(SRV_KEY, SERVICE_STOP or SERVICE_QUERY_STATUS) do
        begin
          Write('Stopping server');
          Control(SERVICE_CONTROL_STOP);
          i := MAX_WAIT_COUNT;
          repeat
            s := QueryStatusEx;
            Dec(i);
            if s.dwCurrentState=SERVICE_STOPPED then
              begin
                Writeln(Format(
                  #13#10'SUCCESS: server instance is stopped with code %d',
                  [s.dwServiceSpecificExitCode]));
                Break;
              end
            else
              if i<=0 then
                begin
                  Writeln(#13#10'ERROR: server not yet stopped');
                  Break;
                end
              else
                begin
                  Write('.');
                  Sleep(QUERY_TIMEOUT);
                end;
          until False;
        end;
  except
    on E: Exception do
      Writeln(Format(#13#10'ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure Restart(Machine: String);
var
  i: Integer;
  s: TServiceStatusProcess;
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CONNECT) do
      with OpenService(SRV_KEY, SERVICE_START or SERVICE_STOP
        or SERVICE_QUERY_STATUS) do
        begin
          Write('Stopping server');
          Control(SERVICE_CONTROL_STOP);
          i := MAX_WAIT_COUNT;
          repeat
            s := QueryStatusEx;
            Dec(i);
            if s.dwCurrentState=SERVICE_STOPPED then
              begin
                Writeln(Format(
                  #13#10'SUCCESS: server instance is stopped with code %d',
                  [s.dwServiceSpecificExitCode]));
                Break;
              end
            else
              if i<=0 then
                begin
                  Writeln(#13#10'ERROR: server not yet stopped');
                  Exit;
                end
              else
                begin
                  Write('.');
                  Sleep(QUERY_TIMEOUT);
                end;
          until False;

          Write(#13#10'Starting server');
          Start([]);
          i := MAX_WAIT_COUNT;
          repeat
            s := QueryStatusEx;
            Dec(i);
            if s.dwCurrentState=SERVICE_RUNNING then
              begin
                Writeln(#13#10'SUCCESS: server instance is running');
                Break;
              end
            else
              if s.dwCurrentState=SERVICE_STOPPED then
                begin
                  Writeln(Format(#13#10'ERROR: server stopped with code %d',
                    [s.dwServiceSpecificExitCode]));
                  Break;
                end
              else
                if i<=0 then
                  begin
                    Writeln(#13#10'ERROR: server not yet started');
                    Break;
                  end
                else
                  begin
                    Write('.');
                    Sleep(QUERY_TIMEOUT);
                  end;
          until False;
        end;
  except
    on E: Exception do
      Writeln(Format(#13#10'ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure InstallEvents;
var
  r: TResourceStream;
  d: TEventLogSourceData;
  p: array[0..MAX_PATH] of char;
begin
  if TEventLog.GetSourceData('System', LOG_SOURCE, d) then
  else
    begin
      if (ExpandEnvironmentStrings(
        '%SystemRoot%\System32\testservice_events.dll',
        @p, SizeOf(p))>0) then d.EventMessageFile := p
      else
        begin
          Writeln('ERROR: ExpandEnvironmentStrings() fail');
          Exit;
        end;

      d.Fields := [fEventMessageFile, fCategoryMessageFile, fCategoryCount,
        fTypesSupported];
      d.CategoryMessageFile := d.EventMessageFile;
      d.CategoryCount := CATEGORIES_COUNT;
      d.ParameterMessageFile := d.ParameterMessageFile;
      d.TypesSupported := -1;

      try
        TEventLog.SetSourceData('System', LOG_SOURCE, d);
      except
        on E: Exception do
          begin
            Writeln(Format('ERROR: %s', [E.ClassName]));
            Exit;
          end;
      end;

      if not TEventLog.GetSourceData('System', LOG_SOURCE, d) then
        begin
          Writeln('ERROR: No Event Log Source data found');
          Exit;
        end;
    end;

  try
    r := TResourceStream.Create(HInstance, 'EVENTS_LIB', RT_RCDATA);
    try
      r.SaveToFile(d.EventMessageFile);
      Writeln('SUCCESS: events library installed successfully');
    finally
      r.Free;
    end;
  except
    on E: Exception do
      begin
        Writeln(Format('ERROR: %s', [E.ClassName]));
        Exit;
      end;
  end;
end;

procedure Install(Machine: String);
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CREATE_SERVICE) do
      with CreateService(SRV_KEY, SRV_DISPLAY, SERVICE_CHANGE_CONFIG,
        SERVICE_WIN32_OWN_PROCESS, SERVICE_AUTO_START, SERVICE_ERROR_IGNORE,
        Format('%s', [ParamStr(0)]), '', nil, ['Tcpip'], nil, '') do
        Description := Format(SRV_DESCR_F, [VersionInfo.FileVersion]);
    InstallEvents;
    TConf.Init(SRV_KEY);
    Writeln('SUCCESS: server instance installed successfully');
  except
    on E: Exception do
      Writeln(Format('ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure Status(Machine: String);
var
  s: TServiceStatusProcess;
begin
  try
    with TServiceControlManager.Create(SC_MANAGER_CONNECT) do
      with OpenService(SRV_KEY, SERVICE_QUERY_STATUS) do
        begin
          s := QueryStatusEx;
          case s.dwCurrentState of
            SERVICE_STOP_PENDING:
              Writeln('Service state: STOP PENDING');
            SERVICE_STOPPED:
              Writeln('Service state: STOPPED');
            SERVICE_START_PENDING:
              Writeln('Service state: START PENDING');
            SERVICE_RUNNING:
              Writeln('Service state: RUNNING');
            SERVICE_PAUSE_PENDING:
              Writeln('Service state: PAUSE PENDING');
            SERVICE_PAUSED:
              Writeln('Service state: PAUSED');
            SERVICE_CONTINUE_PENDING:
              Writeln('Service state: CONTINUE PENDING');
          else
            Writeln('Service state: UNKNOWN');
          end;
        end;
  except
    on E: Exception do
      Writeln(Format(#13#10'ERROR: %s', [_OEM(AnsiString(E.Message))]));
  end;
end;

procedure ProcessConsole;
var
  cl: TCLParsedStructure;
  p: TCLParameter;
  i: Integer;

  m: String;
begin
  ExitCode := 1;

  cl := TCLParsedStructure.Create(GetCommandLine);
  try
    try
      if cl.Parameters.Exists('machine', p) and p.ValueExists then
        begin
          i := 1;
          m := p.Value;
        end
      else
        begin
          i := 0;
          m := '';
        end;

      if (cl.Arguments.Count=1) then
        PrintDescription
      else if (cl.Arguments.Count=2+i) then
        if cl.Verbs.Exists('configure') then
          Configure(m)
        else if cl.Verbs.Exists('install') then
          Install(m)
        else if cl.Verbs.Exists('uninstall') then
          Uninstall
        else if cl.Verbs.Exists('start') then
          Start(m)
        else if cl.Verbs.Exists('status') then
          Status(m)
        else if cl.Verbs.Exists('stop') then
          Stop(m)
        else if cl.Verbs.Exists('restart') then
          Restart(m)
        else
          SyntaxError
      else
        SyntaxError;
    except
      on E: Exception do
        begin
          Writeln(Format('ERROR: %s', [_OEM(AnsiString(E.Message))]));
          Halt(1);
        end;
    end;
  finally
    cl.Free;
  end;
end;

procedure StartupService;
begin
  TWinServices.Run(TndService, SRV_KEY);
end;

{$HINTS OFF}
var
  Application: Integer; // This stupid thing is for delphi to make it enable
                        // Application icon modification

begin
  if TWinServices.IsParentProcessServices then
    StartupService
  else
    ProcessConsole;
end.
