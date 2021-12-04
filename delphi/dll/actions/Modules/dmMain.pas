unit dmMain;

interface

uses
  SysUtils,
  ndLog,
  ndILog,
  actActionObject,
  actActionType,
  actActionEngine,
  actAction_h,
  ndActions_h,
  ndActions_u,
  ndaThreadType,
  Forms,
  Classes,
  OtlCommon,
  OtlTask,
  OtlTaskControl,
  OtlEventMonitor,
  OtlComm,
  DSiWin32,
  Windows,
  FIBDatabase,
  pFIBDatabase;

type
  TDM = class(TDataModule)
    db: TpFIBDatabase;
    transTransactionWrite: TpFIBTransaction;
    transTransactionRead: TpFIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    fOptions: TndaConfigOptions;
    fOptionsDebug: TndaDebugOptions;
    fDBConnection: TndaDBConnection;
    fDllPath: string;
    fIsDebug: TndThreadSafeBoolean;
    fPeriod: Integer;
    fRecipient: TndThreadSafeString;

    fEngine: TActionEngine;

    fInitFromDbTask: IOmniTaskControl;  // Начальная Инициализация
    fCheckInitFromDbTask: IOmniTaskControl; // Проверка обновлений и частичная инициализация
    fMessageDispatch: TOmniEventMonitor;

    function GetIsDBConnection(): TndaDBConnection;
    procedure SetDBConnection(AValue: TndaDBConnection);

    function GetIsDebug(): Boolean;
    procedure SetIsDebug(AValue: Boolean);

    function GetRecipient(): string;
    procedure SetRecipient(AValue: string);

    function GetStatus(): TEngineStatus;
    procedure SetStatus(AValue: TEngineStatus);

    procedure HandleTaskTerminated(const task: IOmniTaskControl);
    procedure HandleTaskMessage(const task: IOmniTaskControl; const msg: TOmniMessage);
  public
    aLog: ILog;

    procedure RunInitFromDb();
    procedure RunCheckInitFromDb();
    function Execute(AOrder: TadOrder; var AReOrder: TadReOrder): HRESULT;
    function LoadActions(AActions: TndaActionList): HRESULT;
    function ActionAsBinary(AActionId: LongInt; var AValue: WideString): HRESULT;
    function ActionFromBinary(AValue: WideString; var AActionId: LongInt): HRESULT;
    function CheckDbConnect(var AErrorMsg: WideString): HRESULT;
    function LoadGoodsList(AGoods: WideString): HRESULT;
    function LoadActionsList(AActions: WideString): HRESULT;
    property DllPath: string read fDllPath write fDllPath;
    property IsDebug: Boolean read GetIsDebug write SetIsDebug;
    property Recipient: string read GetRecipient write SetRecipient;
    property Status: TEngineStatus read GetStatus write SetStatus;
    property CheckInitFromDbTask: IOmniTaskControl read fCheckInitFromDbTask write fCheckInitFromDbTask;
    property LoadActionPeriod: LongInt read fPeriod write fPeriod;
    property Options: TndaConfigOptions read fOptions write fOptions;
    property OptionsDebug: TndaDebugOptions read fOptionsDebug write fOptionsDebug;
    property DBConnection: TndaDBConnection read GetIsDBConnection write SetDBConnection;
    property Engine: TActionEngine read fEngine write fEngine;
  end;

var
  DM                                         : TDM;

implementation

uses
  ndaUtils,
  ndaConst,
  ndaJSON,
  actActionUtils;

{$R *.dfm}

function SaveGoodsListToFile(AGoodsList: TActionGoodsList): Boolean;
var
  AValue                                     : string;
begin
  Result := False;
  try
    if Length(AGoodsList) <> 0 then
    begin
      if ActionGoodsListToJSON(AGoodsList, AValue) <> S_OK then Exit;
      SaveStringToFile(GetExecLogDir(DM.DllPath) + FormatDateTime(cFILE_DEBUG_FORMAT, Now) + cEXTENSION_GOODS, AValue);
    end;
    Result := True;
  except

  end;
