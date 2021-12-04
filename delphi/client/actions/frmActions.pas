unit frmActions;

interface

uses
  ZLib,
  AcedStreams,
  AcedCompression,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ndActions_lib2,
  ndActions_h,
  uActionsConst,
  rxStrUtils,
  frmBaseGrid,
  gnugettext,
  ExtCtrls,
  sPanel,
  ComCtrls,
  ToolWin,
  DBGridEhGrouping,
  ToolCtrlsEh,
  GridsEh,
  DBGridEh,
  DB,
  FIBDatabase,
  FIBDataSet,
  pFIBQuery,
  pFIBDataSet,
  pFIBProps,
  StdCtrls,
  Mask,
  DBCtrlsEh,
  sPageControl,
  ImgList,
  sDialogs,
  sGroupBox,
  sScrollBox,
  ActnList;
type
  TFormActions = class(TFormBaseGrid)
    pnlMain: TsPanel;
    tlbGrid: TToolBar;
    btnRefresh: TToolButton;
    btnAdd: TToolButton;
    btnCopy: TToolButton;
    btnEdit: TToolButton;
    btnDel: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    DBGridActionsList: TDBGridEh;
    tblActions: TpFIBDataSet;
    dsActions: TDataSource;
    fbntgrfldActionsID_ACTION: TFIBIntegerField;
    fbstrngfldActionsN_ACTION: TFIBStringField;
    fbdtfldActionsD_ACTIVE_BEGIN: TFIBDateField;
    fbdtfldActionsD_ACTIVE_END: TFIBDateField;
    fbstrngfldActionsREMARK: TFIBStringField;
    fbtmfldActionsSCH_1_FROM: TFIBTimeField;
    fbtmfldActionsSCH_1_TO: TFIBTimeField;
    fbtmfldActionsSCH_2_FROM: TFIBTimeField;
    fbtmfldActionsSCH_2_TO: TFIBTimeField;
    fbtmfldActionsSCH_3_FROM: TFIBTimeField;
    fbtmfldActionsSCH_3_TO: TFIBTimeField;
    fbtmfldActionsSCH_4_FROM: TFIBTimeField;
    fbtmfldActionsSCH_4_TO: TFIBTimeField;
    fbtmfldActionsSCH_5_FROM: TFIBTimeField;
    fbtmfldActionsSCH_5_TO: TFIBTimeField;
    fbtmfldActionsSCH_6_FROM: TFIBTimeField;
    fbtmfldActionsSCH_6_TO: TFIBTimeField;
    fbtmfldActionsSCH_7_FROM: TFIBTimeField;
    fbtmfldActionsSCH_7_TO: TFIBTimeField;
    pgctrlActionPanel: TsPageControl;
    tbSchedule: TsTabSheet;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    edtSCH_1_FROM: TDBDateTimeEditEh;
    edtSCH_1_TO: TDBDateTimeEditEh;
    edtSCH_2_FROM: TDBDateTimeEditEh;
    edtSCH_2_TO: TDBDateTimeEditEh;
    edtSCH_3_FROM: TDBDateTimeEditEh;
    edtSCH_3_TO: TDBDateTimeEditEh;
    edtSCH_4_FROM: TDBDateTimeEditEh;
    edtSCH_4_TO: TDBDateTimeEditEh;
    edtSCH_5_FROM: TDBDateTimeEditEh;
    edtSCH_5_TO: TDBDateTimeEditEh;
    edtSCH_6_FROM: TDBDateTimeEditEh;
    edtSCH_6_TO: TDBDateTimeEditEh;
    edtSCH_7_FROM: TDBDateTimeEditEh;
    edtSCH_7_TO: TDBDateTimeEditEh;
    btnActive: TToolButton;
    btn4: TToolButton;
    btnReview: TToolButton;
    btn5: TToolButton;
    il12: TImageList;
    fblbfldActionsDATA: TFIBBlobField;
    btn6: TToolButton;
    btnTransmit: TToolButton;
    fbstrngfldActionsNUM_ACTION: TFIBStringField;
    fbstrngfldActionsOBJECT_CUPON: TFIBStringField;
    fldActionsIS_ACTIVE: TFIBSmallIntField;
    il1: TImageList;
    fldActionsIS_TRANSMIT: TFIBSmallIntField;
    dlgOpen: TsOpenDialog;
    dlgSave: TsSaveDialog;
    tbRecepients: TsTabSheet;
    tblRecipients: TpFIBDataSet;
    fbntgrfldRecipientsID_ACTION_DEPARTMENT: TFIBIntegerField;
    fbntgrfldRecipientsID_DEPARTMENT: TFIBIntegerField;
    fbntgrfldRecipientsID_ACTION: TFIBIntegerField;
    fbstrngfldRecipientsN_DEPARTMENTS: TFIBStringField;
    dsRecipients: TDataSource;
    DBGridRecepients: TDBGridEh;
    tbConditions: TsTabSheet;
    tblConditions: TpFIBDataSet;
    fbntgrfldConditionsID_ACTION_LINES: TFIBIntegerField;
    fbntgrfldConditionsID_ACTION: TFIBIntegerField;
    fbntgrfldConditionsORDER_LINE: TFIBIntegerField;
    fbntgrfldConditionsID_CONDITION_TYPE: TFIBIntegerField;
    fbstrngfldConditionsN_CONDITION_TYPE: TFIBStringField;
    fbstrngfldConditionsKN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldConditionsN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldConditionsCODE_UNIT: TFIBStringField;
    fbntgrfldConditionsID_UNIT: TFIBIntegerField;
    fbstrngfldConditionsN_UNIT: TFIBStringField;
    fbstrngfldConditionsKN_EDIZM_UNIT: TFIBStringField;
    fbcdfldConditionsTRIG_AMOUNT_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_AMOUNT_FROM: TFIBIntegerField;
    fbstrngfldConditionsN_COND_TRIG_AMOUNT_FROM: TFIBStringField;
    fbcdfldConditionsTRIG_AMOUNT_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_AMOUNT_TO: TFIBIntegerField;
    fbstrngfldConditionsN_COND_TRIG_AMOUNT_TO: TFIBStringField;
    fbcdfldConditionsTRIG_SUM_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_SUM_FROM: TFIBIntegerField;
    fbstrngfldConditionsN_COND_TRIG_SUM_FROM: TFIBStringField;
    fbcdfldConditionsTRIG_SUM_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_SUM_TO: TFIBIntegerField;
    fbcdfldConditionsHINT_AMOUNT_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_AMOUNT_FROM: TFIBIntegerField;
    fbstrngfldConditionsN_COND_HINT_AMOUNT_FROM: TFIBStringField;
    fbcdfldConditionsHINT_AMOUNT_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_AMOUNT_TO: TFIBIntegerField;
    fbstrngfldConditionsN_COND_HINT_AMOUNT_TO: TFIBStringField;
    fbcdfldConditionsHINT_SUM_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_SUM_FROM: TFIBIntegerField;
    fbstrngfldConditionsN_COND_HINT_SUM_FROM: TFIBStringField;
    fbcdfldConditionsHINT_SUM_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_SUM_TO: TFIBIntegerField;
    fbstrngfldConditionsN_COND_TRIG_SUM_TO: TFIBStringField;
    fbstrngfldConditionsN_COND_HINT_SUM_TO: TFIBStringField;
    fbstrngfldConditionsPATH_UNIT: TFIBStringField;
    fbntgrfldConditionsID_EFFECT_TYPE: TFIBIntegerField;
    dsConditions: TDataSource;
    tblOperations: TpFIBDataSet;
    fbntgrfldOperationsID_ACTION_LINES_ACT: TFIBIntegerField;
    fbntgrfldOperationsID_ACTION: TFIBIntegerField;
    fbntgrfldOperationsID_EFFECT_TYPE: TFIBIntegerField;
    fbntgrfldOperationsID_CONDITION_TYPE: TFIBIntegerField;
    fbntgrfldOperationsORDER_LINE: TFIBIntegerField;
    fbstrngfldOperationsCODE_UNIT: TFIBStringField;
    fbntgrfldOperationsID_UNIT: TFIBIntegerField;
    fbstrngfldOperationsN_UNIT: TFIBStringField;
    fbstrngfldOperationsPATH_UNIT: TFIBStringField;
    fbstrngfldOperationsKN_EDIZM_UNIT: TFIBStringField;
    fbcdfldOperationsTRIG_AMOUNT_FROM: TFIBBCDField;
    fbntgrfldOperationsID_COND_TRIG_AMOUNT_FROM: TFIBIntegerField;
    fbcdfldOperationsTRIG_AMOUNT_TO: TFIBBCDField;
    fbntgrfldOperationsID_COND_TRIG_AMOUNT_TO: TFIBIntegerField;
    fbcdfldOperationsTRIG_PRICE: TFIBBCDField;
    fbntgrfldOperationsID_OPERATION_TYPE: TFIBIntegerField;
    fbstrngfldOperationsN_CONDITION_TYPE: TFIBStringField;
    fbstrngfldOperationsN_COND_TRIG_AMOUNT_FROM: TFIBStringField;
    fbstrngfldOperationsN_COND_TRIG_AMOUNT_TO: TFIBStringField;
    fbstrngfldOperationsKN_OPERATION_TYPE: TFIBStringField;
    fbstrngfldOperationsN_OPERATION_TYPE: TFIBStringField;
    fbstrngfldOperationsKN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldOperationsN_EFFECT_TYPE: TFIBStringField;
    dsOperations: TDataSource;
    tblObjects: TpFIBDataSet;
    fbntgrfldObjectsID_ACTION_OBJECTS: TFIBIntegerField;
    fbntgrfldObjectsID_ACTION: TFIBIntegerField;
    fbntgrfldObjectsID_OBJECTS: TFIBIntegerField;
    fbstrngfldObjectsN_OBJECTS: TFIBStringField;
    fbntgrfldObjectsID_OBJECTS_TYPE: TFIBIntegerField;
    fbstrngfldObjectsOBJECT_VALUE: TFIBStringField;
    dsObjects: TDataSource;
    tbObjects: TsTabSheet;
    DBGridActionObjects: TDBGridEh;
    scrlbxMain: TsScrollBox;
    pnlMain2: TsPanel;
    grpConditions: TsGroupBox;
    pnlCondition: TsPanel;
    scrlbxConditions: TsScrollBox;
    pnlCondition1: TsPanel;
    grpDrawdown: TsGroupBox;
    grpDrawdownAmount: TsGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    edTRIG_AMOUNT_FROM: TDBNumberEditEh;
    edTRIG_AMOUNT_TO: TDBNumberEditEh;
    edN_COND_TRIG_AMOUNT_FROM: TDBEditEh;
    edN_COND_TRIG_AMOUNT_TO: TDBEditEh;
    grpConditionAmountHint: TsGroupBox;
    lbl30: TLabel;
    lbl31: TLabel;
    edHINT_AMOUNT_FROM: TDBNumberEditEh;
    edHINT_AMOUNT_TO: TDBNumberEditEh;
    edN_COND_HINT_AMOUNT_FROM: TDBEditEh;
    edN_COND_HINT_AMOUNT_TO: TDBEditEh;
    grp1: TsGroupBox;
    grpConditionHintSUM: TsGroupBox;
    lbl32: TLabel;
    lbl33: TLabel;
    edHINT_SUM_FROM: TDBNumberEditEh;
    edHINT_SUM_TO: TDBNumberEditEh;
    edN_COND_HINT_SUM_FROM: TDBEditEh;
    edN_COND_HINT_SUM_TO: TDBEditEh;
    grpDrawdownSUM: TsGroupBox;
    lbl28: TLabel;
    lbl29: TLabel;
    edTRIG_SUM_FROM: TDBNumberEditEh;
    edTRIG_SUM_TO: TDBNumberEditEh;
    edN_COND_TRIG_SUM_FROM: TDBEditEh;
    edN_COND_TRIG_SUM_TO: TDBEditEh;
    DBGridConditions2: TDBGridEh;
    grpOperations: TsGroupBox;
    pnlOperationEdit: TsPanel;
    scrlbxOperations: TsScrollBox;
    pnlOperations2: TsPanel;
    grp7: TsGroupBox;
    grp8: TsGroupBox;
    lbl47: TLabel;
    lbl48: TLabel;
    edTRIG_AMOUNT_FROM_OPER: TDBNumberEditEh;
    edTRIG_AMOUNT_TO_OPER: TDBNumberEditEh;
    dbEditN_COND_TRIG_AMOUNT_FROM: TDBEditEh;
    dbEditN_COND_TRIG_AMOUNT_TO: TDBEditEh;
    grp9: TsGroupBox;
    lbl49: TLabel;
    edTRIG_PRICE: TDBNumberEditEh;
    dbEditN_COND_TRIG_AMOUNT_FROM1: TDBEditEh;
    DBGridOperations2: TDBGridEh;
    btnActionSave: TToolButton;
    btnActionLoad: TToolButton;
    actlstActions: TActionList;
    actActionSave: TAction;
    actActionLoad: TAction;
    btn7: TToolButton;
    actActionRefresh: TAction;
    actActionAdd: TAction;
    actActionDublicate: TAction;
    actActionEdit: TAction;
    actActionDelete: TAction;
    actActionReview: TAction;
    actActionActive: TAction;
    actActionTransmit: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblActionsNewRecord(DataSet: TDataSet);
    procedure DBGridActionsListGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridActionsListDblClick(Sender: TObject);
    procedure dsActionsDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridActionsListRowDetailPanelShow(Sender: TCustomDBGridEh;
      var CanShow: Boolean);
    procedure DBGridActionsListRowDetailPanelHide(Sender: TCustomDBGridEh;
      var CanHide: Boolean);
    procedure actActionSaveExecute(Sender: TObject);
    procedure actActionLoadExecute(Sender: TObject);
    procedure actActionRefreshExecute(Sender: TObject);
    procedure actActionAddExecute(Sender: TObject);
    procedure actActionDublicateExecute(Sender: TObject);
    procedure actActionEditExecute(Sender: TObject);
    procedure actActionDeleteExecute(Sender: TObject);
    procedure actActionReviewExecute(Sender: TObject);
    procedure actActionActiveExecute(Sender: TObject);
    procedure actActionTransmitExecute(Sender: TObject);
  private
    fActionExt: Boolean;

    function ActionCheck(): Boolean;
    procedure SaveActionToFile();
    procedure LoadFromFile();

    procedure ColumnsGetCellBoolean(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
  public
    { Public declarations }
  end;

var
  FormActions                                : TFormActions;

implementation

uses Data_DIR,
  frmEditAction,
  SecBase,
  FWConsts,
  frmMain;

{$R *.dfm}

procedure TFormActions.LoadFromFile();
var
  fs                                         : TFileStream;
  ss                                         : TStringStream;
  AValue                                     : WideString;
  AActionId                                  : Integer;
  Result                                     : Integer;
  ABaseDir                                   : string;

begin
  with DBGridActionsList.DataSource.DataSet do
    if DBGridActionsList.Focused then
    begin
      with dlgOpen do
      begin
        DefaultExt := '.act';
        Filter := 'Акции|*.act';
        ABaseDir := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName) + 'Actions');
        if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);
        ABaseDir := IncludeTrailingPathDelimiter(ABaseDir + 'Object');
        if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);
        ABaseDir := IncludeTrailingPathDelimiter(ABaseDir + 'Action');
        if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);

        InitialDir := ABaseDir;

        if Execute(Self.Handle) then
        begin
          StartWaitTime(True, 0, 0, _('Загрузка Акций...'));
          fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
          try
            fs.Position := 0;
            ss := TStringStream.Create('');
            ss.Position := 0;
            ss.CopyFrom(fs, fs.Size);
            AValue := ss.DataString;
            AActionId := 0;
            Result := ndf2_ActionFromBinary(AValue, AActionId);
            Application.ProcessMessages;

            if Result = ND_OK then
            begin
              DisableControls;
              Close;
              Open;
              if AActionId <> 0 then Locate('ID_ACTION', AActionId, []);
              EnableControls;
            end;

          finally
            FreeAndNil(fs);
            FreeAndNil(ss);
            StopWaitTime;
          end;
          if Result <> ND_OK then
            Application.MessageBox(PChar(string(_('Ошибка.'))), PChar(Application.Title), MB_OK + MB_ICONSTOP);
        end;
      end;
    end;
