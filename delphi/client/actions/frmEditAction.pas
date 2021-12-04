unit frmEditAction;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  frmBaseGrid,
  ndActions_h,
  gnugettext,
  Dialogs,
  ExtCtrls,
  sPanel,
  StdCtrls,
  Buttons,
  sBitBtn,
  sGroupBox,
  Mask,
  DBCtrlsEh,
  ComCtrls,
  sPageControl,
  DB,
  FIBDataSet,
  pFIBDataSet,
  ToolWin,
  DBGridEhGrouping,
  ToolCtrlsEh,
  GridsEh,
  DBGridEh,
  DBLookupEh,
  sRadioButton,
  DBCtrls,
  sScrollBox;

type
  TFormEditAction = class(TFormBaseGrid)
    pnlMain: TsPanel;
    pgctrlActionList: TsPageControl;
    tbConditions: TsTabSheet;
    tbOperations: TsTabSheet;
    tblRecipients: TpFIBDataSet;
    dsRecipients: TDataSource;
    fbntgrfldRecipientsID_ACTION_DEPARTMENT: TFIBIntegerField;
    fbntgrfldRecipientsID_DEPARTMENT: TFIBIntegerField;
    fbntgrfldRecipientsID_ACTION: TFIBIntegerField;
    fbstrngfldRecipientsN_DEPARTMENTS: TFIBStringField;
    tbPayType: TsTabSheet;
    pnlCondition: TsPanel;
    pnlConditionList: TsPanel;
    toolbrCondition: TToolBar;
    btnRefreshConditions: TToolButton;
    btn5: TToolButton;
    btnAddConditions: TToolButton;
    btn7: TToolButton;
    btnDeleteConditions: TToolButton;
    btn9: TToolButton;
    DBGridConditions: TDBGridEh;
    tblConditions: TpFIBDataSet;
    dsConditions: TDataSource;
    fbntgrfldConditionsID_ACTION_LINES: TFIBIntegerField;
    fbntgrfldConditionsID_ACTION: TFIBIntegerField;
    fbntgrfldConditionsORDER_LINE: TFIBIntegerField;
    fbntgrfldConditionsID_CONDITION_TYPE: TFIBIntegerField;
    fbstrngfldConditionsCODE_UNIT: TFIBStringField;
    fbntgrfldConditionsID_UNIT: TFIBIntegerField;
    fbstrngfldConditionsN_UNIT: TFIBStringField;
    fbstrngfldConditionsKN_EDIZM_UNIT: TFIBStringField;
    fbcdfldConditionsTRIG_AMOUNT_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_AMOUNT_FROM: TFIBIntegerField;
    fbcdfldConditionsTRIG_AMOUNT_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_AMOUNT_TO: TFIBIntegerField;
    fbcdfldConditionsTRIG_SUM_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_SUM_FROM: TFIBIntegerField;
    fbcdfldConditionsTRIG_SUM_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_TRIG_SUM_TO: TFIBIntegerField;
    fbcdfldConditionsHINT_AMOUNT_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_AMOUNT_FROM: TFIBIntegerField;
    fbcdfldConditionsHINT_AMOUNT_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_AMOUNT_TO: TFIBIntegerField;
    fbcdfldConditionsHINT_SUM_FROM: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_SUM_FROM: TFIBIntegerField;
    fbcdfldConditionsHINT_SUM_TO: TFIBBCDField;
    fbntgrfldConditionsID_COND_HINT_SUM_TO: TFIBIntegerField;
    fbstrngfldConditionsKN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldConditionsN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldConditionsN_CONDITION_TYPE: TFIBStringField;
    fbstrngfldConditionsN_COND_TRIG_AMOUNT_FROM: TFIBStringField;
    fbstrngfldConditionsN_COND_TRIG_AMOUNT_TO: TFIBStringField;
    fbstrngfldConditionsN_COND_TRIG_SUM_FROM: TFIBStringField;
    fbstrngfldConditionsN_COND_TRIG_SUM_TO: TFIBStringField;
    fbstrngfldConditionsN_COND_HINT_AMOUNT_FROM: TFIBStringField;
    fbstrngfldConditionsN_COND_HINT_AMOUNT_TO: TFIBStringField;
    fbstrngfldConditionsN_COND_HINT_SUM_FROM: TFIBStringField;
    fbstrngfldConditionsN_COND_HINT_SUM_TO: TFIBStringField;
    btnEditConditions: TToolButton;
    pnl1: TsPanel;
    btnOkCondition: TsBitBtn;
    btnCancelCondition: TsBitBtn;
    tblCOND_TRIG_AMOUNT_FROM: TpFIBDataSet;
    dsCOND_TRIG_AMOUNT_FROM: TDataSource;
    fbntgrfldCOND_TRIG_AMOUNT_FROMID_CONDITION: TFIBIntegerField;
    fbstrngfldCOND_TRIG_AMOUNT_FROMKN_CONDITION: TFIBStringField;
    fbstrngfldCOND_TRIG_AMOUNT_FROMN_CONDITION: TFIBStringField;
    tblCOND_TRIG_AMOUNT_TO: TpFIBDataSet;
    dsCOND_TRIG_AMOUNT_TO: TDataSource;
    fbntgrfldCOND_TRIG_AMOUNT_TOID_CONDITION: TFIBIntegerField;
    fbstrngfldCOND_TRIG_AMOUNT_TOKN_CONDITION: TFIBStringField;
    fbstrngfldCOND_TRIG_AMOUNT_TON_CONDITION: TFIBStringField;
    tblCOND_TRIG_SUM_FROM: TpFIBDataSet;
    fbntgrfld1: TFIBIntegerField;
    fbstrngfld1: TFIBStringField;
    fbstrngfld2: TFIBStringField;
    dsCOND_TRIG_SUM_FROM: TDataSource;
    tblCOND_TRIG_SUM_TO: TpFIBDataSet;
    fbntgrfld2: TFIBIntegerField;
    fbstrngfld3: TFIBStringField;
    fbstrngfld4: TFIBStringField;
    dsCOND_TRIG_SUM_TO: TDataSource;
    tblCOND_HINT_AMOUNT_FROM: TpFIBDataSet;
    fbntgrfld3: TFIBIntegerField;
    fbstrngfld5: TFIBStringField;
    fbstrngfld6: TFIBStringField;
    dsCOND_HINT_AMOUNT_FROM: TDataSource;
    tblCOND_HINT_AMOUNT_TO: TpFIBDataSet;
    fbntgrfld4: TFIBIntegerField;
    fbstrngfld7: TFIBStringField;
    fbstrngfld8: TFIBStringField;
    dsCOND_HINT_AMOUNT_TO: TDataSource;
    tblCOND_HINT_SUM_FROM: TpFIBDataSet;
    fbntgrfld5: TFIBIntegerField;
    fbstrngfld9: TFIBStringField;
    fbstrngfld10: TFIBStringField;
    dsCOND_HINT_SUM_FROM: TDataSource;
    tblCOND_HINT_SUM_TO: TpFIBDataSet;
    fbntgrfld6: TFIBIntegerField;
    fbstrngfld11: TFIBStringField;
    fbstrngfld12: TFIBStringField;
    dsCOND_HINT_SUM_TO: TDataSource;
    tblEffectType: TpFIBDataSet;
    dsEffectType: TDataSource;
    fbntgrfldEffectTypeID_EFFECT_TYPE: TFIBIntegerField;
    fbstrngfldEffectTypeKN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldEffectTypeN_EFFECT_TYPE: TFIBStringField;
    tblConditionType: TpFIBDataSet;
    dsConditionType: TDataSource;
    fbntgrfldConditionTypeID_CONDITION_TYPE: TFIBIntegerField;
    fbstrngfldConditionTypeN_CONDITION_TYPE: TFIBStringField;
    tblRecipientsNotIn: TpFIBDataSet;
    fbntgrfldRecipientsNotInID_DEPARTMENTS: TFIBIntegerField;
    fbstrngfldRecipientsNotInN_DEPARTMENTS: TFIBStringField;
    tblOperations: TpFIBDataSet;
    dsOperations: TDataSource;
    fbntgrfldOperationsID_ACTION_LINES_ACT: TFIBIntegerField;
    fbntgrfldOperationsID_ACTION: TFIBIntegerField;
    fbntgrfldOperationsID_CONDITION_TYPE: TFIBIntegerField;
    fbntgrfldOperationsORDER_LINE: TFIBIntegerField;
    fbstrngfldOperationsCODE_UNIT: TFIBStringField;
    fbntgrfldOperationsID_UNIT: TFIBIntegerField;
    fbstrngfldOperationsN_UNIT: TFIBStringField;
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
    pnlOperationEdit: TsPanel;
    pnl3: TsPanel;
    btn4: TsBitBtn;
    btn6: TsBitBtn;
    pnlOperationsList: TsPanel;
    toolbrOperation: TToolBar;
    btnRefreshOperation: TToolButton;
    btn10: TToolButton;
    btnAddOperation: TToolButton;
    btnEditOperation: TToolButton;
    btn13: TToolButton;
    btnDeleteOperation: TToolButton;
    btn15: TToolButton;
    DBGridOperations: TDBGridEh;
    tblOperationType: TpFIBDataSet;
    dsOperationType: TDataSource;
    fbntgrfldOperationTypeID_OPERATION_TYPE: TFIBIntegerField;
    fbstrngfldOperationTypeKN_OPERATION_TYPE: TFIBStringField;
    fbstrngfldOperationTypeN_OPERATION_TYPE: TFIBStringField;
    toolbrPayTypes: TToolBar;
    btnRefreshPayType: TToolButton;
    btn11: TToolButton;
    btnEditPayType: TToolButton;
    btn14: TToolButton;
    btnDeletePayType: TToolButton;
    btn17: TToolButton;
    DBGridActionPayType: TDBGridEh;
    tblPayType: TpFIBDataSet;
    dsPayType: TDataSource;
    fbntgrfldPayTypeID_ACT_PAYTYPE_VAR: TFIBIntegerField;
    fbntgrfldPayTypeID_ACTION: TFIBIntegerField;
    fbntgrfldPayTypeID_PAYTYPE_VAR: TFIBIntegerField;
    fbstrngfldPayTypeN_PAYTYPE_VAR: TFIBStringField;
    tbltblPayTypeNotIn: TpFIBDataSet;
    fbntgrfldPayTypeNotInID_PAYTYPE_VAR: TFIBIntegerField;
    fbstrngfldPayTypeNotInN_PAYTYPE_VAR: TFIBStringField;
    tblGoods: TpFIBDataSet;
    fbntgrfldGoodsID_GOODSDIR: TFIBIntegerField;
    fbstrngfldGoodsKN_GOODS: TFIBStringField;
    fbstrngfldGoodsN_GOODS: TFIBStringField;
    fbstrngfldGoodsCODE: TFIBStringField;
    fbstrngfldGoodsKN_EDIZM: TFIBStringField;
    dsGoods: TDataSource;
    tbObjects: TsTabSheet;
    toolbrObjects: TToolBar;
    btnRefreshObj: TToolButton;
    btn12: TToolButton;
    btnEditObj: TToolButton;
    btn18: TToolButton;
    btnDeleteObj: TToolButton;
    btn20: TToolButton;
    tblObjects: TpFIBDataSet;
    dsObjects: TDataSource;
    fbntgrfldObjectsID_ACTION_OBJECTS: TFIBIntegerField;
    fbntgrfldObjectsID_ACTION: TFIBIntegerField;
    fbntgrfldObjectsID_OBJECTS: TFIBIntegerField;
    fbstrngfldObjectsN_OBJECTS: TFIBStringField;
    DBGridActionObjects: TDBGridEh;
    tblObjectsNotIn: TpFIBDataSet;
    tblGoodsGrTree: TpFIBDataSet;
    dsGoodsGrTree: TDataSource;
    fbntgrfldGoodsGrTreeID: TFIBIntegerField;
    fbntgrfldGoodsGrTreeID_PARENT: TFIBIntegerField;
    fbntgrfldGoodsGrTreeIMAGE_INDEX: TFIBIntegerField;
    fbstrngfldGoodsGrTreeREC_NAME: TFIBStringField;
    fbstrngfldGoodsGrTreeNOTE: TFIBStringField;
    fbstrngfldGoodsGrTreePATH: TFIBStringField;
    fbstrngfldConditionsPATH_UNIT: TFIBStringField;
    fbstrngfldGoodsPATH: TFIBStringField;
    fbstrngfldOperationsPATH_UNIT: TFIBStringField;
    pnlActionMain: TsPanel;
    grpAction: TsGroupBox;
    pnlButtons: TsPanel;
    btnOk: TsBitBtn;
    btnCancel: TsBitBtn;
    fbntgrfldObjectsID_OBJECTS_TYPE: TFIBIntegerField;
    grpActionMain: TsGroupBox;
    lbl_N: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbEditNUM_TAB: TDBEditEh;
    ckbxIsActive: TDBCheckBoxEh;
    dbEditN_ACTION: TDBEditEh;
    dbEditREMARK: TDBEditEh;
    edtD_ACTIVE_BEGIN: TDBDateTimeEditEh;
    edtD_ACTIVE_END: TDBDateTimeEditEh;
    tblCOND_TRIG_AMOUNT_TO_OPER: TpFIBDataSet;
    fbntgrfld7: TFIBIntegerField;
    fbstrngfld13: TFIBStringField;
    fbstrngfld14: TFIBStringField;
    dsCOND_TRIG_AMOUNT_TO_OPER: TDataSource;
    fbntgrfldOperationsID_EFFECT_TYPE: TFIBIntegerField;
    tblEffectTypeOper: TpFIBDataSet;
    fbntgrfld8: TFIBIntegerField;
    fbstrngfld15: TFIBStringField;
    fbstrngfld16: TFIBStringField;
    dsEffectTypeOper: TDataSource;
    fbstrngfldOperationsKN_EFFECT_TYPE: TFIBStringField;
    fbstrngfldOperationsN_EFFECT_TYPE: TFIBStringField;
    fbntgrfldConditionsID_EFFECT_TYPE: TFIBIntegerField;
    dbnvgrL: TDBNavigator;
    fbstrngfldObjectsOBJECT_VALUE: TFIBStringField;
    scrlbxConditions: TsScrollBox;
    pgctrlCondition: TsPageControl;
    tbConditionMain: TsTabSheet;
    grpConditionCond: TsGroupBox;
    grpConditionMain: TsGroupBox;
    lbl35: TLabel;
    lbl36: TLabel;
    lcbID_EFFECT_TYPE: TDBLookupComboboxEh;
    edORDER_LINE: TDBNumberEditEh;
    grpConditionUnit: TsGroupBox;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lcbCONDITION_TYPE: TDBLookupComboboxEh;
    dbEditCODE_UNIT: TDBEditEh;
    dbEditN_UNIT: TDBEditEh;
    dbEditKN_EDIZM_UNIT: TDBEditEh;
    grpConditionCond2: TsGroupBox;
    grpDrawdown: TsGroupBox;
    grpDrawdownAmount: TsGroupBox;
    lbl26: TLabel;
    lbl27: TLabel;
    lcbCOND_TRIG_AMOUNT_FROM: TDBLookupComboboxEh;
    edTRIG_AMOUNT_FROM: TDBNumberEditEh;
    lcbCOND_TRIG_AMOUNT_TO: TDBLookupComboboxEh;
    edTRIG_AMOUNT_TO: TDBNumberEditEh;
    grpConditionAmountHint: TsGroupBox;
    lbl30: TLabel;
    lbl31: TLabel;
    lcbCOND_HINT_AMOUNT_FROM: TDBLookupComboboxEh;
    edHINT_AMOUNT_FROM: TDBNumberEditEh;
    lcbCOND_HINT_AMOUNT_TO: TDBLookupComboboxEh;
    edHINT_AMOUNT_TO: TDBNumberEditEh;
    grp1: TsGroupBox;
    grpConditionHintSUM: TsGroupBox;
    lbl32: TLabel;
    lbl33: TLabel;
    lcbCOND_HINT_SUM_FROM: TDBLookupComboboxEh;
    edHINT_SUM_FROM: TDBNumberEditEh;
    lcbCOND_HINT_SUM_TO: TDBLookupComboboxEh;
    edHINT_SUM_TO: TDBNumberEditEh;
    grpDrawdownSUM: TsGroupBox;
    lbl28: TLabel;
    lbl29: TLabel;
    lcbCOND_TRIG_SUM_FROM: TDBLookupComboboxEh;
    edTRIG_SUM_FROM: TDBNumberEditEh;
    lcbCOND_TRIG_SUM_TO: TDBLookupComboboxEh;
    edTRIG_SUM_TO: TDBNumberEditEh;
    scrlbxOperations: TsScrollBox;
    pgctrlOperation: TsPageControl;
    tbOperationMain: TsTabSheet;
    grpOperationConditions: TsGroupBox;
    grpOperationObject: TsGroupBox;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    lcbCONDITION_TYPE_OPER: TDBLookupComboboxEh;
    dbEditCODE_UNIT_OPER: TDBEditEh;
    dbEditN_UNIT_OPER: TDBEditEh;
    dbEditKN_EDIZM_UNIT_OPER: TDBEditEh;
    sGroupBox1: TsGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    lcbID_EFFECT_TYPE2: TDBLookupComboboxEh;
    DBNumberEditEh1: TDBNumberEditEh;
    grp7: TsGroupBox;
    grp8: TsGroupBox;
    lbl47: TLabel;
    lbl48: TLabel;
    lcbCOND_TRIG_AMOUNT_FROM_OPER: TDBLookupComboboxEh;
    edTRIG_AMOUNT_FROM_OPER: TDBNumberEditEh;
    lcbCOND_TRIG_AMOUNT_TO_OPER: TDBLookupComboboxEh;
    edTRIG_AMOUNT_TO_OPER: TDBNumberEditEh;
    grp9: TsGroupBox;
    lbl49: TLabel;
    lcbOPERATION_TYPE: TDBLookupComboboxEh;
    edTRIG_PRICE: TDBNumberEditEh;
    pgctrlMain: TsPageControl;
    tbActionShedule: TsTabSheet;
    grpActionSheduler: TsGroupBox;
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
    tbActionRecepients: TsTabSheet;
    grpActionReceiver: TsGroupBox;
    tlbGrid: TToolBar;
    btnRefreshRec: TToolButton;
    btn2: TToolButton;
    btnEditRec: TToolButton;
    btn3: TToolButton;
    btnDelRec: TToolButton;
    btn1: TToolButton;
    DBGridRecepients: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure edtSCH_1_FROMChange(Sender: TObject);
    procedure btnAddConditionsClick(Sender: TObject);
    procedure btnOkConditionClick(Sender: TObject);
    procedure btnCancelConditionClick(Sender: TObject);
    procedure tblConditionsNewRecord(DataSet: TDataSet);
    procedure lcbCOND_TRIG_AMOUNT_FROMNotInList(Sender: TObject; NewText: string;
      var RecheckInList: Boolean);
    procedure DBGridConditionsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure lcbCONDITION_TYPEChange(Sender: TObject);
    procedure btnDeleteConditionsClick(Sender: TObject);
    procedure btnDelRecClick(Sender: TObject);
    procedure btnRefreshRecClick(Sender: TObject);
    procedure btnRefreshConditionsClick(Sender: TObject);
    procedure btnEditRecClick(Sender: TObject);
    procedure btnRefreshOperationClick(Sender: TObject);
    procedure btnDeleteOperationClick(Sender: TObject);
    procedure btnAddOperationClick(Sender: TObject);
    procedure btnEditConditionsClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure tblOperationsNewRecord(DataSet: TDataSet);
    procedure DBGridOperationsGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnEditOperationClick(Sender: TObject);
    procedure btnRefreshPayTypeClick(Sender: TObject);
    procedure btnDeletePayTypeClick(Sender: TObject);
    procedure btnEditPayTypeClick(Sender: TObject);
    procedure dbEditCODE_UNITEditButtons0Click(Sender: TObject; var Handled: Boolean);
    procedure btnEditObjClick(Sender: TObject);
    procedure btnRefreshObjClick(Sender: TObject);
    procedure btnDeleteObjClick(Sender: TObject);
    procedure dbEditCODE_UNIT_OPEREditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridConditionsGetBtnParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; var SortMarker: TSortMarkerEh;
      IsDown: Boolean);
    procedure DBGridOperationsGetBtnParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; var SortMarker: TSortMarkerEh;
      IsDown: Boolean);
    procedure lcbCOND_TRIG_AMOUNT_FROMChange(Sender: TObject);
    procedure lcbCOND_TRIG_AMOUNT_TOChange(Sender: TObject);
    procedure lcbCOND_TRIG_SUM_FROMChange(Sender: TObject);
    procedure lcbCOND_TRIG_SUM_TOChange(Sender: TObject);
    procedure lcbCOND_HINT_AMOUNT_FROMChange(Sender: TObject);
    procedure lcbCOND_HINT_AMOUNT_TOChange(Sender: TObject);
    procedure lcbCOND_HINT_SUM_FROMChange(Sender: TObject);
    procedure lcbCOND_HINT_SUM_TOChange(Sender: TObject);
    procedure tblConditionsBeforePost(DataSet: TDataSet);
    procedure lcbCONDITION_TYPE_OPERChange(Sender: TObject);
    procedure tblOperationsBeforePost(DataSet: TDataSet);
    procedure lcbCOND_TRIG_AMOUNT_FROM_OPERChange(Sender: TObject);
    procedure lcbCOND_TRIG_AMOUNT_TO_OPERChange(Sender: TObject);
    procedure edTRIG_AMOUNT_FROMExit(Sender: TObject);
    procedure dbEditNUM_TABExit(Sender: TObject);
    procedure scrlbxConditionsMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure scrlbxConditionsMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    fCaption: string;
    function SaveAction(): HRESULT;
    function CheckAction(): HRESULT;
    function CheckCondition: Boolean;
    function CheckOperation: Boolean;
    function CheckEditDataSets(): Boolean;
    procedure OpenDataSets();
    procedure SelectConditionTypeFromRef(ADataSet: TpFibDataSet);
    procedure SetFieldsCondition(ACondition: Integer);
    procedure SetFieldsOperation(ACondition: Integer);

    procedure DBGridOperationsColumns0DataHintShow(Sender: TCustomDBGridEh;
      CursorPos: TPoint; Cell: TGridCoord; InCellCursorPos: TPoint; Column: TColumnEh;
      var Params: TDBGridEhDataHintParams; var Processed: Boolean);

  public
    constructor Create2(AOwner: TComponent);
  end;

