unit DMServer;

interface

uses
  SysUtils,
  Classes,
  DateUtils,
  Forms,
  conf,
  logs,
  defs,
  SyncObjs,
  MSAccess,
  OLEDBAccess,
  ActiveX,
  HTTPApp,
  IdGlobal,
  IdStack,
  IdExceptionCore,
  IdException,
  IdSocketHandle,
  IdContext,
  IdBaseComponent,
  IdComponent,
  IdCustomTCPServer,
  IdTCPServer,
  IdScheduler,
  IdThreadSafe,
  IdSchedulerOfThread,
  IdSchedulerOfThreadDefault,
  IdCmdTCPServer,
  IdCommandHandlers,
  IdUserPassProvider,
  IdSASL,
  IdSASLUserPass,
  IdSASLSKey,
  IdIntercept,
  IdCompressionIntercept;

type
  TDM = class(TDataModule)
    IdTCPSrvr: TIdTCPServer;
    IdShedulerOfThreadIP: TIdSchedulerOfThreadDefault;
    IdCmdTCPSrv: TIdCmdTCPServer;
    IdShedulerOfThreadCMD: TIdSchedulerOfThreadDefault;
    IdSASLKey: TIdSASLSKey;
    IdUserPassProvider: TIdUserPassProvider;
    IdServerCompression: TIdServerCompressionIntercept;
    procedure DataModuleDestroy(Sender: TObject);
    function GetServerOnline: Boolean;
    procedure IdTCPSrvrConnect(AContext: TIdContext);
    procedure IdTCPSrvrDisconnect(AContext: TIdContext);
    procedure IdTCPSrvrException(AContext: TIdContext; AException: Exception);
    procedure IdTCPSrvrExecute(AContext: TIdContext);
    procedure IdTCPSrvrStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdCmdTCPSrvCommandHandlers0Command(ASender: TIdCommand);
    procedure IdCmdTCPSrvConnect(AContext: TIdContext);
    procedure IdCmdTCPSrvDisconnect(AContext: TIdContext);
    procedure IdCmdTCPSrvCommandHandlers1Command(ASender: TIdCommand);
  private
    FLock: TCriticalSection;
    FConf: TConf;
    FLog: IServerLog;
    FContextID: Cardinal;
    function InternalServerBeforeStart: Boolean;
    procedure InternalServerAfterStart;
    function InternalServerBeforeStop: Boolean;
    procedure InternalServerAfterStop;
    function GetContextID: Cardinal;
  public
    function StartServer(): Integer;
    function StopServer(): Integer;
    constructor Create2(AOwner: TComponent; AConf: TConf; ALog: IServerLog);
    destructor Destroy; override;
    property ServerOnline: Boolean read GetServerOnline;
    property ContextID: Cardinal read GetContextID;
  end;

const
  ERROR_CODE_DM                              = ERROR_CODE_GLOBAL + 1000;

var
  DM                                         : TDM;

implementation

uses ndProtocolSosEventv1,
  ndProtocol;

const
  ERROR_CODE_DM_START_SERVER1                = ERROR_CODE_DM + 1;
  ERROR_CODE_DM_START_SERVER2                = ERROR_CODE_DM + 2;

  ERROR_CODE_DM_STOP_SERVER1                 = ERROR_CODE_DM + 3;

const
  cCMD_PARAM_CURRENT                         = 'CURRENT';
  cCMD_FILELOG_CURRNT                        = 'ss-20101209.log';

  cCMD_REPLY_OK_CODE                         = 200;
  cCMD_REPLY_OK_MSG                          = 'ok';

  cCMD_REPLY_ERROR_CODE                      = 500;
  cCMD_REPLY_ERROR_MSG                       = 'error';

  cCMD_REPLY_FILE_NOTFOUND_CODE              = 401;
  cCMD_REPLY_FILE_NOTFOUND_MSG               = 'file not found';

const
  cLOG_DIR                                   = 'logs-archive';

  cSERVER_COMMAND                            = 'srv cmd';
  cSERVER_IP                                 = 'srv  ip';

  {$R *.dfm}

