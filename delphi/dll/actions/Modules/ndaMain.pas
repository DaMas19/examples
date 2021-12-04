unit ndaMain;

interface

uses
  SysUtils,
  Classes,
  DateUtils,
  ndILog,
  AcedCommon,
  ndaJSON,
  actActionUtils,
  ndActions_h,
  ndActions_u,
  actAction_h;

function Init(AConfig: TndaConfig): LongInt; stdcall;
function Status: TEngineStatus; stdcall;
function LoadActions(AActions: TndaActionList): LongInt; stdcall;
function LoadGoodsList(AGoods: WideString): LongInt; stdcall;
function LoadActionsList(AActions: WideString): LongInt; stdcall;
function Execute(AOrder: TadOrder; var AReOrder: TadReOrder): LongInt; stdcall;
function SetOptionsDebug(AOptionsDebug: TndaDebugOptions): LongInt; stdcall;
function ActionAsBinary(AActionId: LongInt; var AValue: WideString): LongInt; stdcall;
function ActionFromBinary(AValue: WideString; var AActionId: LongInt): LongInt; stdcall;
function CheckDbConnect(var AErrorMsg: WideString): LongInt; stdcall;

implementation

uses
  dmMain,
  ndaConst,
  ndaUtils;

function LoadActionsList(AActions: WideString): LongInt; stdcall;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      Exit;
    end;

    Result := DM.LoadActionsList(AActions);
  except
    on E: Exception do
    begin
      DM.aLog.Log('[LoadActionsList]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function LoadGoodsList(AGoods: WideString): LongInt; stdcall;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      Exit;
    end;

    Result := DM.LoadGoodsList(AGoods);
  except
    on E: Exception do
    begin
      DM.aLog.Log('[LoadGoodsList]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function CheckDbConnect(var AErrorMsg: WideString): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      AErrorMsg := 'DM_NOT_ASSIGNED';
      Exit;
    end;

    Result := DM.CheckDbConnect(AErrorMsg);
  except
    on E: Exception do
    begin
      AErrorMsg := e.Message;
      DM.aLog.Log('[CheckDbConnect]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function ActionFromBinary(AValue: WideString; var AActionId: LongInt): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      Exit;
    end;

    Result := DM.ActionFromBinary(AValue, AActionId);
  except
    on E: Exception do
    begin
      DM.aLog.Log('[ActionFromBinary]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function ActionAsBinary(AActionId: LongInt; var AValue: WideString): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      Exit;
    end;

    Result := DM.ActionAsBinary(AActionId, AValue);
  except
    on E: Exception do
    begin
      DM.aLog.Log('[ActionAsBinary]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function LoadActions(AActions: TndaActionList): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      Result := ND_DM_NOT_ASSIGNED;
      Exit;
    end;

    Result := DM.LoadActions(AActions);
  except
    on E: Exception do
    begin
      DM.aLog.Log('[LoadActions]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function Execute(AOrder: TadOrder; var AReOrder: TadReOrder): LongInt;
var
  AStart, AStop, ADelta                      : Int64;
  AValue                                     : string;
  AaOrder                                    : TaOrder;
  ADateTime                                  : TDateTime;
begin
  AStart := 0;
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then
    begin
      DM.aLog.Log('[Execute]->DM not Assigned', LOG_ERROR);
      Exit;
    end;

    if (DM.Status <> esIdle) then
    begin
      Result := ND_STATUS_ERROR;
      Exit;
    end;


    if DM.IsDebug then
      AStart := G_QueryPC;

    //------------------------------------------------------------------------------------
    Result := DM.Execute(AOrder, AReOrder); //--------------------------------------------
    //------------------------------------------------------------------------------------

    if DM.IsDebug then
    begin
      AStop := G_QueryPC;

      ADelta := G_GetTimeInterval(AStop - AStart);
      AReOrder.DebugMsg := AReOrder.DebugMsg + 'Время выполнения: ' +
        Format('%.2d', [ADelta div 1000]) + '.' + Format('%.3d', [ADelta mod 1000]) + ' сек.';

      ADateTime := Now;
      if cfdSaveDebugToFile in DM.OptionsDebug then
      begin
        SaveStringToFile(GetExecLogDir(DM.DllPath) + FormatDateTime(cFILE_DEBUG_FORMAT, ADateTime) + cEXTENSION_EXEC, AReOrder.DebugMsg, False);
      end;

      if cfdSaveDataToFile in DM.OptionsDebug then
      begin
        FillChar(AaOrder, SizeOf(TaOrder), 0);
        if TadOrderToTaOrder(AOrder, AaOrder) = ND_OK then
          if OrderToJSON(AaOrder, AValue) = ND_OK then
            SaveStringToFile(GetExecLogDir(DM.DllPath) + FormatDateTime(cFILE_DEBUG_FORMAT, ADateTime) + cEXTENSION_ORDER, CompressStringZ(AValue));
      end;
    end;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[Execute]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function Status: TEngineStatus;
begin
  Result := esError;
  try
    if not Assigned(DM) then Exit;
    Result := DM.Status;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[Status]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function SetOptionsDebug(AOptionsDebug: TndaDebugOptions): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then Exit;

    if (DM.Status = esInit) or (DM.Status = esRun) then
    begin
      Result := ND_STATUS_ERROR;
      Exit;
    end;

    DM.OptionsDebug := AOptionsDebug;

    if cfdSaveDebugToFile in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaSaveDebugToFile]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaSaveDebugToFile];

    if cfdSaveDataToFile in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaSaveDataToFile]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaSaveDataToFile];

    if cfdGroupActions in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaGroupActions]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaGroupActions];

    if cfdNoAcceptPeriod in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaNoAcceptPeriod]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaNoAcceptPeriod];

    DM.aLog.Log('OPTIONS DEBUG: [' +
      iif(cfdSaveDebugToFile in DM.OptionsDebug, 'SaveDebugToFile ', '') +
      iif(cfdSaveDataToFile in DM.OptionsDebug, 'SaveDataToFile ', '') +
      iif(cfdGroupActions in DM.OptionsDebug, 'GroupActions', '') +
      iif(cfdNoAcceptPeriod in DM.OptionsDebug, 'NoAcceptPeriod', '') +
      ']', LOG_INFO);

    Result := ND_OK;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[SetOptionsDebug]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function Init(AConfig: TndaConfig): LongInt;