end;

procedure TFormActions.SaveActionToFile();
var
  ABaseDir                                   : string;

  function RemoveSpecialChars(const STR: string): string;
  const
    InvalidChars                             : set of CHAR = ['\', '/', ':', '*', '?', '"', '<', '>', '|'];
  var
    I                                        : Cardinal;
  begin
    Result := '';
    for I := 1 to LENGTH(STR) do
      if not (STR[I] in InvalidChars) then Result := Result + STR[I]
  end;
begin
  with DBGridActionsList.DataSource.DataSet do
    if DBGridActionsList.Focused and (not IsEmpty) then
      if (FieldByName('IS_ACTIVE').AsBoolean) and (not FieldByName('DATA').IsNull) and (FieldByName('DATA').IsBlob) then
      begin
        with dlgSave do
        begin
          DefaultExt := '.act';
          Filter := 'Акции|*.act';

          ABaseDir := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName) + 'Actions');
          if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);
          ABaseDir := IncludeTrailingPathDelimiter(ABaseDir + 'Object');
          if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);
          ABaseDir := IncludeTrailingPathDelimiter(ABaseDir + 'Action');
          if not DirectoryExists(ABaseDir) then CreateDir(ABaseDir);

          InitialDir := ABaseDir;

          FileName := RemoveSpecialChars(StringReplace(FieldByName('NUM_ACTION').AsString + '_' + FieldByName('N_ACTION').AsString, ' ', '_', [rfReplaceAll, rfIgnoreCase]));

          if Execute(Self.Handle) then
            (FieldByName('DATA') as TBlobField).SaveToFile(FileName);
        end;
      end;