end;

function SaveActionsListToFile(ARecList: TActionRecList): Boolean;
var
  AValue                                     : string;
begin
  Result := False;
  try
    if Length(ARecList) <> 0 then
    begin
      if ActionRecListToJSON(ARecList, AValue) <> S_OK then Exit;
      SaveStringToFile(GetExecLogDir(DM.DllPath) + FormatDateTime(cFILE_DEBUG_FORMAT, Now) + cEXTENSION_ACTIONS, AValue);
    end;
    Result := True;
  except

  end;
end;

procedure RunCheckInitFromDbTask(const task: IOmniTask);
var
  Result                                     : Integer;
  value                                      : TOmniValue;
  AGoodsList                                 : TActionGoodsList;
  ARecList                                   : TActionRecList;
  db                                         : TFIBDataBase;
  Engine                                     : TActionEngine;
  ALog                                       : ILOG;
  AActions                                   : TndaActionList;
  APeriod, APeriodInit                       : Integer;
  ADebug                                     : Boolean;
  ADebugSave                                 : Boolean;
  ATransmit                                  : Boolean;
  IsActionLoad                               : Boolean;
  AEngineMode                                : TaEngineMode;
begin
  Engine := nil;
  IsActionLoad := False;
  try
    value := task.Param['engine'];
    Engine := TActionEngine(value.AsObject);

    value := task.Param['db'];
    db := TpFIBDatabase(value.AsObject);

    value := task.Param['log'];
    ALog := ILOG(value.AsInterface);

    value := task.Param['period'];
    APeriodInit := value.AsInteger;

    value := task.Param['debug'];
    ADebug := value.AsBoolean;

    value := task.Param['debugsave'];
    ADebugSave := value.AsBoolean;

    value := task.Param['transmit'];
    ATransmit := value.AsBoolean;

    APeriod := APeriodInit;

    ALog.Log('Таймер проверки обновлений - старт');

    repeat
      case WaitForSingleObject(task.TerminateEvent, APeriod) of
        WAIT_OBJECT_0:
          begin
            break;
          end;
        WAIT_TIMEOUT:
          begin
            ALog.Log('Проверка обновлений');

            if (Engine.Status = esInit) or (Engine.Status = esRun) then
            begin
              APeriod := CHECK_UPDATE_BUSY;
              if ADebug then ALog.Log('[RunCheckInitFromDb]->Engine Is BUSY', LOG_DEBUG);
            end
            else
            begin
              APeriod := APeriodInit;

              db.Connected := False;
              if not db.Connected then
              try
                db.Connected := True;
              except
                on E: Exception do
                begin
                  ALog.Log('Ошибка соединения с БД: ' + E.Message, LOG_ERROR);
                end;
              end;

              if db.Connected then
              try

                // Загрузка из БД режима работы EngineMode -----------------------------------------
                if CheckEngineMode(db, AEngineMode, ALog) then
                begin
                  Engine.Status := esInit;
                  try

                    Engine.EngineMode := AEngineMode;

                    SetCheckEngineMode(db, ALog);

                    if ADebug then
                    begin
                      ALog.Log(format('Режим: %s', [aEngineModeStr[Integer(AEngineMode)]]));
                    end;
                  finally
                    Engine.Status := esIdle;
                  end;
                end;
                if CheckGoods(db, ALog) then
                begin
                  Engine.Status := esInit;
                  ALog.Log('Конфигурация товаров загружается ...');
                  try
                    SetLength(AGoodsList, 0);

                    Result := GoodsDbToRec(db, AGoodsList, ALog);
                    if Result <> ND_OK then
                    begin
                      ALog.Log('[RunCheckInitFromDb]->[GoodsDbToRec]->[Result]: ' + IntToStr(Result), LOG_ERROR);
                    end
                    else
                    begin
                      Engine.AddGoodsList(AGoodsList);
                      ALog.Log('Загружено: ' + IntToStr(Engine.Goods.Size) + ' ' + 'товаров.');

                      if ADebug and ADebugSave then
                      begin
                        SaveGoodsListToFile(AGoodsList);
                        ALog.Log('Список товаров сохранен в файл.');
                      end;

                      SetCheckGoods(db, ALog);
                      ALog.Log('Конфигурация товаров загружена');
                      ALog.Log('Конфигурация Акций загружается ...');
                      SetLength(AActions, 0);

                      Result := ActionDbToRecList(db, AActions, ARecList, ATransmit, ALog);
                      if Result <> ND_OK then
                      begin
                        case Result of
                          cERR_ACTION_NOT_FOUND:
                            begin
                              Engine.Clear;
                              ALog.Log('Список Акций пустой', LOG_WARNING);
                            end
                        else
                          begin
                            ALog.Log('[RunCheckInitFromDb]->[ActionDbToRecList]->[Result]: ' + IntToStr(Result), LOG_ERROR);
                          end;
                        end;
                      end
                      else
                      begin
                        Engine.AddList(ARecList);
                        ALog.Log('Загружено: ' + IntToStr(Engine.Actions.Size) + ' ' + 'акций.');

                        if ADebug and ADebugSave then
                        begin
                          SaveActionsListToFile(ARecList);
                          ALog.Log('Список Акций сохранен в файл.');
                        end;

                        SetCheckActions(db, Alog);

                        ALog.Log('Конфигурация Акций загружена');
                      end;
                      IsActionLoad := True;
                    end;
                  finally
                    Engine.Status := esIdle;
                  end;
                end;

                if not IsActionLoad then
                begin
                  if CheckActions(db, ALog) then
                  begin
                    Engine.Status := esInit;
                    ALog.Log('Конфигурация Акций загружается ...');
                    try
                      SetLength(AActions, 0);

                      Result := ActionDbToRecList(db, AActions, ARecList, ATransmit, ALog);
                      if Result <> ND_OK then
                      begin
                        case Result of
                          cERR_ACTION_NOT_FOUND:
                            begin
                              Engine.Clear;
                              ALog.Log('Список Акций пустой', LOG_WARNING);
                            end
                        else
                          begin
                            ALog.Log('[RunCheckInitFromDb]->[ActionDbToRecList]->[Result]: ' + IntToStr(Result), LOG_ERROR);
                          end;
                        end;
                      end
                      else
                      begin
                        Engine.AddList(ARecList);
                        ALog.Log('Загружено: ' + IntToStr(Engine.Actions.Size) + ' ' + 'акций.');

                        if ADebug and ADebugSave then
                        begin
                          SaveActionsListToFile(ARecList);
                          ALog.Log('Список Акций сохранен в файл.');
                        end;

                        SetCheckActions(db, Alog);

                        ALog.Log('Конфигурация Акций загружена');
                      end;
                    finally
                      Engine.Status := esIdle;
                    end;
                  end;
                end;

                IsActionLoad := False;
              finally
                db.Close;
              end;
            end;
          end;
      end;
    until task.Terminated;

    ALog.Log('Таймер проверки обновлений - стоп');
  except
    on E: Exception do
    begin
      //raise;
      if Assigned(Engine) then Engine.Status := esError;
      task.Comm.Send(0, 'task CheckInitFromDb Exception:' + E.Message);
    end;
  end;