begin
  Result := ND_FAILURE;
  try
    if not Assigned(DM) then Exit;

    if (DM.Status = esInit) or (DM.Status = esRun) then
    begin
      Result := ND_STATUS_ERROR;
      Exit;
    end;




    DM.Options := AConfig.Options;
    DM.OptionsDebug := AConfig.OptionsDebug;

    if cfgDebug in DM.Options then
      DM.IsDebug := True;

    if DM.IsDebug then
      DM.aLog.Log('OPTIONS: [DEBUG]', LOG_INFO);

    if cfdSaveDebugToFile in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaSaveDebugToFile]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaSaveDebugToFile];

    if cfdSaveDataToFile in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaSaveDataToFile]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaSaveDataToFile];

    if cfdGroupActions in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaGroupActions]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaGroupActions];

    if cfdNoAcceptPeriod in DM.OptionsDebug then
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug + [cfaNoAcceptPeriod]
    else
      DM.Engine.OptionsDebug := DM.Engine.OptionsDebug - [cfaNoAcceptPeriod];

    DM.Recipient := AConfig.Recipient;

    if AConfig.LoadActionPeriod >= 1 then
      DM.LoadActionPeriod := AConfig.LoadActionPeriod * PERIOD_UNIT;

    DM.aLog.Log('OPTIONS: [Server]->' + AConfig.DBConnection.Server, LOG_INFO);
    DM.aLog.Log('OPTIONS: [DataBase]->' + AConfig.DBConnection.DataBase, LOG_INFO);

    DM.DBConnection := AConfig.DBConnection;

    with DM.db do
    begin
      Connected := False;

      ConnectParams.UserName := Trim(DM.DBConnection.User);
      ConnectParams.Password := Trim(DM.DBConnection.Password);
      DBName := Trim(DM.DBConnection.Server) + '/' +
        IntToStr(DM.DBConnection.Port) + ':' +
        Trim(DM.DBConnection.DataBase);

      try
        Connected := True;
      except
        on E: Exception do
        begin
          DM.aLog.Log('Error: ' + e.Message, LOG_ERROR);
          Result := ND_DB_CONNECT;
          Exit;
        end;
      end;
    end;

    if cfgInit in DM.Options then
    begin
      DM.aLog.Log('OPTIONS: [cfgInit]', LOG_INFO);
      DM.RunInitFromDb();
    end;

    if cfgTimer in DM.Options then
    begin
      DM.aLog.Log('OPTIONS: [cfgTimer]', LOG_INFO);
      DM.aLog.Log('Проверка обновлений каждые: ' + IntToStr(Round(DM.LoadActionPeriod / PERIOD_UNIT)) + ' ' + 'мин.', LOG_INFO);
      DM.RunCheckInitFromDb();
    end;

    if cfgTransmit in DM.Options then
    begin
      DM.aLog.Log('OPTIONS: [cfgTransmit]', LOG_INFO);
    end;

    DM.aLog.Log('OPTIONS DEBUG: [' +
      iif(cfdSaveDebugToFile in DM.OptionsDebug, 'SaveDebugToFile ', '') +
      iif(cfdSaveDataToFile in DM.OptionsDebug, 'SaveDataToFile ', '') +
      iif(cfdGroupActions in DM.OptionsDebug, 'GroupActions', '') +
      iif(cfdNoAcceptPeriod in DM.OptionsDebug, 'NoAcceptPeriod', '') +
      ']', LOG_INFO);

    Result := ND_OK;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[Init]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

end.