end;

procedure TFormActions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblActions.Close;

  NDf2_free_lib();

  Action := caFree;
  FormActions := nil;

  inherited;
end;

procedure TFormActions.FormCreate(Sender: TObject);
var
  cfg                                        : TndaConfig;
  i                                          : Integer;
begin
  inherited;

  tblActions.Database := FormMain.DatabaseFW;
  tblRecipients.Database := FormMain.DatabaseFW;
  tblConditions.Database := FormMain.DatabaseFW;
  tblOperations.Database := FormMain.DatabaseFW;
  tblObjects.Database := FormMain.DatabaseFW;

  pgctrlActionPanel.ActivePageIndex := 0;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if self.Components[i] is TDBGridEh then
      with (self.Components[i] as TDBGridEh) do
      begin
        OptionsEh := OptionsEh + [dghShowRecNo];

        with EmptyDataInfo do
        begin
          Active := True;
          Text := _('Нет данных');
          Font.Style := [fsItalic];
          Font.Size := 10;
        end;
      end;
  end;
  fActionExt := AppIni.ReadBool(cINI_ACT_SECTION, cINI_ACT_EXT, False);
  actActionSave.Visible := fActionExt;
  actActionLoad.Visible := fActionExt;

  if not FormMain.IsServer then
  begin
    actActionAdd.Enabled := False;
    actActionDublicate.Enabled := False;
    actActionEdit.Enabled := False;
    actActionDelete.Enabled := False;
    actActionActive.Enabled := False;
    actActionTransmit.Enabled := False;
  end;

  if ndf2_Init_Lib(libAction) then
  begin
    FillChar(cfg, SizeOf(TndaConfig), 0);

    cfg.Options := [];
    cfg.OptionsDebug := [];
    cfg.Recipient := '';
    cfg.LoadActionPeriod := 5;

    with cfg.DBConnection do
    begin
      Port := 3050;

      Server := ExtractWord(1, FormMain.DatabaseFW.DBName, [':']);
      User := FormMain.DatabaseFW.ConnectParams.UserName;
      Password := FormMain.DatabaseFW.ConnectParams.Password;
      DataBase := FormMain.DatabaseFW.DBFileName;
    end;

    if ndf2_Init(cfg) <> ND_OK then
      Application.MessageBox(PChar(string(_('Ошибка инициализации библиотеки Акций'))), PChar(Application.Title), MB_OK +
        MB_ICONSTOP);
  end
  else
  begin
    actActionActive.Enabled := False;
    Application.MessageBox(PChar(string(_('Ошибка загрузки библиотеки Акций'))), PChar(Application.Title), MB_OK +
      MB_ICONSTOP);
  end;