const
  cID_ACTION_EMPTY                           = 0;

var
  FormEditAction                             : TFormEditAction;

implementation

uses
  frmMain,
  frmSelectFromList,
  frmSelectFromTreeList4,
  frmActionSelectGoods,
  Data_DIR,
  FWConsts,
  uActionsConst,
  frmActions;

{$R *.dfm}

procedure TFormEditAction.SetFieldsOperation(ACondition: Integer);
begin
  case ACondition of
    cCONDITION_TYPE_SUM:
      begin
        lcbCOND_TRIG_AMOUNT_TO_OPER.Enabled := False;
        edTRIG_AMOUNT_TO_OPER.Enabled := False;
        lbl48.Enabled := False;

        with lcbCOND_TRIG_AMOUNT_FROM_OPER do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LAGER_0;

        with edTRIG_AMOUNT_FROM_OPER do
          DataSource.DataSet.FieldByName(DataField).Value := 0;

        with lcbCOND_TRIG_AMOUNT_TO_OPER do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LESS;

        with edTRIG_AMOUNT_TO_OPER do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
      end;
  else
    begin
      lcbCOND_TRIG_AMOUNT_TO_OPER.Enabled := True;
      edTRIG_AMOUNT_TO_OPER.Enabled := True;
      lbl48.Enabled := True;
    end;
  end;