end;

procedure RunInitFromDbTask(const task: IOmniTask);
var
  Result                                     : Integer;
  value                                      : TOmniValue;
  AGoodsList                                 : TActionGoodsList;
  ARecList                                   : TActionRecList;
  db                                         : TFIBDataBase;
  Engine                                     : TActionEngine;
  ALog                                       : ILOG;
  ATransmit                                  : Boolean;
  AActions                                   : TndaActionList;
  ADebug                                     : Boolean;
  ADebugSave                                 : Boolean;
  AEngineMode                                : TaEngineMode;
begin
  Engine := nil;
  try
    value := task.Param['db'];
    db := TpFIBDatabase(value.AsObject);

    value := task.Param['engine'];
    Engine := TActionEngine(value.AsObject);

    value := task.Param['log'];
    ALog := ILOG(value.AsInterface);

    value := task.Param['transmit'];
    ATransmit := value.AsBoolean;

    value := task.Param['debug'];
    ADebug := value.AsBoolean;

    value := task.Param['debugsave'];
    ADebugSave := value.AsBoolean;

    try
      Engine.Status := esInit;
      ALog.Log('Конфигурация загружается');

      with db do
      begin
        Connected := False;
        try
          Connected := True;
        except
          on E: Exception do
          begin
            Engine.Status := esIdle;
            ALog.Log('[RunInitFromDbTask]->[db.Connect]: ' + e.Message, LOG_ERROR);
            Exit;
          end;
        end;
      end;

      CheckEngineMode(db, AEngineMode, ALog);
      Engine.EngineMode := AEngineMode;

      if ADebug then
      begin
        ALog.Log(format('Режим: %s', [aEngineModeStr[Integer(AEngineMode)]]));
      end;
      SetLength(AGoodsList, 0);

      Result := GoodsDbToRec(db, AGoodsList, ALog);
      if Result <> ND_OK then
      begin
        Engine.Status := esIdle;
        ALog.Log('[RunInitFromDbTask]->[GoodsDbToRec]->[Result]: ' + IntToStr(Result), LOG_ERROR);
        Exit;
      end;
      SetLength(AActions, 0);

      Result := ActionDbToRecList(db, AActions, ARecList, ATransmit, ALog);
      if Result <> ND_OK then
      begin
        case Result of
          cERR_ACTION_NOT_FOUND:
            begin
              ALog.Log('Список Акций пустой', LOG_WARNING);
            end
        else
          begin
            Engine.Status := esIdle;
            ALog.Log('[RunInitFromDbTask]->[ActionDbToRecList]->[Result]: ' + IntToStr(Result), LOG_ERROR);
            Exit;
          end;
        end;
      end;
      try
        Engine.AddGoodsList(AGoodsList);
        ALog.Log('Загружено: ' + IntToStr(Engine.Goods.Size) + ' ' + 'товаров.');
        if ADebug and ADebugSave then
        begin
          SaveGoodsListToFile(AGoodsList);
          ALog.Log('Список товаров сохранен в файл.');
        end;
        Engine.AddList(ARecList);
        ALog.Log('Загружено: ' + IntToStr(Engine.Actions.Size) + ' ' + 'акций.');

        if ADebug and ADebugSave then
        begin
          SaveActionsListToFile(ARecList);
          ALog.Log('Список Акций сохранен в файл.');
        end;
        SetCheckGoods(db, ALog);
        SetCheckActions(db, Alog);
      except
        on E: Exception do
        begin
          Engine.Clear;
          Engine.GoodsClear;

          Engine.Status := esError;
          ALog.Log('[RunInitFromDbTask]->[Engine]: ' + e.Message, LOG_ERROR);
          Exit;
        end;
      end;

      Engine.Status := esIdle;
      ALog.Log('Конфигурация загружена');
    finally
      db.Close;
    end;

  except
    on E: Exception do
    begin
      //raise;
      if Assigned(Engine) then Engine.Status := esError;
      task.Comm.Send(0, 'task InitFomDb Exception:' + E.Message);
    end;
  end;