end;

procedure TFormActions.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_SPACE: if DBGridActionsList.Focused then actActionEdit.Execute;
  end;

  if fActionExt then
    if ssCtrl in Shift then
      case Key of
        Ord('S'): SaveActionToFile();
        Ord('L'): LoadFromFile();
      end;
end;

procedure TFormActions.ColumnsGetCellBoolean(Sender: TObject; EditMode: Boolean;
  Params: TColCellParamsEh);
begin
  with Params, (Sender as TDBGridColumnEh) do
  begin
    case Field.AsInteger of
      0: ImageIndex := 0;
      1: ImageIndex := 1;
      2: ImageIndex := 2;
    end;
    Text := '';
  end;
end;

procedure TFormActions.FormShow(Sender: TObject);
begin
  DM_DIR.SetLabelFields_Actions(tblActions);
  DM_DIR.SetLabelFields_Recipients(tblRecipients);
  DM_DIR.SetLabelFields_Conditions(tblConditions);
  DM_DIR.SetLabelFields_Operations(tblOperations);
  DM_DIR.SetLabelFields_ActionObjects(tblObjects);

  inherited;

  tblActions.Open;

  with DBGridActionsList do
  begin
    if Assigned(DataSource.DataSet.FindField('IS_ACTIVE')) then
      with FieldColumns['IS_ACTIVE'] do
      begin
        Checkboxes := False;
        ImageList := il1;
        ShowImageAndText := True;
        OnGetCellParams := ColumnsGetCellBoolean;
      end;

    if Assigned(DataSource.DataSet.FindField('IS_TRANSMIT')) then
      with FieldColumns['IS_TRANSMIT'] do
      begin
        Checkboxes := False;
        ImageList := il1;
        ShowImageAndText := True;
        OnGetCellParams := ColumnsGetCellBoolean;
      end;
  end;

  WSecLog(_('Просмотр Акций'), 1);