end;

procedure TFormEditAction.SetFieldsCondition(ACondition: Integer);
begin
  case ACondition of
    cCONDITION_TYPE_SUM, cCONDITION_TYPE_GROUP:
      begin
        lcbCOND_TRIG_AMOUNT_FROM.Enabled := False;
        edTRIG_AMOUNT_FROM.Enabled := False;
        lbl26.Enabled := False;

        lcbCOND_TRIG_AMOUNT_TO.Enabled := False;
        edTRIG_AMOUNT_TO.Enabled := False;
        lbl27.Enabled := False;

        lcbCOND_HINT_AMOUNT_FROM.Enabled := False;
        edHINT_AMOUNT_FROM.Enabled := False;
        lbl30.Enabled := False;

        lcbCOND_HINT_AMOUNT_TO.Enabled := False;
        edHINT_AMOUNT_TO.Enabled := False;
        lbl31.Enabled := False;

        with lcbCOND_TRIG_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LAGER_0;

        with edTRIG_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;

        with lcbCOND_TRIG_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LESS_oo;

        with edTRIG_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;

        with lcbCOND_HINT_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LAGER_0;

        with edHINT_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;

        with lcbCOND_HINT_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).AsInteger := cCONDITION_LESS_oo;

        with edHINT_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;

      end;
  else
    begin
      lcbCOND_TRIG_AMOUNT_FROM.Enabled := True;
      edTRIG_AMOUNT_FROM.Enabled := True;
      lbl26.Enabled := True;

      lcbCOND_TRIG_AMOUNT_TO.Enabled := True;
      edTRIG_AMOUNT_TO.Enabled := True;
      lbl27.Enabled := True;

      lcbCOND_HINT_AMOUNT_FROM.Enabled := True;
      edHINT_AMOUNT_FROM.Enabled := True;
      lbl30.Enabled := True;

      lcbCOND_HINT_AMOUNT_TO.Enabled := True;
      edHINT_AMOUNT_TO.Enabled := True;
      lbl31.Enabled := True;

    end;
  end;

end;

constructor TFormEditAction.Create2(AOwner: TComponent);
begin
  inherited Create(AOwner);

  btnOk.Visible := False;
  tlbGrid.Visible := False;
  toolbrCondition.Visible := False;
  toolbrOperation.Visible := False;
  toolbrPayTypes.Visible := False;
  toolbrObjects.Visible := False;
  grpActionMain.Enabled := False;
  grpActionSheduler.Enabled := False;
end;

function TFormEditAction.CheckEditDataSets(): Boolean;
begin
  Result := False;

  if tblConditions.State <> dsBrowse then
  begin
    MsgBoxEx(Application.Title, _('Не завершено сохранение Условия'), MB_OK + MB_ICONERROR);
    pgctrlActionList.ActivePage := tbConditions;
    Exit;
  end;

  if tblOperations.State <> dsBrowse then
  begin
    MsgBoxEx(Application.Title, _('Не завершено сохранение Операций'), MB_OK + MB_ICONERROR);
    pgctrlActionList.ActivePage := tbOperations;
    Exit;
  end;

  Result := True;
end;

procedure TFormEditAction.DBGridConditionsGetBtnParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; var SortMarker: TSortMarkerEh; IsDown: Boolean);
begin
  
    if (Column.FieldName = 'N_COND_TRIG_AMOUNT_FROM') or (Column.FieldName = 'TRIG_AMOUNT_FROM') then
    begin
      Background := clInfoBk;
    end
    else
      if (Column.FieldName = 'N_COND_TRIG_AMOUNT_TO') or (Column.FieldName = 'TRIG_AMOUNT_TO') then
      begin
        Background := clInfoBk;
      end
      else
        if (Column.FieldName = 'N_COND_TRIG_SUM_FROM') or (Column.FieldName = 'TRIG_SUM_FROM') then
        begin
          Background := clGradientInactiveCaption;
        end
        else
          if (Column.FieldName = 'N_COND_TRIG_SUM_TO') or (Column.FieldName = 'TRIG_SUM_TO') then
          begin
            Background := clGradientInactiveCaption;
          end
          else
            if (Column.FieldName = 'N_COND_HINT_AMOUNT_FROM') or (Column.FieldName = 'HINT_AMOUNT_FROM') then
            begin
              Background := clInfoBk;
            end
            else
              if (Column.FieldName = 'N_COND_HINT_AMOUNT_TO') or (Column.FieldName = 'HINT_AMOUNT_TO') then
              begin
                Background := clInfoBk;
              end
              else
                if (Column.FieldName = 'N_COND_HINT_SUM_FROM') or (Column.FieldName = 'HINT_SUM_FROM') then
                begin
                  Background := clGradientInactiveCaption;
                end
                else
                  if (Column.FieldName = 'N_COND_HINT_SUM_TO') or (Column.FieldName = 'HINT_SUM_TO') then
                  begin
                    Background := clGradientInactiveCaption;
                  end
                  else
                    if (Column.FieldName = 'N_EFFECT_TYPE') then
                    begin
                      AFont.Style := AFont.Style + [fsBold];
                    end;
                   
end;

procedure TFormEditAction.DBGridConditionsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  
    case DBGridConditions.DataSource.DataSet.FieldByName('ID_EFFECT_TYPE').AsInteger of
      cEFFECT_TYPE_PLUS: Background := $00C4FFFF;
      cEFFECT_TYPE_AND: Background := $00F9D8D2;
      cEFFECT_TYPE_MINUS: Background := $00A4B3F7;
    end;

    if (Column.FieldName = 'N_COND_TRIG_AMOUNT_FROM') or (Column.FieldName = 'TRIG_AMOUNT_FROM') then
    begin
      Background := clInfoBk;
    end
    else
      if (Column.FieldName = 'N_COND_TRIG_AMOUNT_TO') or (Column.FieldName = 'TRIG_AMOUNT_TO') then
      begin
        Background := clInfoBk;
      end
      else
        if (Column.FieldName = 'N_COND_TRIG_SUM_FROM') or (Column.FieldName = 'TRIG_SUM_FROM') then
        begin
          Background := clGradientInactiveCaption;
        end
        else
          if (Column.FieldName = 'N_COND_TRIG_SUM_TO') or (Column.FieldName = 'TRIG_SUM_TO') then
          begin
            Background := clGradientInactiveCaption;
          end
          else
            if (Column.FieldName = 'N_COND_HINT_AMOUNT_FROM') or (Column.FieldName = 'HINT_AMOUNT_FROM') then
            begin
              Background := clInfoBk;
            end
            else
              if (Column.FieldName = 'N_COND_HINT_AMOUNT_TO') or (Column.FieldName = 'HINT_AMOUNT_TO') then
              begin
                Background := clInfoBk;
              end
              else
                if (Column.FieldName = 'N_COND_HINT_SUM_FROM') or (Column.FieldName = 'HINT_SUM_FROM') then
                begin
                  Background := clGradientInactiveCaption;
                end
                else
                  if (Column.FieldName = 'N_COND_HINT_SUM_TO') or (Column.FieldName = 'HINT_SUM_TO') then
                  begin
                    Background := clGradientInactiveCaption;
                  end;
  