procedure TDM.IdCmdTCPSrvCommandHandlers0Command(ASender: TIdCommand);
var
  filename                                   : TFileName;
  fstream                                    : TFileStream;
  stream                                     : TMemoryStream;
  FileLen                                    : Cardinal;
  sl                                         : TStringList;
  LogDir                                     : string;
begin
  try
    stream := TMemoryStream.Create;
    try
      FLog.info('%s:  | command [FILELOG] fired', [cSERVER_COMMAND]);
      if assigned(ASender.Params) then
      begin
        if ASender.Params.Count = 0 then raise Exception.Create(format('%s: command [FILELOG] params count = 0', [cSERVER_COMMAND]));

        filename := HttpDecode(ASender.Params[0]);

        if UpperCase(filename) = cCMD_PARAM_CURRENT then
        begin
          sl := TStringList.Create;
          try
            FLog.GetLogFileAsStrings(sl);
            sl.SaveToStream(stream);
            FileLen := stream.Size;
          finally
            sl.Free;
          end;
        end
        else
        begin
          LogDir := ExtractFileDir(Application.ExeName) + '\' + cLOG_DIR + '\';

          if FileExists(LogDir + filename) then
          begin
            fstream := TFileStream.Create(LogDir + filename, fmOpenRead);
            try
              FileLen := fstream.Size;
              fstream.Position := 0;

              stream.CopyFrom(fstream, FileLen);

            finally
              fstream.Free;
            end;
          end
          else
          begin
            ASender.Reply.SetReply(cCMD_REPLY_FILE_NOTFOUND_CODE, cCMD_REPLY_FILE_NOTFOUND_MSG);
            ASender.SendReply;
            Exit;
          end;
        end;

        FLog.info('%s:  | file [%s] size = %s', [cSERVER_COMMAND, filename, IntToStr(FileLen)]);

        stream.Position := 0;

        ASender.Reply.SetReply(cCMD_REPLY_OK_CODE, cCMD_REPLY_OK_MSG);
        ASender.SendReply;
        ASender.Context.Connection.IOHandler.WriteBufferOpen;
        ASender.Context.Connection.IOHandler.Write(FileLen, False);
        ASender.Context.Connection.IOHandler.Write(stream, FileLen);
        ASender.Context.Connection.IOHandler.WriteBufferClose;

      end;

    finally
      SetLength(filename, 0);
      SetLength(LogDir, 0);
      stream.Free;
    end;
  except
    on E: EIdConnClosedGracefully do
    begin
      FLog.info('%s: client close connection', [cSERVER_COMMAND]);
    end;

    on E: Exception do
    begin
      ASender.Reply.SetReply(cCMD_REPLY_ERROR_CODE, cCMD_REPLY_ERROR_MSG);
      ASender.SendReply;

      FLog.fatal('%s: error in command [FILELOG] : %s', [cSERVER_COMMAND, E.Message]);
      Exit;
    end;
  end;
end;

procedure TDM.IdCmdTCPSrvCommandHandlers1Command(ASender: TIdCommand);
var
  LogDir                                     : string;
  FileList                                   : TStringList;

  function LoadFromDir(const FilePath: string; var FList: TStringList): Boolean;
  var
    RetVal                                   : Integer;
    SearchRec                                : TSearchRec;
  begin
    Result := True;
    try
      try
        RetVal := SysUtils.FindFirst(FilePath, faAnyFile - faDirectory, SearchRec);
        while RetVal = 0 do
        begin
          FList.Add(SearchRec.Name);
          RetVal := SysUtils.FindNext(SearchRec);
        end;
        SysUtils.FindClose(SearchRec);
      finally

      end;
    except
      Result := False;
    end;
  end;