end;

procedure TFormActions.tblActionsNewRecord(DataSet: TDataSet);
var
  TimeStart                                  : TTime;
  TimeEnd                                    : TTime;
  Id                                         : Integer;
  tbl_get                                    : TpFIBDataSet;
begin
  TimeStart := EncodeTime(0, 0, 0, 0);
  TimeEnd := EncodeTime(23, 59, 59, 0);

  with DataSet as TpFIBDataSet do
  begin
    fbn('D_ACTIVE_BEGIN').AsDateTime := Date;
    fbn('D_ACTIVE_END').AsDateTime := Date + 1;
    fbn('IS_ACTIVE').AsBoolean := False;

    FBN('SCH_1_FROM').AsDateTime := TimeStart;
    FBN('SCH_1_TO').AsDateTime := TimeEnd;

    FBN('SCH_2_FROM').AsDateTime := TimeStart;
    FBN('SCH_2_TO').AsDateTime := TimeEnd;

    FBN('SCH_3_FROM').AsDateTime := TimeStart;
    FBN('SCH_3_TO').AsDateTime := TimeEnd;

    FBN('SCH_4_FROM').AsDateTime := TimeStart;
    FBN('SCH_4_TO').AsDateTime := TimeEnd;

    FBN('SCH_5_FROM').AsDateTime := TimeStart;
    FBN('SCH_5_TO').AsDateTime := TimeEnd;

    FBN('SCH_6_FROM').AsDateTime := TimeStart;
    FBN('SCH_6_TO').AsDateTime := TimeEnd;

    FBN('SCH_7_FROM').AsDateTime := TimeStart;
    FBN('SCH_7_TO').AsDateTime := TimeEnd;

    FBN('IS_TRANSMIT').AsBoolean := False;

    tbl_get := TpFIBDataSet.Create(nil);
    try
      tbl_get.Options := tbl_get.Options + [poFetchAll];
      tbl_get.Database := FormMain.DatabaseFW;
      tbl_get.Transaction := FormMain.DatabaseFW.DefaultTransaction;
      tbl_get.UpdateTransaction := FormMain.DatabaseFW.DefaultUpdateTransaction;

      tbl_get.Close;
      with tbl_get.SQLs.SelectSQL do
      begin
        Clear;
        Add('SELECT gen_id(GEN_ACT_ACTION_ID,1) AS ID FROM RDB$DATABASE');
      end;
      tbl_get.Open;

      if not tbl_get.IsEmpty then
      begin
        id := tbl_get.FieldByName('ID').AsInteger;
      end;

      FBN('ID_ACTION').AsInteger := Id;
      FBN('NUM_ACTION').AsString := FBN('ID_ACTION').AsString;

    finally
      tbl_get.Close;
      FreeAndNil(tbl_get);
    end;
  end;