end;

procedure TDM.RunCheckInitFromDb();
var
  ATransmit                                  : Boolean;
  ADebugSave                                 : Boolean;
begin
  if cfgTransmit in fOptions then
    ATransmit := True
  else
    ATransmit := False;

  if cfdSaveDataToFile in fOptionsDebug then
    ADebugSave := True
  else
    ADebugSave := False;

  fCheckInitFromDbTask :=
    FMessageDispatch.Monitor(CreateTask(RunCheckInitFromDbTask, 'CheckInitFromDb'))
    .SetParameter('db', db)
    .SetParameter('engine', fEngine)
    .SetParameter('log', aLog)
    .SetParameter('period', fPeriod)
    .SetParameter('debug', fIsDebug.Value)
    .SetParameter('debugsave', ADebugSave)
    .SetParameter('transmit', ATransmit)
    .Run;
end;

procedure TDM.RunInitFromDb();
var
  ATransmit                                  : Boolean;
  ADebugSave                                 : Boolean;
begin

  if cfgTransmit in fOptions then
    ATransmit := True
  else
    ATransmit := False;

  if cfdSaveDataToFile in fOptionsDebug then
    ADebugSave := True
  else
    ADebugSave := False;

  fInitFromDbTask :=
    FMessageDispatch.Monitor(CreateTask(RunInitFromDbTask, 'InitFromDb'))
    .SetParameter('db', db)
    .SetParameter('engine', fEngine)
    .SetParameter('log', aLog)
    .SetParameter('transmit', ATransmit)
    .SetParameter('debug', fIsDebug.Value)
    .SetParameter('debugsave', ADebugSave)
    .Run;