begin
  try
    FileList := TStringList.Create;
    try
      FLog.info('%s:  | command [FILELOGLIST] fired', [cSERVER_COMMAND]);

      LogDir := ExtractFileDir(Application.ExeName) + '\' + cLOG_DIR + '\*.log';
      if not LoadFromDir(LogDir, FileList) then
      begin

        ASender.Reply.SetReply(cCMD_REPLY_ERROR_CODE, cCMD_REPLY_ERROR_MSG);
        ASender.SendReply;
        raise Exception.CreateFmt('%s: error in command [FILELOG] : ExtractFileDir', [cSERVER_COMMAND]);
      end;

      ASender.Reply.SetReply(cCMD_REPLY_OK_CODE, cCMD_REPLY_OK_MSG);
      ASender.SendReply;

      ASender.Context.Connection.IOHandler.WriteBufferOpen;
      ASender.Context.Connection.IOHandler.Write(FileList, True, TIdTextEncoding.Default);
      ASender.Context.Connection.IOHandler.WriteBufferClose;

    finally
      FileList.Free;
      SetLength(LogDir, 0);
    end;
  except
    on E: EIdConnClosedGracefully do
    begin
      FLog.info('%s: client close connection', [cSERVER_COMMAND]);
    end;

    on E: Exception do
    begin
      ASender.Reply.SetReply(cCMD_REPLY_ERROR_CODE, cCMD_REPLY_ERROR_MSG);
      ASender.SendReply;

      FLog.fatal('%s: error in command [FILELOGLIST] : %s', [cSERVER_COMMAND, E.Message]);
      Exit;
    end;
  end;
end;

procedure TDM.IdCmdTCPSrvConnect(AContext: TIdContext);
var
  user, password                             : string;
begin
  try
    try
      user := AContext.Connection.IOHandler.ReadLn;
      if user <> IdSASLKey.StartAuthenticate('', '', '') then
      begin
        fLog.warning('%s: bad username - disconnect', [cSERVER_COMMAND]);
        AContext.Connection.Disconnect;
        Exit;
      end;

      password := AContext.Connection.IOHandler.ReadLn;

      if password <> IdSASLKey.ContinueAuthenticate('54321', '', '') then
      begin
        fLog.warning('%s: bad password - disconnect', [cSERVER_COMMAND]);
        AContext.Connection.Disconnect;
        Exit;
      end;

      FLog.info('%s: -> ip:[%s]', [cSERVER_COMMAND, AContext.Connection.Socket.Binding.PeerIP]);
    finally
      SetLength(user, 0);
      SetLength(password, 0);
    end;
  except
    on E: Exception do
    begin
      FLog.fatal('%s: connection error : %s', [cSERVER_COMMAND, E.Message]);
      Exit;
    end;
  end;
end;

procedure TDM.IdCmdTCPSrvDisconnect(AContext: TIdContext);
begin
  try
  except
    on E: EIdConnClosedGracefully do
    begin
      FLog.info('%s: <- ip:[%s]', [cSERVER_COMMAND, AContext.Connection.Socket.Binding.PeerIP]);
    end;

    on E: Exception do
    begin

      FLog.fatal('%s: error disconnect:%s', [cSERVER_COMMAND, E.Message]);
      Exit;
    end;
  end;

end;

destructor TDM.Destroy;
begin
  FLog := nil;
  inherited;
end;

constructor TDM.Create2(AOwner: TComponent; AConf: TConf; ALog: IServerLog);
begin
  inherited Create(AOwner);
  FLock := TCriticalSection.Create;
  FConf := AConf;
  FLog := ALog;
  FContextID := 0;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FLog := nil;
  FLock.Free;
  inherited;
end;

function TDM.GetContextID: Cardinal;
begin
  FLock.Enter;
  try
    Result := FContextID;
    Inc(FContextID);
  finally
    FLock.Leave;
  end;
end;

function TDM.InternalServerBeforeStart: Boolean;
begin
  result := true;
end;

procedure TDM.IdTCPSrvrConnect(AContext: TIdContext);
begin
  try
    AContext.Data := TndCmdProtocolSOSEv1.Create(AContext, FConf, FLog);
    TndCmdProtocolSOSEv1(AContext.Data).ID := ContextID;
    FLog.info('%s: -> id:[%s] -> ip:[%s]',
      [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), AContext.Connection.Socket.Binding.PeerIP]);
  except
    on E: Exception do
    begin
      FLog.fatal('%s: server connect error: %s', [cSERVER_IP, E.Message]);
      raise;
    end;
  end;