end;

procedure TFormActions.DBGridActionsListDblClick(Sender: TObject);
begin
  with actActionReview do
    if Enabled then
      Execute;
end;

procedure TFormActions.DBGridActionsListGetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin

  if not tblActions.FieldByName('IS_ACTIVE').AsBoolean then
  begin
    Background := $00D2D2FF;
  end

end;

procedure TFormActions.DBGridActionsListRowDetailPanelHide(Sender: TCustomDBGridEh;
  var CanHide: Boolean);
begin
  with tblRecipients do
  begin
    Close;
    DataSource := nil;
  end;

  with tblConditions do
  begin
    Close;
    DataSource := nil;
  end;

  with tblOperations do
  begin
    Close;
    DataSource := nil;
  end;

  with tblObjects do
  begin
    Close;
    DataSource := nil;
  end;

end;

procedure TFormActions.DBGridActionsListRowDetailPanelShow(Sender: TCustomDBGridEh;
  var CanShow: Boolean);
begin
  with tblRecipients do
  begin
    DataSource := dsActions;
    Open;
  end;

  with tblConditions do
  begin
    DataSource := dsActions;
    Open;
  end;

  with tblOperations do
  begin
    DataSource := dsActions;
    Open;
  end;

  with tblObjects do
  begin
    DataSource := dsActions;
    Open;
  end;

