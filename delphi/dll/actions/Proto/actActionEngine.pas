unit actActionEngine;

interface

uses
  Classes,
  SysUtils,
  pFIBDataSet,
  pFIBProps,
  FIBDatabase,
  pFIBQuery,
  Variants,
  DB,
  actActionUtils,
  actAction_h,
  ndActions_h,
  ndLog,
  ndILog,
  actActionType;

const
  cOK                                        = S_OK;
  cERR_GLOBAL                                = S_FALSE;
  cERR_ACTION_NOT_FOUND                      = 1001;

const
  cG_GOODSDIR                                = 1;
  cG_GR_TREE                                 = 2;
  cG_GOODS_GR_TREE                           = 3;
  cACT_ACTION                                = 4;
  cENGINE_MODE                               = 5;

function ActionDbToRecList(const AConnect: TFIBDataBase; AActions: TndaActionList; var AActionRecList: TActionRecList; AIsTransmit: Boolean; AaLog: ILOG): HRESULT;
function ActionDbToRec(const AConnect: TFIBDataBase; const AActionId: Integer; var AActionRec: TActionRec; AaLog: ILOG): HRESULT;
function ActionDbBlobToRec(const AConnect: TFIBDataBase; const AActionId: Integer; var AActionRec: TActionRec; AaLog: ILOG): HRESULT;
function ActionRecToDb(const AConnect: TFIBDataBase; AActionRec: TActionRec; var AActionId: LongInt; AaLog: ILOG): HRESULT;
function GoodsDbToRec(const AConnect: TFIBDataBase; var AGoodsList: TActionGoodsList; AaLog: ILOG): HRESULT;
function GetUnitPath(const ATbl: TpFIBDataSet; AConditionType: TConditionType; ACode: string): string;
function GetUnit(const ATbl: TpFIBDataSet; AConditionType: TConditionType; ACode: string; var AUnit: TUnit): HRESULT;
function CheckGoods(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
function SetCheckGoods(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
function CheckActions(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
function SetCheckActions(ADb: TFIBDataBase; AaLog: ILOG): Boolean;

function CheckEngineMode(ADb: TFIBDataBase; out AValue: TaEngineMode; AaLog: ILOG): Boolean;
function SetCheckEngineMode(ADb: TFIBDataBase; AaLog: ILOG): Boolean;

implementation

uses
  ndaUtils,
  ndaJSON;

function ActionRecToDb(const AConnect: TFIBDataBase; AActionRec: TActionRec; var AActionId: LongInt; AaLog: ILOG): HRESULT;
var
  tbl_set                                    : TpFIBQuery;
  tbl_get                                    : TpFIBDataSet;
  id_action                                  : Integer;
  i                                          : Integer;
  AUnit                                      : TUnit;
begin
  Result := cERR_GLOBAL;
  if not Assigned(AConnect) and (not AConnect.Connected) then
  begin
    Result := ND_DB_CONNECT;
    Exit;
  end;
  try
    //id_action := 0;

    tbl_set := TpFIBQuery.Create(nil);
    tbl_get := TpFIBDataSet.Create(nil);
    try
      tbl_set.Database := AConnect;
      tbl_set.Transaction := AConnect.DefaultUpdateTransaction;
      tbl_set.Options := [qoStartTransaction, qoAutoCommit];

      tbl_get.Options := tbl_get.Options + [poFetchAll];
      tbl_get.Database := AConnect;
      tbl_get.Transaction := AConnect.DefaultTransaction;
      tbl_get.UpdateTransaction := AConnect.DefaultUpdateTransaction;

      // Формирование заголовка Акции
      with tbl_set.SQL do
      begin
        Clear;
        Add('insert into ACT_ACTION (ID_ACTION, NUM_ACTION, IS_ACTIVE, IS_TRANSMIT, N_ACTION, D_ACTIVE_BEGIN, D_ACTIVE_END, REMARK,');
        Add('SCH_1_FROM, SCH_1_TO, SCH_2_FROM, SCH_2_TO, SCH_3_FROM, SCH_3_TO, SCH_4_FROM, SCH_4_TO,');
        Add('SCH_5_FROM, SCH_5_TO, SCH_6_FROM, SCH_6_TO, SCH_7_FROM, SCH_7_TO)');
        Add('values (:ID_ACTION, :NUM_ACTION, :IS_ACTIVE, :IS_TRANSMIT, :N_ACTION, :D_ACTIVE_BEGIN, :D_ACTIVE_END, :REMARK,');
        Add(':SCH_1_FROM, :SCH_1_TO, :SCH_2_FROM, :SCH_2_TO, :SCH_3_FROM, :SCH_3_TO, :SCH_4_FROM, :SCH_4_TO, :SCH_5_FROM,');
        Add(':SCH_5_TO, :SCH_6_FROM, :SCH_6_TO, :SCH_7_FROM, :SCH_7_TO)');
      end;

      with tbl_set, AActionRec do
      begin

        // Получение id Акции ------------------------------------------------------------
        tbl_get.Close;
        with tbl_get.SQLs.SelectSQL do
        begin
          Clear;
          Add('SELECT gen_id(GEN_ACT_ACTION_ID,1) AS ID FROM RDB$DATABASE');
        end;
        tbl_get.Open;

        if not tbl_get.IsEmpty then
        begin
          id_action := tbl_get.FieldByName('ID').AsInteger;
        end
        else
        begin
          AaLog.Log(Format('В БД не найден генератор: [%s] .', ['GEN_ACT_ACTION_ID']), LOG_ERROR);
          Exit;
        end;

        tbl_get.Close;
        with tbl_get.SQLs.SelectSQL do
        begin
          Clear;
          Add('SELECT ID_ACTION FROM ACT_ACTION WHERE NUM_ACTION = :NUM_ACTION');
        end;
        tbl_get.ParamByName('NUM_ACTION').AsString := AActionRec.Code;
        tbl_get.Open;

        if not tbl_get.IsEmpty then
        begin
          ParamByName('NUM_ACTION').AsString := StrPadLeft(IntToStr(id_action), 6, '0');
          ParamByName('N_ACTION').AsString := '(Copy)' + ' ' + NameAction;
        end
        else
        begin
          ParamByName('NUM_ACTION').AsString := Code;
          ParamByName('N_ACTION').AsString := NameAction;
        end;

        ParamByName('ID_ACTION').AsInteger := id_action;
        ParamByName('IS_ACTIVE').AsInteger := 0;
        ParamByName('IS_TRANSMIT').AsInteger := 0;
        ParamByName('D_ACTIVE_BEGIN').AsDate := DateBegin;
        ParamByName('D_ACTIVE_END').AsDate := DateEnd;
        ParamByName('REMARK').AsString := Remark;
        ParamByName('SCH_1_FROM').AsTime := Schedule.day_1.SchFrom;
        ParamByName('SCH_1_TO').AsTime := Schedule.day_1.SchTo;

        ParamByName('SCH_2_FROM').AsTime := Schedule.day_2.SchFrom;
        ParamByName('SCH_2_TO').AsTime := Schedule.day_2.SchTo;

        ParamByName('SCH_3_FROM').AsTime := Schedule.day_3.SchFrom;
        ParamByName('SCH_3_TO').AsTime := Schedule.day_3.SchTo;

        ParamByName('SCH_4_FROM').AsTime := Schedule.day_4.SchFrom;
        ParamByName('SCH_4_TO').AsTime := Schedule.day_4.SchTo;

        ParamByName('SCH_5_FROM').AsTime := Schedule.day_5.SchFrom;
        ParamByName('SCH_5_TO').AsTime := Schedule.day_5.SchTo;

        ParamByName('SCH_6_FROM').AsTime := Schedule.day_6.SchFrom;
        ParamByName('SCH_6_TO').AsTime := Schedule.day_6.SchTo;

        ParamByName('SCH_7_FROM').AsTime := Schedule.day_7.SchFrom;
        ParamByName('SCH_7_TO').AsTime := Schedule.day_7.SchTo;
      end;

      tbl_set.ExecQuery;

      tbl_get.Close;
      // Условия
      with AActionRec do
        if Length(Conditions) <> 0 then
        begin
          with tbl_set.SQL do
          begin
            Clear;
            Add('insert into ACT_ACTION_LINES (ID_ACTION, ID_EFFECT_TYPE, ORDER_LINE, ID_CONDITION_TYPE, CODE_UNIT,');
            Add('ID_UNIT, N_UNIT, PATH_UNIT, KN_EDIZM_UNIT, TRIG_AMOUNT_FROM, ID_COND_TRIG_AMOUNT_FROM,');
            Add('TRIG_AMOUNT_TO, ID_COND_TRIG_AMOUNT_TO, TRIG_SUM_FROM, ID_COND_TRIG_SUM_FROM, TRIG_SUM_TO,');
            Add('ID_COND_TRIG_SUM_TO, HINT_AMOUNT_FROM, ID_COND_HINT_AMOUNT_FROM, HINT_AMOUNT_TO,');
            Add('ID_COND_HINT_AMOUNT_TO, HINT_SUM_FROM, ID_COND_HINT_SUM_FROM, HINT_SUM_TO, ID_COND_HINT_SUM_TO) ');
            Add('values (:ID_ACTION, :ID_EFFECT_TYPE, :ORDER_LINE, :ID_CONDITION_TYPE, :CODE_UNIT, :ID_UNIT, :N_UNIT,');
            Add(':PATH_UNIT, :KN_EDIZM_UNIT, :TRIG_AMOUNT_FROM, :ID_COND_TRIG_AMOUNT_FROM, :TRIG_AMOUNT_TO,');
            Add(':ID_COND_TRIG_AMOUNT_TO, :TRIG_SUM_FROM, :ID_COND_TRIG_SUM_FROM, :TRIG_SUM_TO, :ID_COND_TRIG_SUM_TO,');
            Add(':HINT_AMOUNT_FROM, :ID_COND_HINT_AMOUNT_FROM, :HINT_AMOUNT_TO, :ID_COND_HINT_AMOUNT_TO, :HINT_SUM_FROM,');
            Add(':ID_COND_HINT_SUM_FROM, :HINT_SUM_TO, :ID_COND_HINT_SUM_TO)');
          end;

          for i := Low(Conditions) to High(Conditions) do
            with tbl_set, AActionRec.Conditions[i] do
            begin
              ParamByName('ID_ACTION').AsInteger := id_action;
              ParamByName('ID_EFFECT_TYPE').AsInteger := Integer(EffectType);
              ParamByName('ORDER_LINE').AsInteger := 0;
              ParamByName('ID_CONDITION_TYPE').AsInteger := Integer(ConditionType);

              ParamByName('CODE_UNIT').AsString := UnitCode;

              // Данные по объекту
              if GetUnit(tbl_get, ConditionType, UnitCode, AUnit) = ND_OK then
              begin
                ParamByName('ID_UNIT').AsInteger := AUnit.Id;
                ParamByName('N_UNIT').AsString := AUnit.Name;
                ParamByName('PATH_UNIT').AsString := AUnit.Path;
                ParamByName('KN_EDIZM_UNIT').AsString := AUnit.Edizm;
              end
              else
              begin
                ParamByName('ID_UNIT').AsInteger := 0;
                ParamByName('N_UNIT').AsString := UnitCode;
                ParamByName('PATH_UNIT').AsString := '';
                ParamByName('KN_EDIZM_UNIT').AsString := '';
              end;

              with ConditionAmount do
              begin
                with Cfrom do
                begin
                  ParamByName('TRIG_AMOUNT_FROM').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger := Integer(Condition);
                end;
                with Cto do
                begin
                  ParamByName('TRIG_AMOUNT_TO').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_AMOUNT_TO').AsInteger := Integer(Condition);
                end;
              end;
              with ConditionSum do
              begin
                with Cfrom do
                begin
                  ParamByName('TRIG_SUM_FROM').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_SUM_FROM').AsInteger := Integer(Condition);
                end;
                with Cto do
                begin
                  ParamByName('TRIG_SUM_TO').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_SUM_TO').AsInteger := Integer(Condition);
                end;
              end;
              with HintAmount do
              begin
                with Cfrom do
                begin
                  ParamByName('HINT_AMOUNT_FROM').AsDouble := Value;
                  ParamByName('ID_COND_HINT_AMOUNT_FROM').AsInteger := Integer(Condition);
                end;
                with Cto do
                begin
                  ParamByName('HINT_AMOUNT_TO').AsDouble := Value;
                  ParamByName('ID_COND_HINT_AMOUNT_TO').AsInteger := Integer(Condition);
                end;
              end;
              with HintSum do
              begin
                with Cfrom do
                begin
                  ParamByName('HINT_SUM_FROM').AsDouble := Value;
                  ParamByName('ID_COND_HINT_SUM_FROM').AsInteger := Integer(Condition);
                end;
                with Cto do
                begin
                  ParamByName('HINT_SUM_TO').AsDouble := Value;
                  ParamByName('ID_COND_HINT_SUM_TO').AsInteger := Integer(Condition);
                end;
              end;

              ExecQuery;
            end;
        end;

      tbl_get.Close;
      with AActionRec do
        if Length(Operations) <> 0 then
        begin
          with tbl_set.SQL do
          begin
            Clear;
            Add('insert into ACT_ACTION_LINES_ACT (ID_ACTION, ID_EFFECT_TYPE, ID_CONDITION_TYPE, CODE_UNIT, ID_UNIT,');
            Add('N_UNIT, PATH_UNIT, KN_EDIZM_UNIT, TRIG_AMOUNT_FROM, ID_COND_TRIG_AMOUNT_FROM,');
            Add('TRIG_AMOUNT_TO, ID_COND_TRIG_AMOUNT_TO, TRIG_PRICE, ID_OPERATION_TYPE, ORDER_LINE) ');
            Add('values (:ID_ACTION, :ID_EFFECT_TYPE, :ID_CONDITION_TYPE, :CODE_UNIT, :ID_UNIT, :N_UNIT,');
            Add(':PATH_UNIT, :KN_EDIZM_UNIT, :TRIG_AMOUNT_FROM, :ID_COND_TRIG_AMOUNT_FROM, :TRIG_AMOUNT_TO,');
            Add(':ID_COND_TRIG_AMOUNT_TO, :TRIG_PRICE, :ID_OPERATION_TYPE, :ORDER_LINE)');
          end;

          for i := Low(Operations) to High(Operations) do
            with tbl_set, AActionRec.Operations[i] do
            begin
              ParamByName('ID_ACTION').AsInteger := id_action;
              ParamByName('ID_EFFECT_TYPE').AsInteger := Integer(EffectType);
              ParamByName('ORDER_LINE').AsInteger := 0;
              ParamByName('ID_CONDITION_TYPE').AsInteger := Integer(ConditionType);

              ParamByName('CODE_UNIT').AsString := UnitCode;

              // Данные по объекту
              if GetUnit(tbl_get, ConditionType, UnitCode, AUnit) = ND_OK then
              begin
                ParamByName('ID_UNIT').AsInteger := AUnit.Id;
                ParamByName('N_UNIT').AsString := AUnit.Name;
                ParamByName('PATH_UNIT').AsString := AUnit.Path;
                ParamByName('KN_EDIZM_UNIT').AsString := AUnit.Edizm;
              end
              else
              begin
                ParamByName('ID_UNIT').AsInteger := 0;
                ParamByName('N_UNIT').AsString := UnitCode;
                ParamByName('PATH_UNIT').AsString := '';
                ParamByName('KN_EDIZM_UNIT').AsString := '';
              end;

              with Amount do
              begin
                with Cfrom do
                begin
                  ParamByName('TRIG_AMOUNT_FROM').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger := Integer(Condition);
                end;
                with Cto do
                begin
                  ParamByName('TRIG_AMOUNT_TO').AsDouble := Value;
                  ParamByName('ID_COND_TRIG_AMOUNT_TO').AsInteger := Integer(Condition);
                end;
              end;

              with Price do
              begin
                ParamByName('TRIG_PRICE').AsDouble := Value;
                ParamByName('ID_OPERATION_TYPE').AsInteger := Integer(Condition);
              end;

              ExecQuery;
            end;
        end;

      tbl_get.Close;
      with AActionRec do
        if Length(Objects) <> 0 then
        begin
          with tbl_set.SQL do
          begin
            Clear;
            Add('insert into ACT_ACTION_OBJECTS (ID_ACTION, ID_OBJECTS, OBJECT_VALUE) ');
            Add('select CAST(:ID_ACTION AS INTEGER), AO.ID_OBJECTS, CAST(:OBJECT_VALUE AS VARCHAR(50)) ');
            Add('from ACT_OBJECTS AO ');
            Add('where AO.ID_OBJECTS = :ID_OBJECTS');
          end;

          for i := Low(Objects) to High(Objects) do
            with tbl_set, AActionRec.Objects[i] do
            begin
              ParamByName('ID_ACTION').AsInteger := id_action;
              ParamByName('ID_OBJECTS').AsInteger := Integer(ObjectType);
              ParamByName('OBJECT_VALUE').AsString := Value;

              ExecQuery;
            end;
        end;

      tbl_get.Close;
      with AActionRec do
        if Length(Recipients) <> 0 then
        begin
          with tbl_set.SQL do
          begin
            Clear;
            Add('insert into ACT_ACTION_DEPARTMENT (ID_ACTION, ID_DEPARTMENT) ');
            Add('select CAST(:ID_ACTION AS INTEGER), R.ID_DEPARTMENTS');
            Add('from DEPARTMENTS R where R.CODE = :CODE');
          end;

          for i := Low(Recipients) to High(Recipients) do
            with tbl_set do
            begin
              ParamByName('ID_ACTION').AsInteger := id_action;
              ParamByName('CODE').AsString := Trim(AActionRec.Recipients[i]);

              ExecQuery;
            end;
        end;

      AActionId := id_action;
      Result := ND_OK;
    finally
      FreeAndNil(tbl_set);

      with tbl_get do if Active then Close;
      FreeAndNil(tbl_get);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[ActionRecToDb]: ' + E.Message, LOG_ERROR);
    end;
  end;

end;


function SetCheckEngineMode(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBQuery;
begin
  Result := False;

  try
    tbl := TpFIBQuery.Create(nil);
    try
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultUpdateTransaction;
      tbl.Options := [qoStartTransaction, qoAutoCommit];

      with tbl.SQL do
      begin
        Add('UPDATE G_TABLE_UPDATE G ');
        Add('SET G.PR_UPDATE = 0 ');
        Add('WHERE G.ID_TABLE_UPDATE = :UPDATE ');
        Add('AND G.PR_UPDATE = 1');
      end;
      tbl.ParamByName('UPDATE').AsInteger := cENGINE_MODE;

      tbl.ExecQuery;

      Result := True;
    finally
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[SetCheckEngineMode]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;



function CheckEngineMode(ADb: TFIBDataBase; out AValue: TaEngineMode; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBDataSet;
  eValue                                     : Integer;
begin
  Result := False;
  AValue := emExclude;
  try

    if not ADb.Connected then
    try
      ADb.Connected := True;
    except
      on E: Exception do
      begin
        AaLog.Log('Ошибка соединения с БД: ' + E.Message, LOG_ERROR);
        Exit;
      end;
    end;

    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultTransaction;
      tbl.UpdateTransaction := ADb.DefaultUpdateTransaction;

      with tbl.SQLs.SelectSQL do
      begin
        Add('SELECT G.PR_UPDATE, G.VALUE_UPDATE ');
        Add('FROM G_TABLE_UPDATE G ');
        Add('WHERE G.ID_TABLE_UPDATE = :UPDATE ');
      end;

      tbl.ParamByName('UPDATE').AsInteger := cENGINE_MODE;

      tbl.Open;

      if not tbl.IsEmpty then
      begin
        Result := tbl.FieldByName('PR_UPDATE').AsBoolean;
        if Result then
          if not tbl.FieldByName('VALUE_UPDATE').IsNull then
            if TryStrToInt(tbl.FieldByName('VALUE_UPDATE').AsString, eValue) then
            begin
              AValue := TaEngineMode(eValue);
              AaLog.Log(format('Режим изменен на: %s',[aEngineModeStr[Integer(AValue)]]));
            end;
      end;

    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[CheckEngineMode]: ' + E.Message, LOG_ERROR);
    end;
  end;

end;

function CheckGoods(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBDataSet;
begin
  Result := False;
  try

    if not ADb.Connected then
    try
      ADb.Connected := True;
    except
      on E: Exception do
      begin
        AaLog.Log('Ошибка соединения с БД: ' + E.Message, LOG_ERROR);
        Exit;
      end;
    end;

    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultTransaction;
      tbl.UpdateTransaction := ADb.DefaultUpdateTransaction;

      with tbl.SQLs.SelectSQL do
      begin
        Add('SELECT G.ID_TABLE_UPDATE ');
        Add('FROM G_TABLE_UPDATE G ');
        Add('WHERE G.ID_TABLE_UPDATE IN (:UPDATE1, :UPDATE2, :UPDATE3) ');
        Add('AND G.PR_UPDATE = 1');
      end;

      tbl.ParamByName('UPDATE1').AsInteger := cG_GOODSDIR;
      tbl.ParamByName('UPDATE2').AsInteger := cG_GR_TREE;
      tbl.ParamByName('UPDATE3').AsInteger := cG_GOODS_GR_TREE;

      tbl.Open;

      Result := not tbl.IsEmpty;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[RunCheckInitFromDbTask]->[CheckGoods]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function SetCheckGoods(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBQuery;
begin
  Result := False;

  try
    tbl := TpFIBQuery.Create(nil);
    try
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultUpdateTransaction;
      tbl.Options := [qoStartTransaction, qoAutoCommit];

      with tbl.SQL do
      begin
        Add('UPDATE G_TABLE_UPDATE G ');
        Add('SET G.PR_UPDATE = 0 ');
        Add('WHERE G.ID_TABLE_UPDATE IN (:UPDATE1, :UPDATE2, :UPDATE3) ');
        Add('AND G.PR_UPDATE = 1');
      end;
      tbl.ParamByName('UPDATE1').AsInteger := cG_GOODSDIR;
      tbl.ParamByName('UPDATE2').AsInteger := cG_GR_TREE;
      tbl.ParamByName('UPDATE3').AsInteger := cG_GOODS_GR_TREE;

      tbl.ExecQuery;

      Result := True;
    finally
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[RunCheckInitFromDbTask]->[SetCheckGoods]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function CheckActions(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBDataSet;
begin
  Result := False;
  try
    if not ADb.Connected then
    try
      ADb.Connected := True;
    except
      on E: Exception do
      begin
        AaLog.Log('Ошибка соединения с БД: ' + E.Message, LOG_ERROR);
        Exit;
      end;
    end;

    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultTransaction;
      tbl.UpdateTransaction := ADb.DefaultUpdateTransaction;

      with tbl.SQLs.SelectSQL do
      begin
        Add('SELECT G.ID_TABLE_UPDATE ');
        Add('FROM G_TABLE_UPDATE G ');
        Add('WHERE G.ID_TABLE_UPDATE IN (:UPDATE1) ');
        Add('AND G.PR_UPDATE = 1');
      end;

      tbl.ParamByName('UPDATE1').AsInteger := cACT_ACTION;

      tbl.Open;

      Result := not tbl.IsEmpty;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[RunCheckInitFromDbTask]->[CheckActions]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function SetCheckActions(ADb: TFIBDataBase; AaLog: ILOG): Boolean;
var
  tbl                                        : TpFIBQuery;
begin
  Result := False;

  try
    tbl := TpFIBQuery.Create(nil);
    try
      tbl.Database := ADb;
      tbl.Transaction := ADb.DefaultUpdateTransaction;
      tbl.Options := [qoStartTransaction, qoAutoCommit];

      with tbl.SQL do
      begin
        Add('UPDATE G_TABLE_UPDATE G ');
        Add('SET G.PR_UPDATE = 0 ');
        Add('WHERE G.ID_TABLE_UPDATE IN (:UPDATE1) ');
        Add('AND G.PR_UPDATE = 1');
      end;
      tbl.ParamByName('UPDATE1').AsInteger := cACT_ACTION;

      tbl.ExecQuery;

      Result := True;
    finally
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[RunCheckInitFromDbTask]->[SetCheckActions]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function GoodsDbToRec(const AConnect: TFIBDataBase; var AGoodsList: TActionGoodsList; AaLog: ILOG): HRESULT;
var
  tbl                                        : TpFIBDataSet;
  i                                          : Integer;
begin
  Result := S_FALSE;

  if not Assigned(AConnect) and (not AConnect.Connected) then Exit;
  SetLength(AGoodsList, 0);
  //
  try
    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := AConnect;
      tbl.Transaction := AConnect.DefaultTransaction;
      tbl.UpdateTransaction := AConnect.DefaultUpdateTransaction;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT G.CODE, GRT.CODE_PATH || ''#'' || G.CODE AS PATH ');
        Add('FROM G_GOODS_GR_TREE GT ');
        Add('INNER JOIN G_GOODSDIR G ON G.ID_GOODSDIR = GT.ID_GOODSDIR ');
        Add('INNER JOIN G_GR_TREE GRT ON GRT.ID_GR_TREE = GT.ID_GR_TREE ');
        Add('ORDER BY G.CODE');
      end;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        SetLength(AGoodsList, tbl.RecordCount);
        for i := 0 to Length(AGoodsList) - 1 do
        begin
          AGoodsList[i].Code := tbl.FieldByName('CODE').AsString;
          AGoodsList[i].Path := tbl.FieldByName('PATH').AsString;

          tbl.Next;
        end;
      end;

      Result := S_OK;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[GoodsDbToRec]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function ActionDbToRecList(const AConnect: TFIBDataBase; AActions: TndaActionList; var AActionRecList: TActionRecList; AIsTransmit: Boolean; AaLog: ILOG): HRESULT;
var
  tbl                                        : TpFIBDataSet;
  i                                          : Integer;
begin
  Result := cERR_GLOBAL;
  if not Assigned(AConnect) and (not AConnect.Connected) then
  begin
    Result := ND_DB_CONNECT;
    Exit;
  end;

  SetLength(AActionRecList, 0);
  //
  try
    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := AConnect;
      tbl.Transaction := AConnect.DefaultTransaction;
      tbl.UpdateTransaction := AConnect.DefaultUpdateTransaction;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT A.ID_ACTION, A.NUM_ACTION AS CODE ');
        Add('FROM ACT_ACTION A WHERE A.IS_ACTIVE = 1');
        if AIsTransmit then Add(' AND A.IS_TRANSMIT = 1');
      end;
      tbl.Open;

      if tbl.IsEmpty then
      begin
        Result := cERR_ACTION_NOT_FOUND;
        Exit;
      end
      else
      begin

        if Length(AActions) <> 0 then
        begin
          for i := Low(AActions) to High(AActions) do
          begin
            tbl.First;
            while not tbl.Eof do
            begin
              if Trim(AnsiString(AActions[i].Code)) = Trim(tbl.FieldByName('CODE').AsString) then
              begin
                SetLength(AActionRecList, Length(AActionRecList) + 1);
                FillChar(AActionRecList[High(AActionRecList)], SizeOf(TActionRec), 0);

                if ActionDbBlobToRec(AConnect, tbl.FieldByName('ID_ACTION').AsInteger, AActionRecList[High(AActionRecList)], AaLog) <> cOK then Exit;
              end;
              tbl.Next;
            end;
          end;
        end
        else
        begin
          tbl.First;
          SetLength(AActionRecList, tbl.RecordCount);

          for i := Low(AActionRecList) to High(AActionRecList) do
          begin
            FillChar(AActionRecList[i], SizeOf(TActionRec), 0);

            if ActionDbBlobToRec(AConnect, tbl.FieldByName('ID_ACTION').AsInteger, AActionRecList[i], AaLog) <> cOK then Exit;

            tbl.Next;
          end;
        end;

      end;
      tbl.Close;

      Result := S_OK;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[ActionDbToRecList]: ' + E.Message, LOG_ERROR);
    end;
  end;

end;

function GetUnit(const ATbl: TpFIBDataSet; AConditionType: TConditionType; ACode: string; var AUnit: TUnit): HRESULT;
begin
  try
    Result := ND_FAILURE;
    FillChar(AUnit, SizeOf(TUnit), 0);

    ATbl.SQLs.SelectSQL.Clear;

    with ATbl.SQLs.SelectSQL do
      case AConditionType of
        ctGOODS:
          begin
            Add('SELECT G.ID_GOODSDIR AS ID, G.KN_GOODS AS NAME, E.KN_EDIZM AS EDIZM, GRT.CODE_PATH || ' + #39 + '#' + #39 + ' || G.CODE AS PATH ');
            Add('FROM G_GOODSDIR G ');
            Add('INNER JOIN EDIZM E ON E.ID_EDIZM = G.ID_EDIZM ');
            Add('INNER JOIN G_GOODS_GR_TREE GT ON GT.ID_GOODSDIR = G.ID_GOODSDIR ');
            Add('INNER JOIN G_GR_TREE GRT ON GRT.ID_GR_TREE = GT.ID_GR_TREE ');
            Add('WHERE G.CODE = :CODE');

            ATbl.ParamByName('CODE').AsString := ACode;
            ATbl.Open;

            if not ATbl.IsEmpty then
              with ATbl, AUnit do
              begin
                Code := ACode;
                Path := FieldByName('PATH').AsString;
                Id := FieldByName('ID').AsInteger;
                Name := FieldByName('NAME').AsString;
                Edizm := FieldByName('EDIZM').AsString;
              end;
          end;
        ctGROUP:
          begin
            Add('SELECT G.FN_GR_TREE AS NAME, G.ID_GR_TREE AS ID, G.CODE_PATH AS PATH FROM G_GR_TREE G WHERE G.CODE = :CODE');

            ATbl.ParamByName('CODE').AsString := ACode;
            ATbl.Open;

            if not ATbl.IsEmpty then
              with ATbl, AUnit do
              begin
                Code := ACode;
                Path := FieldByName('PATH').AsString;
                Id := FieldByName('ID').AsInteger;
                Name := FieldByName('NAME').AsString;
                Edizm := '';
              end;
          end;
        ctSUM:
          begin
            with AUnit do
            begin
              Code := '0';
              Path := '';
              Id := Integer(ctSUM);
              Name := 'Сумма';
              Edizm := 'грн.';
            end;
          end;
      end;

    Result := ND_OK;
  finally
    if ATbl.Active then ATbl.Close;
  end;
end;

function GetUnitPath(const ATbl: TpFIBDataSet; AConditionType: TConditionType; ACode: string): string;
begin
  Result := '';
  try
    ATbl.SQLs.SelectSQL.Clear;

    with ATbl.SQLs.SelectSQL do
      case AConditionType of
        ctGOODS:
          begin
            Add('SELECT GRT.CODE_PATH || ' + #39 + '#' + #39 + ' || G.CODE AS PATH ');
            // Add('SELECT GRT.PATH || '#' || G.CODE AS PATH ');
            Add('FROM G_GOODSDIR G ');
            Add('INNER JOIN G_GOODS_GR_TREE GT ON GT.ID_GOODSDIR = G.ID_GOODSDIR ');
            Add('INNER JOIN G_GR_TREE GRT ON GRT.ID_GR_TREE = GT.ID_GR_TREE ');
            Add('WHERE G.CODE = :CODE');

            ATbl.ParamByName('CODE').AsString := ACode;
            ATbl.Open;

            if not ATbl.IsEmpty then Result := ATbl.FieldByName('PATH').AsString;
          end;
        ctGROUP:
          begin
            Add('SELECT G.CODE_PATH AS PATH FROM G_GR_TREE G WHERE G.CODE = :CODE');

            ATbl.ParamByName('CODE').AsString := ACode;
            ATbl.Open;

            if not ATbl.IsEmpty then Result := ATbl.FieldByName('PATH').AsString;
          end;
      end;
  finally
    if ATbl.Active then ATbl.Close;
  end;
end;

function ActionDbBlobToRec(const AConnect: TFIBDataBase; const AActionId: Integer; var AActionRec: TActionRec; AaLog: ILOG): HRESULT;
var
  tbl                                        : TpFIBDataSet;
  S                                          : TStream;
  ss                                         : TStringStream;
  i                                          : Integer;
  AUnitPath                                  : string;
begin
  Result := S_FALSE;

  if not Assigned(AConnect) and (not AConnect.Connected) then Exit;
  FillChar(AActionRec, SizeOf(TActionRec), 0);
  //
  try
    tbl := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := AConnect;
      tbl.Transaction := AConnect.DefaultTransaction;
      tbl.UpdateTransaction := AConnect.DefaultUpdateTransaction;
      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT A.DATA ');
        Add('FROM ACT_ACTION A WHERE A.ID_ACTION = :ID_ACTION');
      end;
      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if tbl.IsEmpty or tbl.FieldByName('DATA').IsNull then
      begin
        Result := cERR_ACTION_NOT_FOUND;
        Exit;
      end;
      S := tbl.CreateBlobStream(tbl.FieldByName('DATA'), bmRead);

      ss := TStringStream.Create('');
      try
        S.Position := 0;
        ss.CopyFrom(S, S.Size);

        ss.Position := 0;
        if JSONToActionRec(DeCompressStringZ(ss.DataString), AActionRec) <> ND_OK then Exit;

        if tbl.Active then tbl.Close;

        with AActionRec do
        begin
          for I := Low(Conditions) to High(Conditions) do
            with Conditions[i] do
            begin
              AUnitPath := GetUnitPath(tbl, ConditionType, UnitCode);
              UnitPath := iif(AUnitPath <> '', AUnitPath, UnitPath);
            end;

          SortConditions(Conditions);

          for I := Low(Operations) to High(Operations) do
            with Operations[i] do
            begin
              AUnitPath := GetUnitPath(tbl, ConditionType, UnitCode);
              UnitPath := iif(AUnitPath <> '', AUnitPath, UnitPath);
            end;

          SortOperations(Operations);
        end;
      finally
        FreeAndNil(S);
        FreeAndNil(ss);
      end;

      Result := S_OK;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[ActionDbBlobToRec]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;

function ActionDbToRec(const AConnect: TFIBDataBase; const AActionId: Integer; var AActionRec: TActionRec; AaLog: ILOG): HRESULT;
var
  tbl                                        : TpFIBDataSet;
  tblc                                       : TpFIBDataSet;
  i                                          : Integer;
begin
  Result := S_FALSE;

  if not Assigned(AConnect) and (not AConnect.Connected) then Exit;
  FillChar(AActionRec, SizeOf(TActionRec), 0);
  try
    tbl := TpFIBDataSet.Create(nil);
    tblc := TpFIBDataSet.Create(nil);
    try
      tbl.Options := tbl.Options + [poFetchAll];
      tbl.Database := AConnect;
      tbl.Transaction := AConnect.DefaultTransaction;
      tbl.UpdateTransaction := AConnect.DefaultUpdateTransaction;

      tblc.Options := tbl.Options + [poFetchAll];
      tblc.Database := AConnect;
      tblc.Transaction := AConnect.DefaultTransaction;
      tblc.UpdateTransaction := AConnect.DefaultUpdateTransaction;

      // Акция
      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT A.ID_ACTION,A.NUM_ACTION AS CODE,A.IS_ACTIVE,A.N_ACTION,A.D_ACTIVE_BEGIN,A.D_ACTIVE_END,');
        Add('A.REMARK,A.SCH_1_FROM,A.SCH_1_TO,A.SCH_2_FROM, A.SCH_2_TO,');
        Add('A.SCH_3_FROM,A.SCH_3_TO, A.SCH_4_FROM,A.SCH_4_TO, A.SCH_5_FROM, A.SCH_5_TO, A.SCH_6_FROM,');
        Add('A.SCH_6_TO,A.SCH_7_FROM,A.SCH_7_TO, A.REMARK ');
        Add('FROM ACT_ACTION A WHERE A.ID_ACTION = :ID_ACTION');
      end;
      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if tbl.IsEmpty then
      begin
        Result := cERR_ACTION_NOT_FOUND;
        Exit;
      end;

      with AActionRec do
      begin
        Code := tbl.FieldByName('CODE').AsString;
        NameAction := tbl.FieldByName('N_ACTION').AsString;
        Remark := tbl.FieldByName('REMARK').AsString;
        DateBegin := tbl.FieldByName('D_ACTIVE_BEGIN').AsDateTime;
        DateEnd := tbl.FieldByName('D_ACTIVE_END').AsDateTime;

        Schedule.day_1.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_1_FROM').AsDateTime);
        Schedule.day_1.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_1_TO').AsDateTime);

        Schedule.day_2.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_2_FROM').AsDateTime);
        Schedule.day_2.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_2_TO').AsDateTime);

        Schedule.day_3.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_3_FROM').AsDateTime);
        Schedule.day_3.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_3_TO').AsDateTime);

        Schedule.day_4.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_4_FROM').AsDateTime);
        Schedule.day_4.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_4_TO').AsDateTime);

        Schedule.day_5.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_5_FROM').AsDateTime);
        Schedule.day_5.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_5_TO').AsDateTime);

        Schedule.day_6.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_6_FROM').AsDateTime);
        Schedule.day_6.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_6_TO').AsDateTime);

        Schedule.day_7.SchFrom := ExtTimeFromDatetime(tbl.FieldByName('SCH_7_FROM').AsDateTime);
        Schedule.day_7.SchTo := ExtTimeFromDatetime(tbl.FieldByName('SCH_7_TO').AsDateTime);
      end;

      tbl.Close;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT D.CODE ');
        Add('FROM ACT_ACTION_DEPARTMENT AD ');
        Add(' INNER JOIN DEPARTMENTS D ON D.ID_DEPARTMENTS = AD.ID_DEPARTMENT ');
        Add('WHERE D.ID_DEPARTMENTS <> 1 AND AD.ID_ACTION = :ID_ACTION');
      end;

      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        with AActionRec do
        begin
          SetLength(Recipients, tbl.RecordCount);
          for i := 0 to Length(Recipients) - 1 do
          begin
            Recipients[i] := tbl.FieldByName('CODE').AsString;
            tbl.Next;
          end;
        end;
      end;
      tbl.Close;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT PV.CODE FROM ACT_PAYTYPE_VAR P ');
        Add('INNER JOIN PAYTYPE_VAR PV ON PV.ID_PAYTYPE_VAR = P.ID_PAYTYPE_VAR ');
        Add('WHERE P.ID_ACTION = :ID_ACTION');
      end;

      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        with AActionRec do
        begin
          SetLength(PayTypes, tbl.RecordCount);
          for i := 0 to Length(PayTypes) - 1 do
          begin
            PayTypes[i] := tbl.FieldByName('CODE').AsString;
            tbl.Next;
          end;
        end;
      end;
      tbl.Close;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT O.ID_OBJECTS, O.ID_OBJECTS_TYPE, AO.OBJECT_VALUE ');
        Add('FROM ACT_ACTION_OBJECTS AO ');
        Add('INNER JOIN ACT_OBJECTS O ON O.ID_OBJECTS = AO.ID_OBJECTS ');
        Add('WHERE AO.ID_ACTION = :ID_ACTION');
      end;

      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        with AActionRec do
        begin
          SetLength(Objects, tbl.RecordCount);
          for i := 0 to Length(Objects) - 1 do
          begin
            Objects[i].ObjectMainType := actAction_h.TObjectMainType(tbl.FieldByName('ID_OBJECTS_TYPE').AsInteger);
            Objects[i].ObjectType := TObjectType(tbl.FieldByName('ID_OBJECTS').AsInteger);
            Objects[i].Value := tbl.FieldByName('OBJECT_VALUE').AsString;
            tbl.Next;
          end;
        end;
      end;
      tbl.Close;

      // Условия -------------------------------------------------------------------------
      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT AL.ORDER_LINE, AL.ID_EFFECT_TYPE, AL.ID_CONDITION_TYPE, AL.CODE_UNIT, AL.PATH_UNIT , AL.TRIG_AMOUNT_FROM,');
        Add('AL.ID_COND_TRIG_AMOUNT_FROM, AL.TRIG_AMOUNT_TO, AL.ID_COND_TRIG_AMOUNT_TO, AL.TRIG_SUM_FROM,');
        Add('AL.ID_COND_TRIG_SUM_FROM, AL.TRIG_SUM_TO, AL.ID_COND_TRIG_SUM_TO, AL.HINT_AMOUNT_FROM, AL.ID_COND_HINT_AMOUNT_FROM,');
        Add('AL.HINT_AMOUNT_TO, AL.ID_COND_HINT_AMOUNT_TO, AL.HINT_SUM_FROM, AL.ID_COND_HINT_SUM_FROM, AL.HINT_SUM_TO,');
        Add('AL.ID_COND_HINT_SUM_TO ');
        Add('FROM ACT_ACTION_LINES AL ');
        Add('WHERE AL.ID_ACTION = :ID_ACTION ');
      end;

      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        with AActionRec do
        begin
          SetLength(Conditions, tbl.RecordCount);
          for i := 0 to Length(Conditions) - 1 do
          begin
            with Conditions[i] do
            begin
              Order := tbl.FieldByName('ORDER_LINE').AsInteger;
              EffectType := TEffectType(tbl.FieldByName('ID_EFFECT_TYPE').AsInteger);
              ConditionType := TConditionType(tbl.FieldByName('ID_CONDITION_TYPE').AsInteger);
              UnitCode := tbl.FieldByName('CODE_UNIT').AsString;
              UnitPath := GetUnitPath(tblc, ConditionType, UnitCode);
              UnitPath := iif(UnitPath <> '', UnitPath, tbl.FieldByName('PATH_UNIT').AsString);

              with ConditionAmount do
              begin
                with Cfrom do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger);
                  Value := tbl.FieldByName('TRIG_AMOUNT_FROM').AsCurrency;
                end;

                with Cto do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_AMOUNT_TO').AsInteger);
                  Value := tbl.FieldByName('TRIG_AMOUNT_TO').AsCurrency;
                end;
              end;

              with ConditionSum do
              begin
                with Cfrom do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_SUM_FROM').AsInteger);
                  Value := tbl.FieldByName('TRIG_SUM_FROM').AsCurrency;
                end;

                with Cto do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_SUM_TO').AsInteger);
                  Value := tbl.FieldByName('TRIG_SUM_TO').AsCurrency;
                end;
              end;

              with HintAmount do
              begin
                with Cfrom do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_HINT_AMOUNT_FROM').AsInteger);
                  Value := tbl.FieldByName('HINT_AMOUNT_FROM').AsCurrency;
                end;

                with Cto do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_HINT_AMOUNT_TO').AsInteger);
                  Value := tbl.FieldByName('HINT_AMOUNT_TO').AsCurrency;
                end;
              end;

              with HintSum do
              begin
                with Cfrom do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_HINT_SUM_FROM').AsInteger);
                  Value := tbl.FieldByName('HINT_SUM_FROM').AsCurrency;
                end;

                with Cto do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_HINT_SUM_TO').AsInteger);
                  Value := tbl.FieldByName('HINT_SUM_TO').AsCurrency;
                end;
              end;

            end;
            tbl.Next;
          end;

          SortConditions(Conditions);
        end;
      end;
      tbl.Close;

      with tbl.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT ALA.ID_EFFECT_TYPE, ALA.ID_CONDITION_TYPE, ALA.ORDER_LINE, ALA.CODE_UNIT, ALA.PATH_UNIT,');
        Add('ALA.TRIG_AMOUNT_FROM, ALA.ID_COND_TRIG_AMOUNT_FROM, ALA.TRIG_AMOUNT_TO,');
        Add('ALA.ID_COND_TRIG_AMOUNT_TO, ALA.TRIG_PRICE, ALA.ID_OPERATION_TYPE ');
        Add('FROM ACT_ACTION_LINES_ACT ALA ');
        Add('WHERE ALA.ID_ACTION = :ID_ACTION ');
        Add('ORDER BY ALA.PATH_UNIT DESC');
      end;

      tbl.ParamByName('ID_ACTION').AsInteger := AActionId;
      tbl.Open;

      if not tbl.IsEmpty then
      begin
        tbl.First;
        with AActionRec do
        begin
          SetLength(Operations, tbl.RecordCount);
          for i := 0 to Length(Operations) - 1 do
          begin
            with Operations[i] do
            begin
              EffectType := TEffectType(tbl.FieldByName('ID_EFFECT_TYPE').AsInteger);
              ConditionType := TConditionType(tbl.FieldByName('ID_CONDITION_TYPE').AsInteger);
              UnitCode := tbl.FieldByName('CODE_UNIT').AsString;
              UnitPath := GetUnitPath(tblc, ConditionType, UnitCode);
              UnitPath := iif(UnitPath <> '', UnitPath, tbl.FieldByName('PATH_UNIT').AsString);

              with Amount do
              begin
                with Cfrom do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger);
                  Value := tbl.FieldByName('TRIG_AMOUNT_FROM').AsCurrency;
                end;

                with Cto do
                begin
                  Condition := TCondition(tbl.FieldByName('ID_COND_TRIG_AMOUNT_TO').AsInteger);
                  Value := tbl.FieldByName('TRIG_AMOUNT_TO').AsCurrency;
                end;
              end;

              with Price do
              begin
                Condition := TOperationType(tbl.FieldByName('ID_OPERATION_TYPE').AsInteger);
                Value := tbl.FieldByName('TRIG_PRICE').AsCurrency;
              end;

            end;
            tbl.Next;
          end;

          SortOperations(Operations);
        end;
      end;

      Result := S_OK;
    finally
      if tbl.Active then tbl.Close;
      FreeAndNil(tbl);
    end;
  except
    on E: Exception do
    begin
      if Assigned(AaLog) then
        AaLog.Log('[ActionDbToRec]: ' + E.Message, LOG_ERROR);
    end;
  end;
end;
end.