end;

procedure TFormEditAction.DBGridOperationsGetBtnParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; var SortMarker: TSortMarkerEh; IsDown: Boolean);
begin
  
    if (Column.FieldName = 'N_COND_TRIG_AMOUNT_FROM') or (Column.FieldName = 'TRIG_AMOUNT_FROM') then
    begin
      Background := clInfoBk;
    end
    else
      if (Column.FieldName = 'N_COND_TRIG_AMOUNT_TO') or (Column.FieldName = 'TRIG_AMOUNT_TO') then
      begin
        Background := clInfoBk;
      end
      else
        if (Column.FieldName = 'N_EFFECT_TYPE') then
        begin
          AFont.Style := AFont.Style + [fsBold];
        end;
       
end;

procedure TFormEditAction.DBGridOperationsGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  
    case DBGridOperations.DataSource.DataSet.FieldByName('ID_EFFECT_TYPE').AsInteger of
      cEFFECT_TYPE_PLUS: Background := $00C4FFFF;
      cEFFECT_TYPE_AND: Background := $00F9D8D2;
      cEFFECT_TYPE_MINUS: Background := $00A4B3F7;
    end;

    if (Column.FieldName = 'N_COND_TRIG_AMOUNT_FROM') or (Column.FieldName = 'TRIG_AMOUNT_FROM') then
    begin
      Background := clInfoBk;
    end
    else
      if (Column.FieldName = 'N_COND_TRIG_AMOUNT_TO') or (Column.FieldName = 'TRIG_AMOUNT_TO') then
      begin
        Background := clInfoBk;
      end
      else
        if (Column.FieldName = 'TRIG_PRICE') then
        begin
          with tblOperations do
            if (FieldByName('TRIG_PRICE').AsCurrency > 0) and
              ((FieldByName('ID_OPERATION_TYPE').AsInteger = Integer(notPROCENT))
              or
              (FieldByName('ID_OPERATION_TYPE').AsInteger = Integer(notDELTA))
              ) then
              Background := $0099CCFF;
          Column.ToolTips := True;

        end;
  
end;

function TFormEditAction.CheckOperation: Boolean;
begin
  Result := not pnlOperationEdit.Visible;
  if pnlOperationEdit.Visible then
    with tblOperations do
    begin
      if FieldByName('ID_CONDITION_TYPE').IsNull then
      begin
        pgctrlOperation.ActivePage := tbOperationMain;
        lcbCONDITION_TYPE_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Объект->Тип'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_CONDITION_TYPE').AsInteger = cCONDITION_TYPE_SUM then
      begin
        if RecordCount > iif(State = dsInsert, 0, 1) then
        begin
          pgctrlOperation.ActivePage := tbOperationMain;
          lcbCONDITION_TYPE_OPER.SetFocus;
          MsgBoxEx(Application.Title, _('Тип действия Сумма должна быть единственной записью.'), MB_OK + MB_ICONERROR);
          Exit;
        end;
      end
      else
      begin
        with TpFIBDataSet.Create(nil) do
        try
          Database := FormMain.DatabaseFW;
          SQLs.SelectSQL.Add('SELECT ALA.ID_ACTION_LINES_ACT ');
          SQLs.SelectSQL.Add('FROM ACT_ACTION_LINES_ACT ALA ');
          SQLs.SelectSQL.Add('WHERE ALA.ID_ACTION = :ID_ACTION ');
          SQLs.SelectSQL.Add('AND ALA.ID_CONDITION_TYPE = :ID_CONDITION_TYPE');
          if tblOperations.State = dsEdit then
          begin
            SQLs.SelectSQL.Add('AND ALA.ID_ACTION_LINES_ACT <> :ID_ACTION_LINES_ACT');
            ParamByName('ID_ACTION_LINES_ACT').AsInteger := tblOperations.FieldByName('ID_ACTION_LINES_ACT').AsInteger;
          end;

          ParamByName('ID_CONDITION_TYPE').AsInteger := cCONDITION_TYPE_SUM;
          ParamByName('ID_ACTION').AsInteger := ckbxIsActive.DataSource.DataSet.FieldByName('ID_ACTION').AsInteger;

          Open;

          if not IsEmpty then
          begin
            pgctrlOperation.ActivePage := tbOperationMain;
            lcbCONDITION_TYPE_OPER.SetFocus;
            MsgBoxEx(Application.Title, _('Уже существует тип действия Сумма и она должна быть единственной записью.'), MB_OK + MB_ICONERROR);
            Exit;
          end;

        finally
          Close;
          Free;
        end;

      end;

      SetFieldsOperation(FieldByName('ID_CONDITION_TYPE').AsInteger);

      if Trim(dbEditCODE_UNIT_OPER.Text) = '' then
      begin
        pgctrlOperation.ActivePage := tbOperationMain;
        dbEditCODE_UNIT_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Введите СОбъект'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_COND_TRIG_AMOUNT_FROM').IsNull then
      begin
        lcbCOND_TRIG_AMOUNT_FROM_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Количество->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_AMOUNT_FROM_OPER.Text) = '' then
      begin
        edTRIG_AMOUNT_FROM_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Количество->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_COND_TRIG_AMOUNT_TO').IsNull then
      begin
        lcbCOND_TRIG_AMOUNT_TO_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Количество->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_AMOUNT_TO_OPER.Text) = '' then
      begin
        edTRIG_AMOUNT_TO_OPER.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Количество->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_PRICE.Text) = '' then
      begin
        edTRIG_PRICE.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Цена->Значение'), MB_OK + MB_ICONERROR);
        Exit;
      end;

    end;
  Result := True;
end;