end;

procedure TFormActions.dsActionsDataChange(Sender: TObject; Field: TField);
begin
  with (Sender as TDataSource).DataSet do
  begin
    actActionTransmit.Checked := fldActionsIS_TRANSMIT.AsInteger = 1;
    actActionActive.Checked := fldActionsIS_ACTIVE.AsInteger = 1;
  end;
end;

procedure TFormActions.actActionActiveExecute(Sender: TObject);
var
  S                                          : TStream;
  //  szOut                                      : Integer;
  Result                                     : Integer;
  Value                                      : WideString;
  ss                                         : TStringStream;
begin
  with tblActions do
    if not IsEmpty then
    begin
      if (not FieldByName('IS_ACTIVE').AsBoolean) and (not ActionCheck()) then Exit;
      Edit;

      S := CreateBlobStream(FieldByName('DATA'), bmReadWrite);
      try
        if FieldByName('IS_ACTIVE').AsBoolean then
        begin
          FieldByName('DATA').Value := null;
        end
        else
        begin
          Result := ndf2_ActionAsBinary(FieldByName('ID_ACTION').AsInteger, Value);

          if Result <> ND_OK then
          begin
            Application.MessageBox(PChar(string(_('Ошибка формирования структуры Акции.'))),
              PChar(Application.Title), MB_OK + MB_ICONSTOP);

            Exit;
          end
          else
          begin
            ss := TStringStream.Create(Value);
            try
              ss.Position := 0;
              s.CopyFrom(ss, ss.Size);
            finally
              FreeAndNil(ss);
            end;
          end;
        end;
        FieldByName('IS_ACTIVE').AsBoolean := not FieldByName('IS_ACTIVE').AsBoolean;
        FieldByName('IS_TRANSMIT').AsBoolean := False;
        Post;

      finally
        S.Free;
      end;
    end;
end;

procedure TFormActions.actActionAddExecute(Sender: TObject);
var
  Id                                         : Integer;
begin
  FormEditAction := TFormEditAction.Create(Application);

  with tblActions do
  try
    Append;

    if FormEditAction.ShowModal = mrOK then
    begin
      Post;
      DisableControls;
      try
        Id := FieldByName('ID_ACTION').AsInteger;
        Close;
        Open;
        Locate('ID_ACTION', Id, []);
      finally
        EnableControls;
      end;

    end
    else
      Cancel;

  finally

  end;