end;

function TDM.LoadActionsList(AActions: WideString): HRESULT;
var
  AActionsList                               : TActionRecList;
  js                                         : string;
begin
  Result := ND_FAILURE;
  try
    SetLength(AActionsList, 0);
    try
      js := DeCompressStringZ(AActions);

      if JSONToActionRecList(js, AActionsList) <> ND_OK then Exit;

      Engine.Status := esInit;
      Engine.AddList(AActionsList);
      ALog.Log('Загружено: ' + IntToStr(Engine.Actions.Size) + ' ' + 'акций.');
    finally
      Engine.Status := esIdle;
    end;
    Result := ND_OK;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[LoadActionsList]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function TDM.LoadGoodsList(AGoods: WideString): HRESULT;
var
  AGoodsList                                 : TActionGoodsList;
  js                                         : string;
begin
  Result := ND_FAILURE;
  try
    SetLength(AGoodsList, 0);
    try
      js := DeCompressStringZ(AGoods);

      if JSONToActionGoodsList(js, AGoodsList) <> ND_OK then Exit;

      Engine.Status := esInit;
      Engine.AddGoodsList(AGoodsList);
      ALog.Log('Загружено: ' + IntToStr(Engine.Goods.Size) + ' ' + 'товаров.');
    finally
      Engine.Status := esIdle;
    end;
    Result := ND_OK;
  except
    on E: Exception do
    begin
      DM.aLog.Log('[LoadGoodsList]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function TDM.CheckDbConnect(var AErrorMsg: WideString): HRESULT;
var
  ADb                                        : TpFIBDatabase;

begin
  Result := ND_FAILURE;
  try
    Adb := TpFIBDatabase.Create(nil);
    try
      Adb.SQLDialect := db.SQLDialect;
      Adb.LibraryName := db.LibraryName;

      Adb.DBName := db.DBName;
      Adb.ConnectParams.UserName := db.ConnectParams.UserName;
      Adb.ConnectParams.Password := db.ConnectParams.Password;
      Adb.Timeout := db.Timeout;
      Adb.WaitForRestoreConnect := db.WaitForRestoreConnect;
      Adb.DefaultTransaction := db.DefaultTransaction;
      Adb.DefaultUpdateTransaction := db.DefaultUpdateTransaction;

      Adb.Connected := True;
    finally
      Adb.Connected := False;
      FreeAndNil(ADb);
    end;

    Result := ND_OK;
  except
    on E: Exception do
    begin
      AErrorMsg := e.Message;
      DM.aLog.Log('[CheckDbConnect]->Error: ' + e.Message, LOG_ERROR);
      Exit;
    end;
  end;
end;

function TDM.GetIsDBConnection(): TndaDBConnection;
begin
  Result := fDBConnection;
end;

procedure TDM.SetDBConnection(AValue: TndaDBConnection);
begin
  FillChar(fDBConnection, SizeOf(TndaDBConnection), 0);

  fDBConnection.DataBase := Trim(AValue.DataBase);
  fDBConnection.Password := Trim(AValue.Password);
  fDBConnection.Port := AValue.Port;
  fDBConnection.Server := Trim(AValue.Server);
  fDBConnection.User := Trim(AValue.User);
end;

function TDM.GetStatus(): TEngineStatus;
begin
  if Assigned(fEngine) then
    Result := fEngine.Status
  else Result := esError;
end;

function TDM.LoadActions(AActions: TndaActionList): HRESULT;
var
  ARecList                                   : TActionRecList;
  ATransmit                                  : Boolean;
begin
  Result := ND_FAILURE;
  try
    try
      if not Assigned(fEngine) then Exit;

      fEngine.Status := esInit;
      ALog.Log('Акции загружаются');

      if cfgTransmit in fOptions then
        ATransmit := True
      else
        ATransmit := False;

      if not db.Connected then db.Connected := True;
      Result := ActionDbToRecList(db, AActions, ARecList, ATransmit, ALog);

      if Result <> ND_OK then
      begin
        case Result of
          cERR_ACTION_NOT_FOUND:
            begin
              ALog.Log('Список Акций пустой', LOG_WARNING);
            end
        else
          begin
            ALog.Log('[LoadActions]->[ActionDbToRecList]->[Result]: ' + IntToStr(Result), LOG_ERROR);
            Exit;
          end;
        end;
      end;
      fEngine.AddList(ARecList);
      ALog.Log('Загружено: ' + IntToStr(fEngine.Actions.Size) + ' ' + 'акций.');

      fEngine.Status := esIdle;
      ALog.Log('Акции загружены');

      Result := ND_OK;
    finally
      db.Close;
    end;
  except
    on E: Exception do
    begin
      aLog.Log(('[LoadActions]-> Error: ' + e.Message), LOG_ERROR);
    end;
  end;
end;

function TDM.Execute(AOrder: TadOrder; var AReOrder: TadReOrder): HRESULT;
var
  Order                                      : TaOrder;
  ReOrder                                    : TaReOrder;
  Return                                     : Integer;

begin
  Result := ND_FAILURE;
  try
    try
      if not Assigned(fEngine) then Exit;

      FillChar(Order, SizeOf(TaOrder), 0);
      FillChar(ReOrder, SizeOf(TaReOrder), 0);

      if TadOrderToTaOrder(AOrder, Order) <> ND_OK then
      begin
        Result := ND_CONVERT_ERROR;
        aLog.Log(('[Engine.TadOrderToTaOrder]-> Result: ' + IntToStr(Result)), LOG_ERROR);
        Exit;
      end;

      if not CheckObjectsFormatList(Order.Objects) then
      begin
        Result := ND_BAD_OBJECT_FORMAT;
        aLog.Log(('[Engine.CheckObjectsFormat]-> Result: False'), LOG_ERROR);
        Exit;
      end;

      //==================================================================================
      Return := fEngine.Execute(Order, ReOrder);
      //==================================================================================

      if Return <> ND_OK then
      begin
        aLog.Log(('[Engine.Execute]-> Result: ' + IntToStr(Return)), LOG_ERROR);
        Exit;
      end;

      if TaReOrderToTadReOrder(ReOrder, AReOrder) <> ND_OK then
      begin
        Result := ND_CONVERT_ERROR;
        aLog.Log(('[Engine.TaReOrderToTadReOrder]-> Result: ' + IntToStr(Result)), LOG_ERROR);
        Exit;
      end;

      Result := ND_OK;
    finally

    end;
  except
    on E: Exception do
    begin
      aLog.Log(('[Execute]-> Error: ' + e.Message), LOG_ERROR);
    end;
  end;
end;

procedure TDM.SetStatus(AValue: TEngineStatus);
begin
  if Assigned(fEngine) then
    fEngine.Status := AValue;
end;

procedure TDM.HandleTaskTerminated(const task: IOmniTaskControl);
begin
  aLog.Log(Format('Поток [%s] завершен', [task.Name]));
end;

procedure TDM.HandleTaskMessage(const task: IOmniTaskControl; const msg:
  TOmniMessage);
begin
  aLog.Log(Format('[%d/%s] %d|%s', [task.UniqueID, task.Name, msg.MsgID, msg.MsgData.AsString]));
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  
  if Assigned(fCheckInitFromDbTask) then
  begin
    fCheckInitFromDbTask.Terminate(2000);
    FreeAndNil(fCheckInitFromDbTask);
  end;

  if Assigned(fInitFromDbTask) then
  begin
    fInitFromDbTask.Terminate(1000);
    FreeAndNil(fInitFromDbTask);
  end;

  FreeAndNil(fIsDebug);
  FreeAndNil(fRecipient);
end;

function TDM.GetRecipient(): string;
begin
  Result := fRecipient.Value;
end;

procedure TDM.SetRecipient(AValue: string);
begin
  if fRecipient.Value <> AValue then
    fRecipient.Value := AValue;
end;

function TDM.GetIsDebug(): Boolean;
begin
  Result := fIsDebug.Value;
end;

procedure TDM.SetIsDebug(AValue: Boolean);
begin
  if fIsDebug.Value <> AValue then
  begin
    fIsDebug.Value := AValue;
    if Assigned(fEngine) then fEngine.IsDebug := AValue;
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FillChar(fDBConnection, SizeOf(TndaDBConnection), 0);
  fOptions := [];
  fOptionsDebug := [];
  fPeriod := PERIOD_CHECK_UPDATE;
  fIsDebug := TndThreadSafeBoolean.Create;
  fRecipient := TndThreadSafeString.Create;

  fMessageDispatch := TOmniEventMonitor.Create(Self);
  fMessageDispatch.OnTaskMessage := HandleTaskMessage;
  fMessageDispatch.OnTaskTerminated := HandleTaskTerminated;

  DllPath := IncludeTrailingPathDelimiter(ExtractFileDir(GetDllName()));
  aLog := TNdLog.Create(DllPath, 'Acton');

  fEngine := TActionEngine.Create(aLog);

  db.SQLDialect := 3;
  db.LibraryName := DllPath + cFIREBIRD_LIB;
end;

function TDM.ActionFromBinary(AValue: WideString; var AActionId: LongInt): HRESULT;
var
  ActionRec                                  : TActionRec;
  js                                         : string;
  Value                                      : string;
begin
  Result := ND_FAILURE;
  try
    try
      if not db.Connected then db.Connected := True;

      ZeroMemory(@ActionRec, SizeOf(TActionRec));

      Value := AValue;
      js := DeCompressStringZ(Value);

      if JSONToActionRec(js, ActionRec) <> ND_OK then Exit;

      if ActionRecToDb(db, ActionRec, AActionId, aLog) <> ND_OK then Exit;

      Result := ND_OK;
    finally
      db.Connected := False;
    end;
  except
    on E: Exception do
    begin
      aLog.Log(('[DM.ActionFromBinary]-> Error: ' + e.Message), LOG_ERROR);
    end;
  end;
end;

function TDM.ActionAsBinary(AActionId: LongInt; var AValue: WideString): HRESULT;
var
  ActionRec                                  : TActionRec;
  js                                         : string;
begin
  Result := ND_FAILURE;
  try
    try
      if not db.Connected then db.Connected := True;
      try
        ZeroMemory(@ActionRec, SizeOf(TActionRec));
        if ActionDbToRec(db, AActionId, ActionRec, ALog) <> ND_OK then Exit;

        if ActionRecToJSON(ActionRec, js) <> ND_OK then Exit;

        AValue := CompressStringZ(js);

        Result := ND_OK;
      finally
      end;
    finally
      db.Connected := False;
    end;
  except
    on E: Exception do
    begin
      aLog.Log(('[DM.ActionAsBinary]-> Error: ' + e.Message), LOG_ERROR);
    end;
  end;

end;

end.