end;

procedure TDM.IdTCPSrvrDisconnect(AContext: TIdContext);
var
  vID                                        : Cardinal;
begin
  vID := 0;
  if AContext.Data <> nil then
  begin
    vID := TndCmdProtocolSOSEv1(AContext.Data).ID;
    TndCmdProtocolSOSEv1(AContext.Data).Free;
    AContext.Data := nil;
  end;
  FLog.info('%s: <- id:[%s]', [cSERVER_IP, IntToStr(vID)]);
end;

procedure TDM.IdTCPSrvrException(AContext: TIdContext; AException: Exception);
begin
  FLog.warning('%s: client id:[%s] error:%s',
    [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), AException.Message]);
end;

procedure TDM.IdTCPSrvrExecute(AContext: TIdContext);
var
  RxBuf                                      : TIdBytes;
  Error                                      : Integer;
begin
  try
    try
      with AContext.Connection.IOHandler do
      begin
        CheckForDataOnSource(10);
        if InputBufferIsEmpty then
        begin
          if AContext.Connection.IOHandler.InputBufferIsEmpty then
          begin
            if ABS(MinutesBetween(TndCmdProtocolSOSEv1(AContext.Data).LastActivity, Now)) > 3
              then
              AContext.Connection.Disconnect;
            Exit;
          end;
        end
        else
        begin
          SetLength(RxBuf, 0);

          with TndCmdProtocolSOSEv1(AContext.Data) do
          begin
            LastActivity := Now;
            if InputBuffer.Size >= NeedBytes then
            begin

              InputBuffer.ExtractToBytes(RxBuf, NeedBytes);
              Error := SetBuffer(RxBuf); // Передача буфера

              if Error <> S_OK then
              begin
                fLog.warning('%s: error parsing incoming data from client id:[%s] . error № %s',
                  [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), IntToStr(Error)]);
                raise Exception.CreateFmt('%s: error parsing incoming data from client id:[%s] . error № %s',
                  [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), IntToStr(Error)]);
              end;

              if State = stExecute then
              begin
                Error := Execute;

                if Error = S_OK then
                begin
                end
                else
                begin
                  fLog.warning('%s: error working with incoming data from client id:[%s]. error № %s',
                    [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), IntToStr(Error)]);
                  raise Exception.CreateFmt('%s: error working with incoming data from client id:[%s]. error № %s',
                    [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID), IntToStr(Error)]);
                end;
              end;

            end;
          end;
        end;
      end;
    except
      on E: EIdSocketError do {EIdConnClosedGracefully}
      begin
        if E.LastError = 10054 then
          fLog.warning('%s: communication error - connection was aborted remote computer. client id:[%s]',
            [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID)])
        else
          fLog.warning('%s: communication error. client id:[%s]',
            [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID)]);
        AContext.Connection.Socket.Close;
      end;
      on E: EIdClosedSocket do
      begin
        fLog.warning('%s closes the connection to the client id:[%s]',
          [cSERVER_IP, IntToStr(TndCmdProtocolSOSEv1(AContext.Data).ID)]);
      end;

      on E: Exception do
      begin
        AContext.Connection.Socket.Close;
        fLog.warning('%s: unknown error: %s [ %s ]', [cSERVER_IP, E.Message, E.ClassName]);
      end;
    end;
  finally
    SetLength(RxBuf, 0);
  end;
end;

procedure TDM.IdTCPSrvrStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  FLog.info('status %s: %s', [cSERVER_IP, AStatusText]);
end;

procedure TDM.InternalServerAfterStart;
begin
end;

function TDM.GetServerOnline: Boolean;
begin
  result := IdTCPSrvr.Active;
end;

function TDM.StartServer: Integer;
const
  cCONNECTION_TIMEOUT                        = 15;
var
  Binding                                    : TIdSocketHandle;