end;

procedure TFormActions.actActionDeleteExecute(Sender: TObject);
begin
  with tblActions do
    if not IsEmpty then
    begin
      if FieldByName('IS_TRANSMIT').AsBoolean then
      begin
        MsgBoxEx(Application.Title, _('Акция активна. Удаление невозможно.'), MB_OK + MB_ICONWARNING);
        Exit;
      end;

      if MsgBoxEx(Application.Title, format(_('Удалить Акцию [%s] ?'), [FieldByName('N_ACTION').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        Delete;
      end;
    end;
end;

procedure TFormActions.actActionDublicateExecute(Sender: TObject);
var
  S                                          : TStream;
  ss                                         : TStringStream;
  AValue                                     : WideString;
  AActionId                                  : Integer;
  Result                                     : Integer;
begin
  with tblActions do
    if not IsEmpty then
    begin
      if MsgBoxEx(Application.Title, format(_('Дублировать Акцию [%s] ?'), [FieldByName('N_ACTION').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        if GetStoredProcTools <> nil then
          with GetStoredProcTools do
          begin
            StartWaitTime(True, 0, 0, _('Создание Акции...'));
            try
              StoredProcName := 'ACT_ADD_ACTION_DUPLICATE';
              ParamByName('ID_ACTION').AsInteger := tblActions.FieldByName('ID_ACTION').AsInteger;
              ExecProc;

              Application.ProcessMessages;
            finally
              StopWaitTime;
            end;

            if ParamByName('RESULT').AsInteger <> S_OK then
              Application.MessageBox(PChar(string(_('Ошибка.'))), PChar(Application.Title), MB_OK + MB_ICONSTOP)
            else
            begin
              tblActions.DisableControls;
              try
                tblActions.CloseOpen(True);
                tblActions.Locate('ID_ACTION', ParamByName('ID_ACTION_NEW').AsInteger, []);
              finally
                tblActions.EnableControls;
              end;

            end;

          end;
      end;
    end;
end;

procedure TFormActions.actActionEditExecute(Sender: TObject);
begin
  if tblActions.IsEmpty then Exit;

  if tblActions.FieldByName('IS_ACTIVE').AsBoolean then
  begin
    MsgBoxEx(Application.Title, _('Акция Собрана. Изменение невозможно.'), MB_OK + MB_ICONWARNING);
    Exit;
  end;

  FormEditAction := TFormEditAction.Create(Application);

  with tblActions do
  try
    Edit;

    if FormEditAction.ShowModal = mrOK then
    begin
      Post;
    end
    else
      Cancel;

  finally

  end;
end;

procedure TFormActions.actActionLoadExecute(Sender: TObject);
begin
  LoadFromFile();
end;

procedure TFormActions.actActionRefreshExecute(Sender: TObject);
begin
  tblActions.CloseOpen(False);
end;

procedure TFormActions.actActionReviewExecute(Sender: TObject);
begin
  if tblActions.IsEmpty then Exit;

  FormEditAction := TFormEditAction.Create2(Application);
  FormEditAction.ShowModal;
end;

procedure TFormActions.actActionSaveExecute(Sender: TObject);
begin
  SaveActionToFile();
end;

function TFormActions.ActionCheck(): Boolean;
begin
  with tblActions do
  try
    Result := True;
  finally

  end;
end;

procedure TFormActions.actActionTransmitExecute(Sender: TObject);
begin
  with tblActions do
    if not IsEmpty then
        if MsgBoxEx(Application.Title,
          format('%s акцию [%s]?',
           [iif(FieldByName('IS_ACTIVE').AsInteger, _('Де активировать'), _('Активировать')), FieldByName('N_ACTION').AsString]),
           MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
    if ActionCheck() then
    begin
       if (not FieldByName('IS_ACTIVE').AsBoolean) then
      begin
        actActionTransmit.Checked := False;
        Exit;
      end;

      Edit;
      FieldByName('IS_TRANSMIT').AsBoolean := not FieldByName('IS_TRANSMIT').AsBoolean;
      Post;
    end;
end;

end.