function TFormEditAction.CheckCondition: Boolean;
begin
  Result := not pnlCondition.Visible;
  if pnlCondition.Visible then
    with tblConditions do
    begin
      if FieldByName('ID_EFFECT_TYPE').IsNull then
      begin
        pgctrlCondition.ActivePage := tbConditionMain;
        lcbID_EFFECT_TYPE.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Влияние'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edORDER_LINE.Text) = '' then
      begin
        pgctrlCondition.ActivePage := tbConditionMain;
        edORDER_LINE.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Количество->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_CONDITION_TYPE').IsNull then
      begin
        pgctrlCondition.ActivePage := tbConditionMain;
        lcbCONDITION_TYPE.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Объект->Тип'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      SetFieldsCondition(FieldByName('ID_CONDITION_TYPE').AsInteger);

      if Trim(dbEditCODE_UNIT.Text) = '' then
      begin
        pgctrlCondition.ActivePage := tbConditionMain;
        dbEditCODE_UNIT.SetFocus;
        MsgBoxEx(Application.Title, _('Введите СОбъект'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_COND_TRIG_AMOUNT_FROM').IsNull then
      begin
        lcbCOND_TRIG_AMOUNT_FROM.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Количество->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_AMOUNT_FROM.Text) = '' then
      begin
        edTRIG_AMOUNT_FROM.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Количество->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_COND_TRIG_AMOUNT_TO').IsNull then
      begin
        lcbCOND_TRIG_AMOUNT_TO.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Количество->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_AMOUNT_TO.Text) = '' then
      begin
        edTRIG_AMOUNT_TO.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Количество->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;
      if FieldByName('ID_COND_TRIG_SUM_FROM').IsNull then
      begin
        lcbCOND_TRIG_SUM_FROM.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Сумма->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_SUM_FROM.Text) = '' then
      begin
        edTRIG_SUM_FROM.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Сумма->От'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if FieldByName('ID_COND_TRIG_SUM_TO').IsNull then
      begin
        lcbCOND_TRIG_SUM_TO.SetFocus;
        MsgBoxEx(Application.Title, _('Выберите Условие Сработка->Сумма->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;

      if Trim(edTRIG_SUM_TO.Text) = '' then
      begin
        edTRIG_SUM_TO.SetFocus;
        MsgBoxEx(Application.Title, _('Введите Сработка->Сумма->До'), MB_OK + MB_ICONERROR);
        Exit;
      end;
    end;
  Result := True;
end;

procedure TFormEditAction.OpenDataSets();
begin
  with ckbxIsActive.DataSource.DataSet do
  try
    with tblRecipients do
    begin
      DisableControls;
      Close;
    end;

    with tblConditions do
    begin
      DisableControls;
      Close;
    end;

    with tblOperations do
    begin
      DisableControls;
      Close;
    end;

    with tblPayType do
    begin
      DisableControls;
      Close;
    end;

    with tblObjects do
    begin
      DisableControls;
      Close;
    end;

    if State = dsInsert then
    begin
      tblRecipients.ParamByName('ID_ACTION').AsInteger := cID_ACTION_EMPTY;
      tblConditions.ParamByName('ID_ACTION').AsInteger := cID_ACTION_EMPTY;
      tblOperations.ParamByName('ID_ACTION').AsInteger := cID_ACTION_EMPTY;
      tblPayType.ParamByName('ID_ACTION').AsInteger := cID_ACTION_EMPTY;
      tblObjects.ParamByName('ID_ACTION').AsInteger := cID_ACTION_EMPTY;
    end
    else
    begin
      tblRecipients.ParamByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
      tblConditions.ParamByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
      tblOperations.ParamByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
      tblPayType.ParamByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
      tblObjects.ParamByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
    end;

  finally
    with tblRecipients do
    begin
      Open;
      EnableControls;
    end;

    with tblConditions do
    begin
      Open;
      EnableControls;
    end;

    with tblOperations do
    begin
      Open;
      EnableControls;
    end;

    with tblPayType do
    begin
      Open;
      EnableControls;
    end;

    with tblObjects do
    begin
      Open;
      EnableControls;
    end;
  end;
end;

function TFormEditAction.CheckAction(): HRESULT;
begin
  Result := S_FALSE;

  with ckbxIsActive.DataSource.DataSet do
  try
    if FieldByName('D_ACTIVE_BEGIN').IsNull then
    begin
      edtD_ACTIVE_BEGIN.SetFocus;
      MsgBoxEx(Application.Title, _('Заполните поле:') + ' ' + _('Начало Акции'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    if FieldByName('D_ACTIVE_END').IsNull then
    begin
      edtD_ACTIVE_END.SetFocus;
      MsgBoxEx(Application.Title, _('Заполните поле:') + ' ' + _('Окончание Акции'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    if FieldByName('D_ACTIVE_END').AsDateTime <= FieldByName('D_ACTIVE_BEGIN').AsDateTime then
    begin
      edtD_ACTIVE_END.SetFocus;
      MsgBoxEx(Application.Title, _('Не верный диапазон дат'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    if {VarIsNull(dbEditN_ACTION.Value)} FieldByName('REMARK').IsNull or
    (Trim(FieldByName('REMARK').AsString) = '') then
    begin
      dbEditREMARK.SetFocus;
      MsgBoxEx(Application.Title, _('Заполните поле:') + ' ' + _('Название полн.'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    if {VarIsNull(dbEditN_ACTION.Value)} FieldByName('N_ACTION').IsNull or
    (Trim(FieldByName('N_ACTION').AsString) = '') then
    begin
      dbEditN_ACTION.SetFocus;
      MsgBoxEx(Application.Title, _('Заполните поле:') + ' ' + _('Название кр.'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    // Шедулер
    if FieldByName('SCH_1_FROM').IsNull or
      FieldByName('SCH_2_FROM').IsNull or
      FieldByName('SCH_3_FROM').IsNull or
      FieldByName('SCH_4_FROM').IsNull or
      FieldByName('SCH_5_FROM').IsNull or
      FieldByName('SCH_6_FROM').IsNull or
      FieldByName('SCH_7_FROM').IsNull or
      FieldByName('SCH_1_TO').IsNull or
      FieldByName('SCH_2_TO').IsNull or
      FieldByName('SCH_3_TO').IsNull or
      FieldByName('SCH_4_TO').IsNull or
      FieldByName('SCH_5_TO').IsNull or
      FieldByName('SCH_6_TO').IsNull or
      FieldByName('SCH_7_TO').IsNull
      then
    begin
      MsgBoxEx(Application.Title, _('Заполните поле в Расписании.'), MB_OK + MB_ICONERROR);
      Exit;
    end;

    if
      (FieldByName('SCH_1_FROM').AsDateTime > FieldByName('SCH_1_TO').AsDateTime) or
      (FieldByName('SCH_2_FROM').AsDateTime > FieldByName('SCH_2_TO').AsDateTime) or
      (FieldByName('SCH_3_FROM').AsDateTime > FieldByName('SCH_3_TO').AsDateTime) or
      (FieldByName('SCH_4_FROM').AsDateTime > FieldByName('SCH_4_TO').AsDateTime) or
      (FieldByName('SCH_5_FROM').AsDateTime > FieldByName('SCH_5_TO').AsDateTime) or
      (FieldByName('SCH_6_FROM').AsDateTime > FieldByName('SCH_6_TO').AsDateTime) or
      (FieldByName('SCH_7_FROM').AsDateTime > FieldByName('SCH_7_TO').AsDateTime)
      then
    begin
      MsgBoxEx(Application.Title, _('Не верный диапазон времени в Расписании.'), MB_OK + MB_ICONERROR);
      Exit;
    end;

  finally

  end;

  Result := S_OK;
end;

function TFormEditAction.SaveAction(): HRESULT;
begin
  Result := S_FALSE;

  with ckbxIsActive.DataSource.DataSet do
  try
    if CheckAction() <> S_OK then Exit;

    if State <> dsBrowse then Post;

    Edit;

    Result := S_OK;
  except

  end;
end;

procedure TFormEditAction.scrlbxConditionsMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  (Sender as TsScrollBox).VertScrollBar.Position := (Sender as TsScrollBox).VertScrollBar.Position + 4;
end;

procedure TFormEditAction.scrlbxConditionsMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  (Sender as TsScrollBox).VertScrollBar.Position := (Sender as TsScrollBox).VertScrollBar.Position - 4;
end;

procedure TFormEditAction.tblConditionsBeforePost(DataSet: TDataSet);
begin
  with DataSet do
    if (State = dsEdit) or (State = dsInsert) then
    begin
      if FieldByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger = cCONDITION_LAGER_0 then
        FieldByName('TRIG_AMOUNT_FROM').AsCurrency := 0;

      if FieldByName('ID_COND_TRIG_AMOUNT_TO').AsInteger = cCONDITION_LESS_oo then
        FieldByName('TRIG_AMOUNT_TO').AsCurrency := 0;

      if FieldByName('ID_COND_TRIG_SUM_FROM').AsInteger = cCONDITION_LAGER_0 then
        FieldByName('TRIG_SUM_FROM').AsCurrency := 0;

      if FieldByName('ID_COND_TRIG_SUM_TO').AsInteger = cCONDITION_LESS_oo then
        FieldByName('TRIG_SUM_TO').AsCurrency := 0;

      if FieldByName('ID_COND_HINT_AMOUNT_FROM').AsInteger = cCONDITION_LAGER_0 then
        FieldByName('HINT_AMOUNT_FROM').AsCurrency := 0;

      if FieldByName('ID_COND_HINT_AMOUNT_TO').AsInteger = cCONDITION_LESS_oo then
        FieldByName('HINT_AMOUNT_TO').AsCurrency := 0;

      if FieldByName('ID_COND_HINT_SUM_FROM').AsInteger = cCONDITION_LAGER_0 then
        FieldByName('HINT_SUM_FROM').AsCurrency := 0;

      if FieldByName('ID_COND_HINT_SUM_TO').AsInteger = cCONDITION_LESS_oo then
        FieldByName('HINT_SUM_TO').AsCurrency := 0;
    end;
end;

procedure TFormEditAction.tblConditionsNewRecord(DataSet: TDataSet);
begin
  with DataSet as TpFIBDataSet do
  begin
    FBN('TRIG_AMOUNT_FROM').AsCurrency := 0;
    FBN('TRIG_AMOUNT_TO').AsCurrency := 0;
    FBN('TRIG_SUM_FROM').AsCurrency := 0;
    FBN('TRIG_SUM_TO').AsCurrency := 0;
    FBN('HINT_AMOUNT_FROM').AsCurrency := 0;
    FBN('HINT_AMOUNT_TO').AsCurrency := 0;
    FBN('HINT_SUM_FROM').AsCurrency := 0;
    FBN('HINT_SUM_TO').AsCurrency := 0;

    FBN('ID_EFFECT_TYPE').AsInteger := cEFFECT_TYPE_PLUS;

    FBN('ID_COND_TRIG_AMOUNT_FROM').AsInteger := cCONDITION_LAGER_0;
    FBN('ID_COND_TRIG_AMOUNT_TO').AsInteger := cCONDITION_LESS_oo;
    FBN('ID_COND_TRIG_SUM_FROM').AsInteger := cCONDITION_LAGER_0;
    FBN('ID_COND_TRIG_SUM_TO').AsInteger := cCONDITION_LESS_oo;
    FBN('ID_COND_HINT_AMOUNT_FROM').AsInteger := cCONDITION_LAGER_0;
    FBN('ID_COND_HINT_AMOUNT_TO').AsInteger := cCONDITION_LESS_oo;
    FBN('ID_COND_HINT_SUM_FROM').AsInteger := cCONDITION_LAGER_0;
    FBN('ID_COND_HINT_SUM_TO').AsInteger := cCONDITION_LESS_oo;

    FBN('ID_CONDITION_TYPE').AsInteger := cCONDITION_TYPE_GOODS;

    FBN('ORDER_LINE').AsCurrency := 0;

    FBN('ID_UNIT').AsInteger := cID_UNIT_NOT_SELECT;
  end;
end;

procedure TFormEditAction.tblOperationsBeforePost(DataSet: TDataSet);
begin
  with DataSet do
    if (State = dsEdit) or (State = dsInsert) then
    begin
      if FieldByName('ID_COND_TRIG_AMOUNT_FROM').AsInteger = cCONDITION_LAGER_0 then
        FieldByName('TRIG_AMOUNT_FROM').AsCurrency := 0;

      if FieldByName('ID_COND_TRIG_AMOUNT_TO').AsInteger = cCONDITION_LESS_oo then
        FieldByName('TRIG_AMOUNT_TO').AsCurrency := 0;
    end;
end;

procedure TFormEditAction.tblOperationsNewRecord(DataSet: TDataSet);
begin
  with DataSet as TpFIBDataSet do
  begin
    FBN('TRIG_AMOUNT_FROM').AsCurrency := 0;
    FBN('TRIG_AMOUNT_TO').AsCurrency := 0;
    FBN('TRIG_PRICE').AsCurrency := 0;
    FBN('ID_COND_TRIG_AMOUNT_FROM').AsInteger := cCONDITION_LAGER_0;
    FBN('ID_COND_TRIG_AMOUNT_TO').AsInteger := cCONDITION_LESS_oo;
    FBN('ID_CONDITION_TYPE').AsInteger := cCONDITION_TYPE_GOODS;
    FBN('ORDER_LINE').AsCurrency := 0;
    FBN('ID_UNIT').AsInteger := cID_UNIT_NOT_SELECT;
    FBN('ID_OPERATION_TYPE').AsInteger := cOPERATION_TYPE_NO;
    FBN('ID_EFFECT_TYPE').AsInteger := cEFFECT_TYPE_AND;
  end;
end;

procedure TFormEditAction.btnDeleteObjClick(Sender: TObject);
begin
  with tblObjects do
    if not IsEmpty then
      if MsgBoxEx(Application.Title, format(_('Удалить Объект [%s] ?'), [FieldByName('N_OBJECTS').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        Delete;
      end;
end;

procedure TFormEditAction.btnDeleteOperationClick(Sender: TObject);
begin
  with tblOperations do
    if not IsEmpty then
      if MsgBoxEx(Application.Title, format(_('Удалить Действие для [%s] ?'), [FieldByName('N_UNIT').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        Delete;
      end;
end;

procedure TFormEditAction.btnDeletePayTypeClick(Sender: TObject);
begin
  with tblPayType do
    if not IsEmpty then
      if MsgBoxEx(Application.Title, format(_('Удалить Вид оплаты [%s] ?'), [FieldByName('N_PAYTYPE_VAR').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        Delete;
      end;
end;

procedure TFormEditAction.btnRefreshObjClick(Sender: TObject);
begin
  tblObjects.CloseOpen(False);
end;

procedure TFormEditAction.btnRefreshOperationClick(Sender: TObject);
begin
  tblOperations.CloseOpen(False);
end;

procedure TFormEditAction.btnRefreshPayTypeClick(Sender: TObject);
begin
  tblPayType.CloseOpen(False);
end;

procedure TFormEditAction.btn4Click(Sender: TObject);
begin
  if CheckOperation then
  begin
    with tblOperations do
    begin
      Post;
    end;

    toolbrOperation.Enabled := True;
    pnlOperationEdit.Visible := False;
    DBGridOperations.Enabled := True;
    DBGridOperations.SetFocus;
  end;
end;

procedure TFormEditAction.btn6Click(Sender: TObject);
begin
  tblOperations.Cancel;

  toolbrOperation.Enabled := True;
  pnlOperationEdit.Visible := False;
  DBGridOperations.Enabled := True;
  DBGridOperations.SetFocus;
end;

procedure TFormEditAction.btnAddConditionsClick(Sender: TObject);
begin
  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();

    tblConditions.Append;
    tblConditions.FieldByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
  end;

  with lcbID_EFFECT_TYPE do
    if not ListSource.DataSet.IsEmpty then
      Text := ListSource.DataSet.FieldByName(ListField).AsString;

  with lcbCONDITION_TYPE do
    if not ListSource.DataSet.IsEmpty then
      Text := ListSource.DataSet.FieldByName(ListField).AsString;

  DBGridConditions.Enabled := False;
  toolbrCondition.Enabled := False;

  pgctrlCondition.ActivePage := tbConditionMain;
  pnlCondition.Visible := True;
  lcbID_EFFECT_TYPE.SetFocus;
end;

procedure TFormEditAction.btnAddOperationClick(Sender: TObject);
begin
  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();

    tblOperations.Append;
    tblOperations.FieldByName('ID_ACTION').AsInteger := FieldByName('ID_ACTION').AsInteger;
  end;

  with lcbCONDITION_TYPE_OPER do
    if not ListSource.DataSet.IsEmpty then
      Text := ListSource.DataSet.FieldByName(ListField).AsString;

  DBGridOperations.Enabled := False;
  toolbrOperation.Enabled := False;

  pgctrlOperation.ActivePage := tbOperationMain;
  pnlOperationEdit.Visible := True;
  lcbID_EFFECT_TYPE2.SetFocus;
end;

procedure TFormEditAction.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormEditAction.btnCancelConditionClick(Sender: TObject);
begin
  tblConditions.Cancel;

  pnlCondition.Visible := False;
  toolbrCondition.Enabled := True;
  DBGridConditions.Enabled := True;
  DBGridConditions.SetFocus;
end;

procedure TFormEditAction.btnDeleteConditionsClick(Sender: TObject);
begin
  with tblConditions do
    if not IsEmpty then
      if MsgBoxEx(Application.Title, format(_('Удалить Условие для [%s] ?'), [FieldByName('N_UNIT').AsString]),
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        Delete;
      end;
end;

procedure TFormEditAction.btnDelRecClick(Sender: TObject);
begin
  with tblRecipients do
    if not IsEmpty then
    begin
      Delete;
    end;
end;

procedure TFormEditAction.btnEditConditionsClick(Sender: TObject);
begin
  with tblConditions do
    if IsEmpty then Exit;

  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();
  end;

  with tblConditions do
    Edit;

  with lcbID_EFFECT_TYPE do
    if not ListSource.DataSet.IsEmpty then
      Text := ListSource.DataSet.FieldByName(ListField).AsString;

  with lcbCONDITION_TYPE do
    if not ListSource.DataSet.IsEmpty then
    begin
      Text := ListSource.DataSet.FieldByName(ListField).AsString;
      SetFieldsCondition(ListSource.DataSet.FieldByName(KeyField).AsInteger);
    end;

  DBGridConditions.Enabled := False;
  toolbrCondition.Enabled := False;

  pgctrlCondition.ActivePage := tbConditionMain;
  pnlCondition.Visible := True;
  lcbID_EFFECT_TYPE.SetFocus;
end;

procedure TFormEditAction.btnEditObjClick(Sender: TObject);
var
  vDataForSelect                             : TDataForSelect;
  aDataRet                                   : TaDataRecords;
  i, id                                      : Integer;
  vIsPresent                                 : Boolean;
begin
  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();

    id := FieldByName('ID_ACTION').AsInteger;
  end;

  FillChar(vDataForSelect, SizeOf(TDataForSelect), 0);
  try
    with vDataForSelect do
    begin
      CaptionForm := _('Выбор Объекта');
      CaptionLeft := _('Доступные');
      CaptionRight := _('Выбранные');

      with tblObjectsNotIn do
      begin
        Close;
        ParamByName('ID_ACTION').AsInteger := id;
        Open;
      end;

      with vDataForSelect.DataLeft do
      begin
        DataSet := tblObjectsNotIn;
        ID_Field := 'ID_OBJECTS';
        Name_Field := 'N_OBJECTS';
        Name_Caption := _('Название');
        Note_Field := 'ID_OBJECTS_TYPE';
        Note_Caption := _('Тип');
      end;

      with vDataForSelect.DataRight do
      begin
        DataSet := tblObjects;
        ID_Field := 'ID_OBJECTS';
        Name_Field := 'N_OBJECTS';
        Name_Caption := _('Название');
        Note_Field := 'ID_OBJECTS_TYPE';
        Note_Caption := _('Тип');

      end;
    end;

    with tblObjects do
      if SelectFromList(vDataForSelect, aDataRet) = mrOK then
      begin
        try
          begin
            DisableControls;
            try
              First;
              while not Eof do
              begin
                vIsPresent := False;
                if Length(aDataRet) > 0 then
                  for i := 0 to Length(aDataRet) - 1 do
                    if aDataRet[i].ID = FieldByName('ID_OBJECTS').AsInteger then vIsPresent := True;

                if not vIsPresent then Delete else Next;
              end;

              if Length(aDataRet) > 0 then
                for i := 0 to Length(aDataRet) - 1 do
                  if not Locate('ID_OBJECTS', aDataRet[i].ID, []) then
                  begin
                    Append;
                    FieldByName('ID_ACTION').AsInteger := id;
                    FieldByName('ID_OBJECTS').AsInteger := aDataRet[i].ID;
                    Post;
                  end;
              begin
                Transaction.StartTransaction;
                ApplyUpdates;
                Transaction.CommitRetaining;

                Refresh;
                First;
              end;
            finally
              EnableControls;
            end;
          end;
        except
          on E: exception do
          begin
            if Transaction.InTransaction then
            begin
              Transaction.RollbackRetaining;
            end;
            ShowMsgExt(format(_('Ошибка сохранения данных: %s'), [E.Message]),
              PChar(Application.Title), MB_OK + MB_ICONSTOP + MB_TOPMOST);
          end;
        end;
      end;
  finally
    tblObjectsNotIn.Close;
  end;

end;

procedure TFormEditAction.btnEditOperationClick(Sender: TObject);
begin
  with tblOperations do
    if IsEmpty then Exit;

  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();
  end;

  with tblOperations do
    Edit;

  with lcbCONDITION_TYPE_OPER do
    if not ListSource.DataSet.IsEmpty then
    begin
      Text := ListSource.DataSet.FieldByName(ListField).AsString;
      SetFieldsOperation(ListSource.DataSet.FieldByName(KeyField).AsInteger);
    end;

  DBGridOperations.Enabled := False;
  toolbrOperation.Enabled := False;

  pgctrlOperation.ActivePage := tbOperationMain;
  pnlOperationEdit.Visible := True;
  lcbID_EFFECT_TYPE2.SetFocus;
end;

procedure TFormEditAction.btnEditPayTypeClick(Sender: TObject);
var
  vDataForSelect                             : TDataForSelect;
  aDataRet                                   : TaDataRecords;
  i, id                                      : Integer;
  vIsPresent                                 : Boolean;
begin
  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();

    id := FieldByName('ID_ACTION').AsInteger;
  end;

  FillChar(vDataForSelect, SizeOf(TDataForSelect), 0);
  try
    with vDataForSelect do
    begin
      CaptionForm := _('Выбор Вида оплаты');
      CaptionLeft := _('Доступные');
      CaptionRight := _('Выбранные');

      with tbltblPayTypeNotIn do
      begin
        Close;
        ParamByName('ID_ACTION').AsInteger := id;
        Open;
      end;

      with vDataForSelect.DataLeft do
      begin
        DataSet := tbltblPayTypeNotIn;
        ID_Field := 'ID_PAYTYPE_VAR';
        Name_Field := 'N_PAYTYPE_VAR';
      end;

      with vDataForSelect.DataRight do
      begin
        DataSet := tblPayType;
        ID_Field := 'ID_PAYTYPE_VAR';
        Name_Field := 'N_PAYTYPE_VAR';
      end;
    end;

    with tblPayType do
      if SelectFromList(vDataForSelect, aDataRet) = mrOK then
      begin
        try
          begin
            DisableControls;
            try
              First;
              while not Eof do
              begin
                vIsPresent := False;
                if Length(aDataRet) > 0 then
                  for i := 0 to Length(aDataRet) - 1 do
                    if aDataRet[i].ID = FieldByName('ID_PAYTYPE_VAR').AsInteger then vIsPresent := True;

                if not vIsPresent then Delete else Next;
              end;

              if Length(aDataRet) > 0 then
                for i := 0 to Length(aDataRet) - 1 do
                  if not Locate('ID_PAYTYPE_VAR', aDataRet[i].ID, []) then
                  begin
                    Append;
                    FieldByName('ID_ACTION').AsInteger := id;
                    FieldByName('ID_PAYTYPE_VAR').AsInteger := aDataRet[i].ID;
                    Post;
                  end;
              begin
                Transaction.StartTransaction;
                ApplyUpdates;
                Transaction.CommitRetaining;

                Refresh;
                First;
              end;
            finally
              EnableControls;
            end;
          end;
        except
          on E: exception do
          begin
            if Transaction.InTransaction then
            begin
              Transaction.RollbackRetaining;
            end;
            ShowMsgExt(format(_('Ошибка сохранения данных: %s'), [E.Message]),
              PChar(Application.Title), MB_OK + MB_ICONSTOP + MB_TOPMOST);
          end;
        end;
      end;
  finally
    tbltblPayTypeNotIn.Close;
  end;

end;

procedure TFormEditAction.btnEditRecClick(Sender: TObject);
var
  vDataForSelect                             : TDataForSelect;
  aDataRet                                   : TaDataRecords;
  i, id                                      : Integer;
  vIsPresent                                 : Boolean;
begin
  with ckbxIsActive.DataSource.DataSet do
  begin
    if State = dsInsert then
      if SaveAction() <> S_OK then
        Exit
      else
        OpenDataSets();

    id := FieldByName('ID_ACTION').AsInteger;
  end;

  FillChar(vDataForSelect, SizeOf(TDataForSelect), 0);
  try
    with vDataForSelect do
    begin
      CaptionForm := _('Выбор получателя');
      CaptionLeft := _('Доступные');
      CaptionRight := _('Выбранные');

      with tblRecipientsNotIn do
      begin
        Close;
        ParamByName('ID_ACTION').AsInteger := id;
        Open;
      end;

      with vDataForSelect.DataLeft do
      begin
        DataSet := tblRecipientsNotIn;
        ID_Field := 'ID_DEPARTMENTS';
        Name_Field := 'N_DEPARTMENTS';
      end;

      with vDataForSelect.DataRight do
      begin
        DataSet := tblRecipients;
        ID_Field := 'ID_DEPARTMENT';
        Name_Field := 'N_DEPARTMENTS';
      end;
    end;

    with tblRecipients do
      if SelectFromList(vDataForSelect, aDataRet) = mrOK then
      begin
        try
          begin
            DisableControls;
            try
              First;
              while not Eof do
              begin
                vIsPresent := False;
                if Length(aDataRet) > 0 then
                  for i := 0 to Length(aDataRet) - 1 do
                    if aDataRet[i].ID = FieldByName('ID_DEPARTMENT').AsInteger then vIsPresent := True;

                if not vIsPresent then Delete else Next;
              end;

              if Length(aDataRet) > 0 then
                for i := 0 to Length(aDataRet) - 1 do
                  if not Locate('ID_DEPARTMENT', aDataRet[i].ID, []) then
                  begin
                    Append;
                    FieldByName('ID_ACTION').AsInteger := id;
                    FieldByName('ID_DEPARTMENT').AsInteger := aDataRet[i].ID;
                    Post;
                  end;
              begin
                Transaction.StartTransaction;
                ApplyUpdates;
                Transaction.CommitRetaining;

                Refresh;
                First;
              end;
            finally
              EnableControls;
            end;
          end;
        except
          on E: exception do
          begin
            if Transaction.InTransaction then
            begin
              Transaction.RollbackRetaining;
            end;
            ShowMsgExt(format(_('Ошибка сохранения данных: %s'), [E.Message]),
              PChar(Application.Title), MB_OK + MB_ICONSTOP + MB_TOPMOST);
          end;
        end;
      end;
  finally
    tblRecipientsNotIn.Close;
  end;
end;

procedure TFormEditAction.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFormEditAction.btnOkConditionClick(Sender: TObject);
begin
  if CheckCondition then
  begin
    with tblConditions do
    begin
      Post;
    end;
    pnlCondition.Visible := False;
    toolbrCondition.Enabled := True;
    DBGridConditions.Enabled := True;
    DBGridConditions.SetFocus;
  end;
end;

procedure TFormEditAction.btnRefreshConditionsClick(Sender: TObject);
begin
  tblConditions.CloseOpen(False);
end;

procedure TFormEditAction.btnRefreshRecClick(Sender: TObject);
begin
  tblRecipients.CloseOpen(False);
end;

procedure TFormEditAction.edTRIG_AMOUNT_FROMExit(Sender: TObject);
begin
  with (Sender as TDBNumberEditEh) do
  begin
    if Trim(Text) <> '' then
    begin
      if Value < 0 then
        Value := 0;
    end
    else
      Value := 0;
  end;
end;

procedure TFormEditAction.edtSCH_1_FROMChange(Sender: TObject);
begin
      with (Sender as TDBDateTimeEditEh) do
        with DataSource.DataSet.FieldByName(DataField) do
        begin
          if (not IsNull) and (AsString <> '00:00:00') then
          begin
            Font.Color := clRed else Font.Color := clNavy;
          end;
        end;
end;

procedure TFormEditAction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormEditAction := nil;
  inherited;
end;

procedure TFormEditAction.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOK then
  begin
    CanClose := False;
    if (CheckAction() = S_OK) and CheckEditDataSets() then
      CanClose := True;
  end;

  inherited;
end;

procedure TFormEditAction.FormCreate(Sender: TObject);
var
  i                                          : Integer;

begin
  TranslateComponent(Self);
  edtD_ACTIVE_BEGIN.EditFormat := 'dd.mm.yyyy';
  edtD_ACTIVE_END.EditFormat := 'dd.mm.yyyy';

  tbPayType.TabVisible := False;
  pgctrlActionList.ActivePage := tbConditions;
  pgctrlCondition.ActivePage := tbConditionMain;
  pgctrlMain.ActivePageIndex := 0;

  inherited;

  fCaption := Caption;

  stat1.Visible := False;
end;

procedure TFormEditAction.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if Key = VK_SPACE then
  begin
    if DBGridConditions.Focused then btnEditConditions.Click;
    if DBGridOperations.Focused then btnEditOperation.Click;
    if DBGridActionObjects.Focused then btnEditObj.Click;
    if DBGridActionPayType.Focused then btnEditPayType.Click;
  end
  else
    if Key = VK_DELETE then
    begin
      if DBGridConditions.Focused then btnDeleteConditions.Click;
      if DBGridOperations.Focused then btnDeleteOperation.Click;
      if DBGridActionObjects.Focused then btnDeleteObj.Click;
      if DBGridActionPayType.Focused then btnDeletePayType.Click;
    end;

end;

procedure TFormEditAction.FormShow(Sender: TObject);
var
 i : Integer;
begin
  DM_DIR.SetLabelFields_Recipients(tblRecipients);
  DM_DIR.SetLabelFields_Conditions(tblConditions);
  DM_DIR.SetLabelFields_Operations(tblOperations);
  DM_DIR.SetLabelFields_ActionPayType(tblPayType);
  DM_DIR.SetLabelFields_ActionGoods(tblGoods);
  DM_DIR.SetLabelFields_ActionObjects(tblObjects);

  //
  inherited;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if self.Components[i] is TDBLookupComboboxEh then
      (self.Components[i] as TDBLookupComboboxEh).DropDownBox.SpecRow.Visible := False;

    if self.Components[i] is TDBGridEh then
      with (self.Components[i] as TDBGridEh) do
      begin
        STFilter.Visible := False;
        OptionsEh := OptionsEh + [dghShowRecNo] - [dghIncSearch, dghPreferIncSearch];

        with EmptyDataInfo do
        begin
          Active := True;
          Text := _('Нет данных');
          Font.Style := [fsItalic];
          Font.Size := 10;
        end;
      end;
  end;

  with ckbxIsActive.DataSource.DataSet do
  begin
    dbEditN_ACTION.MaxLength := 36;     // Промский
    dbEditREMARK.MaxLength := FieldByName('REMARK').Size;

    if State = dsEdit then
      Caption := fCaption + ' ' + '№' + ' ' + FieldByName('NUM_ACTION').AsString;
  end;

  tblCOND_TRIG_AMOUNT_FROM.Open;

  //  ------ FROM -----------------------------------------------------------------------
  with tblCOND_TRIG_AMOUNT_FROM do
  begin
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LESS_oo);
    Filtered := True;
  end;

  with tblCOND_HINT_AMOUNT_FROM do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LESS_oo);
    Filtered := True;
  end;

  with tblCOND_TRIG_SUM_FROM do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LESS_oo);
    Filtered := True;
  end;

  with tblCOND_HINT_SUM_FROM do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LESS_oo);
    Filtered := True;
  end;

  // ---- TO  ----------------------------------------------------------------------------
  with tblCOND_TRIG_AMOUNT_TO do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER_0);
    Filtered := True;
  end;

  with tblCOND_TRIG_SUM_TO do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER_0);
    Filtered := True;
  end;

  with tblCOND_HINT_AMOUNT_TO do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER_0);
    Filtered := True;
  end;

  with tblCOND_HINT_SUM_TO do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER_0);
    Filtered := True;
  end;

  with tblCOND_TRIG_AMOUNT_TO_OPER do
  begin
    OpenAsClone(tblCOND_TRIG_AMOUNT_FROM);
    Filter := 'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER_0) +
    ' AND  ' +
      'ID_CONDITION<>' + IntToStr(cCONDITION_LAGER);

    Filtered := True;
  end;

  tblEffectType.Open;

  with tblEffectTypeOper do
  begin
    OpenAsClone(tblEffectType);
    Filter := 'ID_EFFECT_TYPE<>' + IntToStr(cEFFECT_TYPE_PLUS);
    Filtered := True;
  end;

  tblConditionType.Open;
  tblOperationType.Open;

  OpenDataSets();

  DBGridConditions.SortLocal := True;

  with DBGridOperations do
  begin

    if Assigned(DataSource.DataSet.FindField('TRIG_PRICE')) then
      with FieldColumns['TRIG_PRICE'] do
      begin
        OnDataHintShow := DBGridOperationsColumns0DataHintShow;
      end;
  end;

  with DBGridActionObjects do
  begin
    ReadOnly := False;

    AllowedOperations := AllowedOperations + [alopUpdateEh];
    Options := Options + [dgEditing];

    if Assigned(DataSource.DataSet.FindField('OBJECT_VALUE')) then
      with FieldColumns['OBJECT_VALUE'] do
      begin
        ReadOnly := False;
      end;

    if Assigned(DataSource.DataSet.FindField('ID_ACTION_OBJECTS')) then
      with FieldColumns['ID_ACTION_OBJECTS'] do
      begin
        ReadOnly := True;
      end;

    if Assigned(DataSource.DataSet.FindField('ID_ACTION')) then
      with FieldColumns['ID_ACTION'] do
      begin
        ReadOnly := True;
      end;

    if Assigned(DataSource.DataSet.FindField('ID_OBJECTS')) then
      with FieldColumns['ID_OBJECTS'] do
      begin
        ReadOnly := True;
      end;

    if Assigned(DataSource.DataSet.FindField('N_OBJECTS')) then
      with FieldColumns['N_OBJECTS'] do
      begin
        ReadOnly := True;
      end;

    if Assigned(DataSource.DataSet.FindField('ID_OBJECTS_TYPE')) then
      with FieldColumns['ID_OBJECTS_TYPE'] do
      begin
        ReadOnly := True;
      end;
  end;
end;

procedure TFormEditAction.lcbCONDITION_TYPEChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    with DataSource.DataSet do
      if (state = dsInsert) or (state = dsEdit) then
      begin
        if not IsEmpty then
          if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_TYPE_SUM then
          begin
            FieldByName('ID_UNIT').AsInteger := cCONDITION_TYPE_SUM;
            FieldByName('CODE_UNIT').AsString := '0';
            FieldByName('N_UNIT').AsString := 'Сумма';
            FieldByName('KN_EDIZM_UNIT').AsString := 'грн.';

          end
          else
          begin
            FieldByName('ID_UNIT').AsInteger := cID_UNIT_NOT_SELECT;
            FieldByName('CODE_UNIT').Value := null;
            FieldByName('N_UNIT').Value := null;
            FieldByName('KN_EDIZM_UNIT').Value := null;
          end;

        SetFieldsCondition(ListSource.DataSet.FieldByName(KeyField).AsInteger);
      end;
end;

procedure TFormEditAction.lcbCONDITION_TYPE_OPERChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    with DataSource.DataSet do
      if (state = dsInsert) or (state = dsEdit) then
      begin
        if not IsEmpty then
          if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_TYPE_SUM then
          begin
            FieldByName('ID_UNIT').AsInteger := cCONDITION_TYPE_SUM;
            FieldByName('CODE_UNIT').AsString := '0';
            FieldByName('N_UNIT').AsString := 'Сумма';
            FieldByName('KN_EDIZM_UNIT').AsString := 'грн.';

          end
          else
          begin
            FieldByName('ID_UNIT').AsInteger := cID_UNIT_NOT_SELECT;
            FieldByName('CODE_UNIT').Value := null;
            FieldByName('N_UNIT').Value := null;
            FieldByName('KN_EDIZM_UNIT').Value := null;
          end;

        SetFieldsOperation(ListSource.DataSet.FieldByName(KeyField).AsInteger);
      end;
end;

procedure TFormEditAction.lcbCOND_HINT_AMOUNT_FROMChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LAGER_0 then
        with edHINT_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_HINT_AMOUNT_TOChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LESS_oo then
        with edHINT_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_HINT_SUM_FROMChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LAGER_0 then
        with edHINT_SUM_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_HINT_SUM_TOChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LESS_oo then
        with edHINT_SUM_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_AMOUNT_FROMChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LAGER_0 then
        with edTRIG_AMOUNT_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_AMOUNT_FROMNotInList(Sender: TObject;
  NewText: string; var RecheckInList: Boolean);
begin
  RecheckInList := True;
  with (Sender as TDBLookupComboboxEh) do
    if not ListSource.DataSet.IsEmpty then
      Text := ListSource.DataSet.FieldByName(ListField).AsString;
end;

procedure TFormEditAction.lcbCOND_TRIG_AMOUNT_FROM_OPERChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LAGER_0 then
        with edTRIG_AMOUNT_FROM_OPER do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_AMOUNT_TOChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LESS_oo then
        with edTRIG_AMOUNT_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_AMOUNT_TO_OPERChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LESS_oo then
        with edTRIG_AMOUNT_TO_OPER do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_SUM_FROMChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LAGER_0 then
        with edTRIG_SUM_FROM do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.lcbCOND_TRIG_SUM_TOChange(Sender: TObject);
begin
  with (Sender as TDBLookupComboboxEh) do
    if (DataSource.DataSet.State = dsInsert) or (DataSource.DataSet.State = dsEdit) then
    begin
      if ListSource.DataSet.FieldByName(KeyField).AsInteger = cCONDITION_LESS_oo then
        with edTRIG_SUM_TO do
          DataSource.DataSet.FieldByName(DataField).Value := 0;
    end;
end;

procedure TFormEditAction.SelectConditionTypeFromRef(ADataSet: TpFibDataSet);
var
  AUnit                                      : TActionUnit;
  vDataForSelect                             : TDataForSelectTree;
  ADataRet                                   : TaDataTreeRecords;
begin

  with ADataSet do
    if not FieldByName('ID_CONDITION_TYPE').IsNull then
      case FieldByName('ID_CONDITION_TYPE').AsInteger of
        cCONDITION_TYPE_GOODS:
          begin
            StartWaitTime(True, 0, 0, _('Загрузка справочника...'));
            try
              FillChar(AUnit, SizeOf(TActionUnit), 0);

              with AUnit do
                if ADataSet.FBN('ID_UNIT').AsInteger <> cID_UNIT_NOT_SELECT then
                begin
                  Id := ADataSet.FBN('ID_UNIT').AsInteger;
                end;

              FormActionSelectGoods := TFormActionSelectGoods.Create2(Self, dsGoods, AUnit);

            finally
              StopWaitTime;
            end;

            if FormActionSelectGoods.ShowModal = mrOK then
            begin
              with ADataSet, AUnit do
              begin
                FBN('ID_UNIT').AsInteger := Id;
                FBN('CODE_UNIT').AsString := Code;
                FBN('N_UNIT').AsString := Name;
                FBN('KN_EDIZM_UNIT').AsString := EdIzm;
                FBN('PATH_UNIT').AsString := Path;
              end;
            end;
          end;
        cCONDITION_TYPE_GROUP:
          begin

            FillChar(vDataForSelect, SizeOf(TDataForSelectTree), 0);
            SetLength(aDataRet, 0);
            try
              StartWaitTime(True, 0, 0, _('Загрузка справочника...'));
              try

                with vDataForSelect do
                begin
                  CaptionForm := _('Выбор Группы товара');
                  CaptionLeft := '';

                  with tblGoodsGrTree do
                  begin
                    if not Active then
                      Open;
                    First;
                  end;
                  with vDataForSelect.DataLeft do
                  begin
                    DataSet := tblGoodsGrTree;
                  end;
                end;
              finally
                StopWaitTime;
              end;

              if SelectFromTreeList(vDataForSelect, FBN('ID_UNIT').AsInteger, aDataRet) = mrOK then
              begin
                with ADataSet do
                try
                  try
                    Screen.Cursor := crHourGlass;

                    if Length(aDataRet) = 1 then
                    begin
                      FBN('ID_UNIT').AsInteger := aDataRet[0].ID;
                      FBN('CODE_UNIT').AsString := aDataRet[0].NOTE;
                      FBN('N_UNIT').AsString := aDataRet[0].NAME;
                      FBN('KN_EDIZM_UNIT').AsString := '';
                      FBN('PATH_UNIT').AsString := aDataRet[0].PATH;
                    end;

                  finally
                    Screen.Cursor := crDefault;
                  end;
                except
                  on E: exception do
                  begin
                    MsgBoxEx(Application.Title, E.Message, MB_OK + MB_ICONSTOP + MB_TOPMOST);
                  end;
                end;
              end;
            finally
              SetLength(aDataRet, 0);
              aDataRet := nil;
            end;

          end;
      end;
end;

procedure TFormEditAction.dbEditCODE_UNITEditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  SelectConditionTypeFromRef(tblConditions);
end;

procedure TFormEditAction.dbEditCODE_UNIT_OPEREditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  SelectConditionTypeFromRef(tblOperations);
end;

procedure TFormEditAction.dbEditNUM_TABExit(Sender: TObject);
begin
  FormEditAction.Caption := fCaption + ' ' + '№' + ' ' + dbEditNUM_TAB.Text;
end;

procedure TFormEditAction.DBGridOperationsColumns0DataHintShow(Sender: TCustomDBGridEh;
  CursorPos: TPoint; Cell: TGridCoord; InCellCursorPos: TPoint; Column: TColumnEh;
  var Params: TDBGridEhDataHintParams; var Processed: Boolean);
begin
  if (Column.FieldName = 'TRIG_PRICE') then
    if (tblOperations.FieldByName('TRIG_PRICE').AsCurrency > 0) and
      ((tblOperations.FieldByName('ID_OPERATION_TYPE').AsInteger = Integer(notPROCENT))
      or
      (tblOperations.FieldByName('ID_OPERATION_TYPE').AsInteger = Integer(notDELTA))
      ) then
    begin
      Params.HintStr := 'Внимание! Надбавка!';
      Processed := True;
    end;
end;

end.