begin
  try
    try
      CoInitializeEx(nil, COINIT_MULTITHREADED);
      with TMSConnection.Create(nil) do
      try
        try
          ConnectionTimeout := cCONNECTION_TIMEOUT;
          Options.Provider := prNativeClient;
          ConnectString := fConf.Database.ConnectionString;
          IsolationLevel := ilSnapshot;
          LoginPrompt := False;

          Connect;
          FLog.info('test connect to SQL Server - ok');
        finally
          Close;
          Free;
          CoUninitialize;
        end;
      except
        on E: Exception do
        begin
          raise Exception.CreateFmt('test connect to SQL Server - error. %s', [E.Message]);
        end;
      end;

      with IdTCPSrvr do
      begin
        Bindings.Clear;

        DefaultPort := StrToInt(FConf.Server.Port);
        Binding := Bindings.Add;
        Binding.IP := FConf.Server.Address;
        Binding.Port := StrToInt(FConf.Server.Port);

        FLog.info('%s bound to ip [%s:%s]', [cSERVER_IP, Binding.IP, IntToStr(Binding.Port)]);

        if InternalServerBeforeStart then
        begin
          Active := true;
          InternalServerAfterStart;
        end;
      end;

      with IdCmdTCPSrv do
      begin
        Bindings.Clear;

        DefaultPort := StrToInt(FConf.Server.Port) + 1;
        Binding := Bindings.Add;
        Binding.IP := FConf.Server.Address;
        Binding.Port := StrToInt(FConf.Server.Port) + 1;

        FLog.info('%s bound to ip [%s:%s]', [cSERVER_COMMAND, Binding.IP, IntToStr(Binding.Port)]);

        Active := true;
      end;

      Result := S_OK;

    finally
      //      Binding := nil;
    end;
  except
    on E: Exception do
    begin
      FLog.fatal('start server error: %s', [E.Message]);
      raise;
    end;
  end;
end;

function TDM.InternalServerBeforeStop: Boolean;
var
  I                                          : Integer;
  vID                                        : Cardinal;
begin
  with IdTCPSrvr do
    if Contexts <> nil then
    begin
      with Contexts.LockList do
      try
        for i := 0 to Count - 1 do
        begin
          if TndCmdProtocolSOSEv1(TIdContext(Items[i]).Data).State <> stExecute then
          begin
            vID := TndCmdProtocolSOSEv1(TIdContext(Items[i]).Data).ID;

            TIdContext(Items[i]).Connection.Disconnect(False);
            FLog.info('%s closed connection with client id:[%s]',
              [cSERVER_IP, IntToStr(vID)]);
          end;
        end;
      finally
        Contexts.UnLockList;
      end;
    end;

  Result := true;
end;

procedure TDM.InternalServerAfterStop;
begin
end;

function TDM.StopServer: Integer;
var
  vIsActive                                  : Boolean;
begin
  Result := S_FALSE;
  try
    try
      with IdTCPSrvr do
      begin
        vIsActive := Active;
        if InternalServerBeforeStop then
        begin
          Active := false;
          Bindings.Clear;

          if not Active then
          begin
            if vIsActive then
              FLog.info('%s stopped', [cSERVER_IP]);
          end
          else
          begin
            FLog.warning('%s not stopped', [cSERVER_IP]);
            Exit;
          end;

          InternalServerAfterStop;
        end
        else
        begin
          FLog.warning('%s not stopped', [cSERVER_IP]);
          Exit;
        end;
        Result := S_OK;
      end;
    finally

    end;
  except
    on E: Exception do
    begin
      FLog.fatal('stop %s Error: %s', [cSERVER_IP, E.Message]);
      raise;
    end;
  end;

  try
    try
      with IdCmdTCPSrv do
      begin
        vIsActive := Active;

        Active := false;
        Bindings.Clear;

        if not Active then
        begin
          if vIsActive then
            FLog.info('%s stopped', [cSERVER_COMMAND]);
        end
        else
        begin
          FLog.warning('%s not stopped', [cSERVER_COMMAND]);
          Exit;
        end;

        InternalServerAfterStop;
        Result := S_OK;
      end;
    finally

    end;
  except
    on E: Exception do
    begin
      FLog.fatal('stop %s Error: %s', [cSERVER_COMMAND, E.Message]);
      raise;
    end;
  end;

end;

end.

