object FormActions: TFormActions
  Left = 556
  Top = 123
  Caption = #1040#1082#1094#1080#1080
  ClientHeight = 658
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TsPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 658
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    ExplicitHeight = 677
    object tlbGrid: TToolBar
      Left = 1
      Top = 1
      Width = 1009
      Height = 43
      ButtonHeight = 38
      ButtonWidth = 75
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = FormMain.ImageListBtn
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object btnRefresh: TToolButton
        Left = 0
        Top = 0
        Action = actActionRefresh
      end
      object btn2: TToolButton
        Left = 75
        Top = 0
        Width = 15
        Caption = 'btn2'
        ImageIndex = 26
        Style = tbsSeparator
      end
      object btnAdd: TToolButton
        Tag = 1
        Left = 90
        Top = 0
        Action = actActionAdd
      end
      object btnCopy: TToolButton
        Tag = 2
        Left = 165
        Top = 0
        Action = actActionDublicate
      end
      object btnEdit: TToolButton
        Left = 240
        Top = 0
        Action = actActionEdit
      end
      object btn3: TToolButton
        Left = 315
        Top = 0
        Width = 8
        Caption = 'btn3'
        ImageIndex = 40
        Style = tbsSeparator
      end
      object btnDel: TToolButton
        Left = 323
        Top = 0
        Action = actActionDelete
      end
      object btn4: TToolButton
        Left = 398
        Top = 0
        Width = 8
        Caption = 'btn4'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object btnReview: TToolButton
        Left = 406
        Top = 0
        Action = actActionReview
      end
      object btn5: TToolButton
        Left = 481
        Top = 0
        Width = 37
        Caption = 'btn5'
        ImageIndex = 41
        Style = tbsSeparator
      end
      object btnActive: TToolButton
        Left = 518
        Top = 0
        Action = actActionActive
      end
      object btn6: TToolButton
        Left = 593
        Top = 0
        Width = 13
        Caption = 'btn6'
        ImageIndex = 22
        Style = tbsSeparator
      end
      object btnTransmit: TToolButton
        Left = 606
        Top = 0
        Action = actActionTransmit
        Style = tbsCheck
      end
      object btn7: TToolButton
        Left = 681
        Top = 0
        Width = 8
        Caption = 'btn7'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object btnActionSave: TToolButton
        Left = 689
        Top = 0
        Action = actActionSave
      end
      object btnActionLoad: TToolButton
        Left = 764
        Top = 0
        Action = actActionLoad
      end
    end
    object DBGridActionsList: TDBGridEh
      Left = 1
      Top = 44
      Width = 1009
      Height = 613
      HelpContext = 2320
      Align = alClient
      AllowedSelections = [gstRecordBookmarks]
      ColumnDefValues.AutoDropDown = True
      ColumnDefValues.DropDownShowTitles = True
      ColumnDefValues.DropDownSizing = True
      ColumnDefValues.Title.TitleButton = True
      DataGrouping.GroupLevels = <>
      DataSource = dsActions
      EditActions = [geaCopyEh, geaSelectAllEh]
      EvenRowColor = clWindow
      Flat = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = 7207934
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.Active = True
      RowDetailPanel.Width = 750
      RowDetailPanel.Height = 416
      RowDetailPanel.ActiveControl = pgctrlActionPanel
      RowDetailPanel.Color = cl3DLight
      SortLocal = True
      STFilter.InstantApply = True
      STFilter.Visible = True
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = False
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      OnDblClick = DBGridActionsListDblClick
      OnGetCellParams = DBGridActionsListGetCellParams
      OnRowDetailPanelHide = DBGridActionsListRowDetailPanelHide
      OnRowDetailPanelShow = DBGridActionsListRowDetailPanelShow
      object RowDetailData: TRowDetailPanelControlEh
        object pgctrlActionPanel: TsPageControl
          AlignWithMargins = True
          Left = 0
          Top = 3
          Width = 748
          Height = 411
          Margins.Left = 0
          Margins.Right = 0
          Margins.Bottom = 0
          ActivePage = tbConditions
          Align = alClient
          TabOrder = 0
          ActiveIsBold = True
          SkinData.SkinSection = 'PAGECONTROL'
          ExplicitWidth = 0
          ExplicitHeight = 0
          object tbConditions: TsTabSheet
            Caption = #1059#1089#1083#1086#1074#1080#1103
            ImageIndex = 20
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object scrlbxMain: TsScrollBox
              Left = 0
              Top = 0
              Width = 740
              Height = 383
              HorzScrollBar.Visible = False
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
              SkinData.SkinSection = 'PANEL_LOW'
              object pnlMain2: TsPanel
                Left = 0
                Top = 0
                Width = 740
                Height = 378
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                SkinData.SkinSection = 'PANEL'
                object grpConditions: TsGroupBox
                  Left = 0
                  Top = 0
                  Width = 740
                  Height = 250
                  Align = alTop
                  Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  SkinData.SkinSection = 'GROUPBOX'
                  object pnlCondition: TsPanel
                    Left = 438
                    Top = 15
                    Width = 300
                    Height = 233
                    Align = alRight
                    TabOrder = 0
                    SkinData.SkinSection = 'PANEL'
                    object scrlbxConditions: TsScrollBox
                      Left = 1
                      Top = 1
                      Width = 298
                      Height = 231
                      HorzScrollBar.Visible = False
                      VertScrollBar.Smooth = True
                      VertScrollBar.Style = ssFlat
                      Align = alClient
                      AutoMouseWheel = True
                      BorderStyle = bsNone
                      TabOrder = 0
                      SkinData.SkinSection = 'PANEL_LOW'
                      object pnlCondition1: TsPanel
                        Left = 0
                        Top = 0
                        Width = 298
                        Height = 228
                        Align = alTop
                        TabOrder = 0
                        SkinData.SkinSection = 'PANEL'
                        object grpDrawdown: TsGroupBox
                          AlignWithMargins = True
                          Left = 4
                          Top = 4
                          Width = 290
                          Height = 107
                          Align = alTop
                          Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
                          Color = clInfoBk
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clPurple
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentBackground = False
                          ParentColor = False
                          ParentFont = False
                          TabOrder = 0
                          SkinData.SkinSection = 'GROUPBOX'
                          object grpDrawdownAmount: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 18
                            Width = 280
                            Height = 40
                            Align = alTop
                            Caption = ' '#1057#1088#1072#1073#1086#1090#1082#1072' '
                            Color = clMoneyGreen
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 0
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl26: TLabel
                              Left = 15
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1054#1090':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object lbl27: TLabel
                              Left = 145
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1044#1086':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edTRIG_AMOUNT_FROM: TDBNumberEditEh
                              Left = 68
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_AMOUNT_FROM'
                              DataSource = dsConditions
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object edTRIG_AMOUNT_TO: TDBNumberEditEh
                              Left = 198
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_AMOUNT_TO'
                              DataSource = dsConditions
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                            object edN_COND_TRIG_AMOUNT_FROM: TDBEditEh
                              Left = 35
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_AMOUNT_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 2
                              Visible = True
                            end
                            object edN_COND_TRIG_AMOUNT_TO: TDBEditEh
                              Left = 165
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_AMOUNT_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 3
                              Visible = True
                            end
                          end
                          object grpConditionAmountHint: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 64
                            Width = 280
                            Height = 40
                            Align = alTop
                            Caption = ' '#1055#1086#1076#1089#1082#1072#1079#1082#1072' '
                            Color = 10930928
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 1
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl30: TLabel
                              Left = 15
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1054#1090':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object lbl31: TLabel
                              Left = 145
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1044#1086':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edHINT_AMOUNT_FROM: TDBNumberEditEh
                              Left = 68
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'HINT_AMOUNT_FROM'
                              DataSource = dsConditions
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object edHINT_AMOUNT_TO: TDBNumberEditEh
                              Left = 198
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'HINT_AMOUNT_TO'
                              DataSource = dsConditions
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                            object edN_COND_HINT_AMOUNT_FROM: TDBEditEh
                              Left = 35
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_HINT_AMOUNT_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 2
                              Visible = True
                            end
                            object edN_COND_HINT_AMOUNT_TO: TDBEditEh
                              Left = 165
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_HINT_AMOUNT_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 3
                              Visible = True
                            end
                          end
                        end
                        object grp1: TsGroupBox
                          AlignWithMargins = True
                          Left = 4
                          Top = 117
                          Width = 290
                          Height = 107
                          Align = alClient
                          Caption = ' '#1057#1091#1084#1084#1072' '
                          Color = clGradientInactiveCaption
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clPurple
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentBackground = False
                          ParentColor = False
                          ParentFont = False
                          TabOrder = 1
                          SkinData.SkinSection = 'GROUPBOX'
                          object grpConditionHintSUM: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 64
                            Width = 280
                            Height = 40
                            Align = alTop
                            Caption = ' '#1055#1086#1076#1089#1082#1072#1079#1082#1072' '
                            Color = 10930928
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 1
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl32: TLabel
                              Left = 15
                              Top = 19
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1054#1090':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object lbl33: TLabel
                              Left = 145
                              Top = 19
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1044#1086':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edHINT_SUM_FROM: TDBNumberEditEh
                              Left = 68
                              Top = 16
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'HINT_SUM_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object edHINT_SUM_TO: TDBNumberEditEh
                              Left = 198
                              Top = 16
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'HINT_SUM_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                            object edN_COND_HINT_SUM_FROM: TDBEditEh
                              Left = 35
                              Top = 16
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_HINT_SUM_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 2
                              Visible = True
                            end
                            object edN_COND_HINT_SUM_TO: TDBEditEh
                              Left = 165
                              Top = 16
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_HINT_SUM_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 3
                              Visible = True
                            end
                          end
                          object grpDrawdownSUM: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 18
                            Width = 280
                            Height = 40
                            Align = alTop
                            Caption = ' '#1057#1088#1072#1073#1086#1090#1082#1072' '
                            Color = clMoneyGreen
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 0
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl28: TLabel
                              Left = 15
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1054#1090':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object lbl29: TLabel
                              Left = 145
                              Top = 18
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1044#1086':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edTRIG_SUM_FROM: TDBNumberEditEh
                              Left = 68
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_SUM_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object edTRIG_SUM_TO: TDBNumberEditEh
                              Left = 198
                              Top = 15
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_SUM_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                            object edN_COND_TRIG_SUM_FROM: TDBEditEh
                              Left = 35
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_SUM_FROM'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 2
                              Visible = True
                            end
                            object edN_COND_TRIG_SUM_TO: TDBEditEh
                              Left = 165
                              Top = 15
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_SUM_TO'
                              DataSource = dsConditions
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 3
                              Visible = True
                            end
                          end
                        end
                      end
                    end
                  end
                  object DBGridConditions2: TDBGridEh
                    Left = 2
                    Top = 15
                    Width = 436
                    Height = 233
                    HelpContext = 2320
                    Align = alClient
                    AllowedSelections = [gstRecordBookmarks]
                    ColumnDefValues.AutoDropDown = True
                    ColumnDefValues.DropDownShowTitles = True
                    ColumnDefValues.DropDownSizing = True
                    ColumnDefValues.Title.TitleButton = True
                    DataGrouping.GroupLevels = <>
                    DataSource = dsConditions
                    EditActions = [geaCopyEh, geaSelectAllEh]
                    EvenRowColor = clWindow
                    Flat = True
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    FooterColor = 7207934
                    FooterFont.Charset = DEFAULT_CHARSET
                    FooterFont.Color = clWindowText
                    FooterFont.Height = -11
                    FooterFont.Name = 'MS Sans Serif'
                    FooterFont.Style = []
                    IndicatorOptions = [gioShowRowIndicatorEh]
                    OddRowColor = clWindow
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
                    ParentFont = False
                    ReadOnly = True
                    SortLocal = True
                    STFilter.InstantApply = True
                    SumList.Active = True
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    UseMultiTitle = True
                    VertScrollBar.VisibleMode = sbAlwaysShowEh
                    object RowDetailData: TRowDetailPanelControlEh
                    end
                  end
                end
                object grpOperations: TsGroupBox
                  Left = 0
                  Top = 250
                  Width = 740
                  Height = 130
                  Align = alTop
                  Caption = ' '#1044#1077#1081#1089#1090#1074#1080#1103' '
                  Font.Charset = RUSSIAN_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  SkinData.SkinSection = 'GROUPBOX'
                  object pnlOperationEdit: TsPanel
                    Left = 438
                    Top = 15
                    Width = 300
                    Height = 113
                    Align = alRight
                    TabOrder = 0
                    SkinData.SkinSection = 'PANEL'
                    object scrlbxOperations: TsScrollBox
                      Left = 1
                      Top = 1
                      Width = 298
                      Height = 111
                      HorzScrollBar.Visible = False
                      VertScrollBar.Smooth = True
                      VertScrollBar.Style = ssFlat
                      Align = alClient
                      AutoMouseWheel = True
                      BorderStyle = bsNone
                      TabOrder = 0
                      SkinData.SkinSection = 'PANEL_LOW'
                      object pnlOperations2: TsPanel
                        Left = 0
                        Top = 0
                        Width = 298
                        Height = 109
                        Align = alTop
                        TabOrder = 0
                        SkinData.SkinSection = 'PANEL'
                        object grp7: TsGroupBox
                          Left = 1
                          Top = 1
                          Width = 296
                          Height = 107
                          Align = alClient
                          Caption = ' '#1059#1089#1083#1086#1074#1080#1077' '
                          Color = clBtnFace
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clPurple
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          ParentColor = False
                          ParentFont = False
                          TabOrder = 0
                          SkinData.SkinSection = 'GROUPBOX'
                          object grp8: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 18
                            Width = 286
                            Height = 40
                            Align = alTop
                            Caption = ' '#1057#1088#1072#1073#1086#1090#1082#1072' '
                            Color = clMoneyGreen
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 0
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl47: TLabel
                              Left = 18
                              Top = 19
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1054#1090':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object lbl48: TLabel
                              Left = 148
                              Top = 19
                              Width = 18
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1044#1086':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edTRIG_AMOUNT_FROM_OPER: TDBNumberEditEh
                              Left = 72
                              Top = 16
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_AMOUNT_FROM'
                              DataSource = dsOperations
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object edTRIG_AMOUNT_TO_OPER: TDBNumberEditEh
                              Left = 201
                              Top = 16
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_AMOUNT_TO'
                              DataSource = dsOperations
                              DecimalPlaces = 3
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                            object dbEditN_COND_TRIG_AMOUNT_FROM: TDBEditEh
                              Left = 38
                              Top = 16
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_AMOUNT_FROM'
                              DataSource = dsOperations
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 2
                              Visible = True
                            end
                            object dbEditN_COND_TRIG_AMOUNT_TO: TDBEditEh
                              Left = 168
                              Top = 16
                              Width = 30
                              Height = 19
                              Color = 16776175
                              DataField = 'N_COND_TRIG_AMOUNT_TO'
                              DataSource = dsOperations
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 3
                              Visible = True
                            end
                          end
                          object grp9: TsGroupBox
                            AlignWithMargins = True
                            Left = 5
                            Top = 64
                            Width = 286
                            Height = 40
                            Align = alTop
                            Caption = ' '#1062#1077#1085#1072' '
                            Color = clGradientInactiveCaption
                            Font.Charset = DEFAULT_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            ParentBackground = False
                            ParentColor = False
                            ParentFont = False
                            TabOrder = 1
                            SkinData.SkinSection = 'GROUPBOX'
                            object lbl49: TLabel
                              Left = 24
                              Top = 16
                              Width = 52
                              Height = 13
                              Margins.Bottom = 0
                              Alignment = taRightJustify
                              Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
                              Font.Charset = RUSSIAN_CHARSET
                              Font.Color = clWindowText
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              ParentFont = False
                              Transparent = True
                            end
                            object edTRIG_PRICE: TDBNumberEditEh
                              Left = 155
                              Top = 13
                              Width = 67
                              Height = 19
                              Color = 16776175
                              DataField = 'TRIG_PRICE'
                              DataSource = dsOperations
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 0
                              Visible = True
                            end
                            object dbEditN_COND_TRIG_AMOUNT_FROM1: TDBEditEh
                              Left = 78
                              Top = 13
                              Width = 77
                              Height = 19
                              Color = 16776175
                              DataField = 'N_OPERATION_TYPE'
                              DataSource = dsOperations
                              EditButtons = <>
                              Font.Charset = DEFAULT_CHARSET
                              Font.Color = clNavy
                              Font.Height = -11
                              Font.Name = 'Tahoma'
                              Font.Style = []
                              Flat = True
                              ParentFont = False
                              ReadOnly = True
                              TabOrder = 1
                              Visible = True
                            end
                          end
                        end
                      end
                    end
                  end
                  object DBGridOperations2: TDBGridEh
                    Left = 2
                    Top = 15
                    Width = 436
                    Height = 113
                    HelpContext = 2320
                    Align = alClient
                    AllowedSelections = [gstRecordBookmarks]
                    ColumnDefValues.AutoDropDown = True
                    ColumnDefValues.DropDownShowTitles = True
                    ColumnDefValues.DropDownSizing = True
                    ColumnDefValues.Title.TitleButton = True
                    DataGrouping.GroupLevels = <>
                    DataSource = dsOperations
                    EditActions = [geaCopyEh, geaSelectAllEh]
                    EvenRowColor = clWindow
                    Flat = True
                    Font.Charset = RUSSIAN_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    FooterColor = 7207934
                    FooterFont.Charset = DEFAULT_CHARSET
                    FooterFont.Color = clWindowText
                    FooterFont.Height = -11
                    FooterFont.Name = 'MS Sans Serif'
                    FooterFont.Style = []
                    IndicatorOptions = [gioShowRowIndicatorEh]
                    OddRowColor = clWindow
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
                    ParentFont = False
                    ReadOnly = True
                    SortLocal = True
                    STFilter.InstantApply = True
                    SumList.Active = True
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    UseMultiTitle = True
                    VertScrollBar.VisibleMode = sbAlwaysShowEh
                    object RowDetailData: TRowDetailPanelControlEh
                    end
                  end
                end
              end
            end
          end
          object tbObjects: TsTabSheet
            Caption = #1054#1073#1098#1077#1082#1090#1099
            ImageIndex = 124
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object DBGridActionObjects: TDBGridEh
              Left = 0
              Top = 0
              Width = 740
              Height = 383
              HelpContext = 2320
              Align = alClient
              AllowedOperations = []
              AllowedSelections = [gstRecordBookmarks]
              ColumnDefValues.AutoDropDown = True
              ColumnDefValues.DropDownShowTitles = True
              ColumnDefValues.DropDownSizing = True
              ColumnDefValues.Title.TitleButton = True
              DataGrouping.GroupLevels = <>
              DataSource = dsObjects
              EditActions = [geaCopyEh, geaSelectAllEh]
              EvenRowColor = clWindow
              Flat = True
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterColor = 7207934
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              IndicatorOptions = [gioShowRowIndicatorEh]
              OddRowColor = clWindow
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
              ParentFont = False
              ReadOnly = True
              SortLocal = True
              STFilter.InstantApply = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbAlwaysShowEh
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object tbSchedule: TsTabSheet
            Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
            ImageIndex = 95
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object lbl5: TLabel
              Left = 132
              Top = 18
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl6: TLabel
              Left = 212
              Top = 18
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl7: TLabel
              Left = 36
              Top = 18
              Width = 82
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl8: TLabel
              Left = 132
              Top = 41
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl9: TLabel
              Left = 212
              Top = 41
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl10: TLabel
              Left = 67
              Top = 41
              Width = 51
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1042#1090#1086#1088#1085#1080#1082':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl11: TLabel
              Left = 132
              Top = 65
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl12: TLabel
              Left = 212
              Top = 65
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl13: TLabel
              Left = 78
              Top = 65
              Width = 40
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1057#1088#1077#1076#1072':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl14: TLabel
              Left = 132
              Top = 88
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl15: TLabel
              Left = 212
              Top = 88
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl16: TLabel
              Left = 66
              Top = 88
              Width = 52
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1063#1077#1090#1074#1077#1088#1075':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl17: TLabel
              Left = 132
              Top = 111
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl18: TLabel
              Left = 212
              Top = 111
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl19: TLabel
              Left = 65
              Top = 111
              Width = 53
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1055#1103#1090#1085#1080#1094#1072':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl20: TLabel
              Left = 132
              Top = 134
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl21: TLabel
              Left = 212
              Top = 134
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl22: TLabel
              Left = 66
              Top = 134
              Width = 52
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1057#1091#1073#1073#1086#1090#1072':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object lbl23: TLabel
              Left = 132
              Top = 157
              Width = 9
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1089':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl24: TLabel
              Left = 212
              Top = 157
              Width = 16
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1087#1086':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lbl25: TLabel
              Left = 40
              Top = 157
              Width = 78
              Height = 13
              Margins.Bottom = 0
              Alignment = taRightJustify
              Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077':'
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              Transparent = True
            end
            object edtSCH_1_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 14
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_1_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_1_TO: TDBDateTimeEditEh
              Left = 232
              Top = 14
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_1_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_2_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 37
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_2_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_2_TO: TDBDateTimeEditEh
              Left = 232
              Top = 37
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_2_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_3_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 61
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_3_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_3_TO: TDBDateTimeEditEh
              Left = 232
              Top = 61
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_3_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_4_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 84
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_4_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_4_TO: TDBDateTimeEditEh
              Left = 232
              Top = 84
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_4_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_5_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 107
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_5_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_5_TO: TDBDateTimeEditEh
              Left = 232
              Top = 107
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_5_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_6_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 130
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_6_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_6_TO: TDBDateTimeEditEh
              Left = 232
              Top = 130
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_6_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_7_FROM: TDBDateTimeEditEh
              Left = 148
              Top = 153
              Width = 51
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_7_FROM'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 12
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
            object edtSCH_7_TO: TDBDateTimeEditEh
              Left = 232
              Top = 154
              Width = 53
              Height = 21
              Alignment = taLeftJustify
              Color = 16776175
              DataField = 'SCH_7_TO'
              DataSource = dsActions
              EditButton.Visible = False
              EditButtons = <>
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
              Visible = True
              EditFormat = 'hh:nn:ss'
            end
          end
          object tbRecepients: TsTabSheet
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1080
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGridRecepients: TDBGridEh
              Left = 0
              Top = 0
              Width = 740
              Height = 383
              HelpContext = 2320
              Align = alClient
              AllowedSelections = [gstRecordBookmarks]
              ColumnDefValues.AutoDropDown = True
              ColumnDefValues.DropDownShowTitles = True
              ColumnDefValues.DropDownSizing = True
              ColumnDefValues.Title.TitleButton = True
              DataGrouping.GroupLevels = <>
              DataSource = dsRecipients
              EditActions = [geaCopyEh, geaSelectAllEh]
              EvenRowColor = clWindow
              Flat = True
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              FooterColor = 7207934
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -11
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              IndicatorOptions = [gioShowRowIndicatorEh]
              OddRowColor = clWindow
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
              ParentFont = False
              ReadOnly = True
              SortLocal = True
              STFilter.InstantApply = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbAlwaysShowEh
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
  object tblActions: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_ACTION'
      'SET '
      ' NUM_ACTION = :NUM_ACTION,'
      ' IS_ACTIVE = :IS_ACTIVE,'
      ' IS_TRANSMIT = :IS_TRANSMIT,'
      ' N_ACTION = :N_ACTION,'
      ' D_ACTIVE_BEGIN = :D_ACTIVE_BEGIN,'
      ' D_ACTIVE_END = :D_ACTIVE_END,'
      ' REMARK = :REMARK,'
      ' SCH_1_FROM = :SCH_1_FROM,'
      ' SCH_1_TO = :SCH_1_TO,'
      ' SCH_2_FROM = :SCH_2_FROM,'
      ' SCH_2_TO = :SCH_2_TO,'
      ' SCH_3_FROM = :SCH_3_FROM,'
      ' SCH_3_TO = :SCH_3_TO,'
      ' SCH_4_FROM = :SCH_4_FROM,'
      ' SCH_4_TO = :SCH_4_TO,'
      ' SCH_5_FROM = :SCH_5_FROM,'
      ' SCH_5_TO = :SCH_5_TO,'
      ' SCH_6_FROM = :SCH_6_FROM,'
      ' SCH_6_TO = :SCH_6_TO,'
      ' SCH_7_FROM = :SCH_7_FROM,'
      ' SCH_7_TO = :SCH_7_TO,'
      ' DATA = :DATA'
      'WHERE'
      ' ID_ACTION = :OLD_ID_ACTION'
      ' ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      ' ACT_ACTION'
      'WHERE'
      '  ID_ACTION = :OLD_ID_ACTION'
      ' ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_ACTION('
      ' ID_ACTION,'
      ' NUM_ACTION,'
      ' IS_ACTIVE,'
      ' IS_TRANSMIT,'
      ' N_ACTION,'
      ' D_ACTIVE_BEGIN,'
      ' D_ACTIVE_END,'
      ' REMARK,'
      ' SCH_1_FROM,'
      ' SCH_1_TO,'
      ' SCH_2_FROM,'
      ' SCH_2_TO,'
      ' SCH_3_FROM,'
      ' SCH_3_TO,'
      ' SCH_4_FROM,'
      ' SCH_4_TO,'
      ' SCH_5_FROM,'
      ' SCH_5_TO,'
      ' SCH_6_FROM,'
      ' SCH_6_TO,'
      ' SCH_7_FROM,'
      ' SCH_7_TO,'
      ' DATA'
      ')'
      'VALUES('
      ' :ID_ACTION,'
      ' :NUM_ACTION,'
      ' :IS_ACTIVE,'
      ' :IS_TRANSMIT,'
      ' :N_ACTION,'
      ' :D_ACTIVE_BEGIN,'
      ' :D_ACTIVE_END,'
      ' :REMARK,'
      ' :SCH_1_FROM,'
      ' :SCH_1_TO,'
      ' :SCH_2_FROM,'
      ' :SCH_2_TO,'
      ' :SCH_3_FROM,'
      ' :SCH_3_TO,'
      ' :SCH_4_FROM,'
      ' :SCH_4_TO,'
      ' :SCH_5_FROM,'
      ' :SCH_5_TO,'
      ' :SCH_6_FROM,'
      ' :SCH_6_TO,'
      ' :SCH_7_FROM,'
      ' :SCH_7_TO,'
      ' :DATA'
      ')')
    RefreshSQL.Strings = (
      'select'
      ' A.ID_ACTION,'
      ' A.NUM_ACTION,'
      ' A.IS_ACTIVE,'
      ' A.IS_TRANSMIT,'
      ' A.N_ACTION,'
      ' A.D_ACTIVE_BEGIN,'
      ' A.D_ACTIVE_END,'
      ' A.REMARK,'
      ' A.SCH_1_FROM,'
      ' A.SCH_1_TO,'
      ' A.SCH_2_FROM,'
      ' A.SCH_2_TO,'
      ' A.SCH_3_FROM,'
      ' A.SCH_3_TO,'
      ' A.SCH_4_FROM,'
      ' A.SCH_4_TO,'
      ' A.SCH_5_FROM,'
      ' A.SCH_5_TO,'
      ' A.SCH_6_FROM,'
      ' A.SCH_6_TO,'
      ' A.SCH_7_FROM,'
      ' A.SCH_7_TO,'
      ' A.DATA,'
      ' A.OBJECT_CUPON'
      'from SEL_ACTIONS A'
      'WHERE( '
      '/*FILTER*/(1=1)'
      '  ) and (  A.ID_ACTION = :OLD_ID_ACTION'
      '  )'
      ' ')
    SelectSQL.Strings = (
      'select'
      ' ID_ACTION,'
      ' NUM_ACTION,'
      ' IS_ACTIVE,'
      ' IS_TRANSMIT,'
      ' N_ACTION,'
      ' D_ACTIVE_BEGIN,'
      ' D_ACTIVE_END,'
      ' REMARK,'
      ' SCH_1_FROM,'
      ' SCH_1_TO,'
      ' SCH_2_FROM,'
      ' SCH_2_TO,'
      ' SCH_3_FROM,'
      ' SCH_3_TO,'
      ' SCH_4_FROM,'
      ' SCH_4_TO,'
      ' SCH_5_FROM,'
      ' SCH_5_TO,'
      ' SCH_6_FROM,'
      ' SCH_6_TO,'
      ' SCH_7_FROM,'
      ' SCH_7_TO,'
      ' DATA,'
      ' OBJECT_CUPON'
      'from SEL_ACTIONS'
      'WHERE'
      '/*FILTER*/(1=1)')
    AutoUpdateOptions.UpdateTableName = 'ACT_ACTION'
    AutoUpdateOptions.KeyFields = 'ID_ACTION'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_ACTION_ID'
    OnNewRecord = tblActionsNewRecord
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 823
    Top = 64
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldActionsID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fldActionsIS_ACTIVE: TFIBSmallIntField
      FieldName = 'IS_ACTIVE'
    end
    object fldActionsIS_TRANSMIT: TFIBSmallIntField
      FieldName = 'IS_TRANSMIT'
    end
    object fbstrngfldActionsN_ACTION: TFIBStringField
      FieldName = 'N_ACTION'
      Size = 108
      EmptyStrToNull = True
    end
    object fbdtfldActionsD_ACTIVE_BEGIN: TFIBDateField
      FieldName = 'D_ACTIVE_BEGIN'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fbdtfldActionsD_ACTIVE_END: TFIBDateField
      FieldName = 'D_ACTIVE_END'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object fbstrngfldActionsREMARK: TFIBStringField
      FieldName = 'REMARK'
      Size = 150
      EmptyStrToNull = True
    end
    object fbtmfldActionsSCH_1_FROM: TFIBTimeField
      FieldName = 'SCH_1_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_1_TO: TFIBTimeField
      FieldName = 'SCH_1_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_2_FROM: TFIBTimeField
      FieldName = 'SCH_2_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_2_TO: TFIBTimeField
      FieldName = 'SCH_2_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_3_FROM: TFIBTimeField
      FieldName = 'SCH_3_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_3_TO: TFIBTimeField
      FieldName = 'SCH_3_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_4_FROM: TFIBTimeField
      FieldName = 'SCH_4_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_4_TO: TFIBTimeField
      FieldName = 'SCH_4_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_5_FROM: TFIBTimeField
      FieldName = 'SCH_5_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_5_TO: TFIBTimeField
      FieldName = 'SCH_5_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_6_FROM: TFIBTimeField
      FieldName = 'SCH_6_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_6_TO: TFIBTimeField
      FieldName = 'SCH_6_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_7_FROM: TFIBTimeField
      FieldName = 'SCH_7_FROM'
      DisplayFormat = 'hh:mm:ss'
    end
    object fbtmfldActionsSCH_7_TO: TFIBTimeField
      FieldName = 'SCH_7_TO'
      DisplayFormat = 'hh:mm:ss'
    end
    object fblbfldActionsDATA: TFIBBlobField
      FieldName = 'DATA'
      Size = 8
    end
    object fbstrngfldActionsNUM_ACTION: TFIBStringField
      FieldName = 'NUM_ACTION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldActionsOBJECT_CUPON: TFIBStringField
      FieldName = 'OBJECT_CUPON'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsActions: TDataSource
    DataSet = tblActions
    OnDataChange = dsActionsDataChange
    Left = 854
    Top = 63
  end
  object il12: TImageList
    Left = 888
    Top = 63
    Bitmap = {
      494C010102000500B40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA0000000000000000000000000080511C0080511C008051
      1C0080511C0080511C0080511C0080511C0080511C0080511C0080511C008051
      1C0080511C0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00F1F3F300F3F5
      F500F6F7F700F8F9F900F9FAFA00FBFCFC00FDFDFD00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00EFF1F100F1F3
      F300F3F5F500F6F7F700F8F9F900F9FAFA00FBFCFC00FDFDFD00FEFEFE00FFFF
      FF00FFFFFF0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00ECEFEF00EFF1
      F100F1F3F300F3F5F50021A12100F8F9F900F9FAFA00FBFCFC00FDFDFD00FEFE
      FE00FFFFFF0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00E9ECEC00ECEF
      EF00EFF1F10021A1210021A1210021A12100F8F9F900F9FAFA00FBFCFC00FDFD
      FD00FEFEFE0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00E6EAEA00E9EC
      EC0021A1210021A1210021A1210021A1210021A12100F8F9F900F9FAFA00FBFC
      FC00FDFDFD0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00E3E7E700E6EA
      EA0021A1210021A12100EFF1F10021A1210021A1210021A12100F8F9F900F9FA
      FA00FBFCFC0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00E1E5E500E3E7
      E70021A12100E9ECEC00ECEFEF00EFF1F10021A1210021A1210021A12100F8F9
      F900F9FAFA0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00DFE3E300E1E5
      E500E3E7E700E6EAEA00E9ECEC00ECEFEF00EFF1F10021A1210021A12100F6F7
      F700F8F9F90080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00DDE2E200DFE3
      E300E1E5E500E3E7E700E6EAEA00E9ECEC00ECEFEF00EFF1F10021A12100F3F5
      F500F6F7F70080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00DDE2E200DDE2
      E200DFE3E300E1E5E500E3E7E700E6EAEA00E9ECEC00ECEFEF00EFF1F100F1F3
      F300F3F5F50080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA0000000000000000000000000080511C00DDE2E200DDE2
      E200DDE2E200DFE3E300E1E5E500E3E7E700E6EAEA00E9ECEC00ECEFEF00EFF1
      F100F1F3F30080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA0000000000000000000000000080511C0080511C008051
      1C0080511C0080511C0080511C0080511C0080511C0080511C0080511C008051
      1C0080511C0080511C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000800380030000000080038003000000008003800300000000
      8003800300000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object il1: TImageList
    Left = 921
    Top = 64
    Bitmap = {
      494C010108001000100110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFBFA00F6FEFC00F5FD
      FC00FEFDF800F9FDF800F6FFF900FCFDF900FCFBF800F5FFF600F7FBFD00FDFC
      FE00F6FAF800F8FFF800FFFEFB00FCFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FCF300586EEA00466EEB003E68
      FB003D67FE004167FD003C66FF003D6EEC003C67FD003966FE003C67FC003A66
      FE003D68FB00416AF5004E67FD00F6FBFB0000000000A33D0000A03A0000A03A
      0000A03A0000A03A0000A03A0000A03A0000A03A0000A03A0000A03A0000A03A
      0000A03A0000A03A0000A33D00000000000000000000070BA3000509A0000508
      A0000508A0000508A0000508A0000508A0000508A0000508A0000508A0000508
      A0000508A0000509A000070BA3000000000000000000070BA3000509A0000508
      A0000508A0000508A0000508A0000508A0000508A0000508A0000508A0000508
      A0000508A0000509A000070BA30000000000FBFAFE004767FC00506AF60064F8
      FF005EF8FC0060FBFD0062F6FF005FFAFD0064FEFF0064FEFF0065FEFF0062F7
      FF0050F5F2005075DC00406EEE00FFFFFD0000000000A7410000B45E2300CA8C
      5800CC925F00CC925F00CC925F00CC925F00CC925F00CC925F00CC925F00CC92
      5F00CA8C5800B45E2300A741000000000000000000000A10A7002035B400436F
      CA004776CC004776CC004776CC004776CC004776CC004776CC004776CC004776
      CC00436FCA002035B4000A10A70000000000000000000A10A7002035B400436F
      CA004776CC004776CC004776CC004776CC004776CC004776CC004776CC004776
      CC00436FCA002035B4000A10A70000000000FAFEF8004667FF0063F5FF00239B
      FD002089FF002978FF003167FF002D6FFF003169FF003168FF002978FE001E8D
      FD001B92F60062F7FF004367FD00F6FBFC0000000000AD470000CB8B5200B75E
      1C00AD470000AD470000AD470000AD470000AD470000AD470000AD470000AD47
      0000B75E1C00CB8B5200AD47000000000000000000000F18AD00426DCB002035
      B7000F18AD00101BAE00121EAF00101BAE000F18AD000F18AD000F18AD000F18
      AD002035B700426DCB000F18AD0000000000000000000F18AD00426DCB002035
      B7000F18AD000F18AD000F18AD000F18AD000F18AD000F18AD000F18AD000F18
      AD002035B700426DCB000F18AD0000000000FEFEFA004367FF0064FCFF002286
      FF002878FF003266FF003266FA003266F7003266F9003366FF003266FF00306A
      FF001A97FD0060F5FE003E6CF200FBFCF70000000000B44E0000CF8E5100B44E
      0000B44E0000B44E0000B44E00000000000000000000B44E0000B44E0000B44E
      0000B44E0000CF8E5100B44E000000000000000000001420B4004471CF001420
      B400131FB300121DB200121CB100121DB3001B25B8001A26B6001420B4001420
      B4001420B4004471CF001420B40000000000000000001420B4004471CF001420
      B4001420B4001420B4001420B4001420B4001420B4001420B4001420B4001420
      B4001420B4004471CF001420B40000000000F1F9FE00446AF70064FBFF002383
      FD003266FE003266FF003266FF003266FB003267F8003067F5003267E4003267
      FF002188FF0063FBFF00436EEE00F5FAFA0000000000BA540000D18E4A00BA54
      0000BA540000BA540000BA5400000000000000000000BA540000BA540000BA54
      0000BA540000D18E4A00BA54000000000000000000001828BA00436FD1001727
      BA001625B800131FB6001D24B300383AB700FAFAFF006169D1001829BD001828
      BA001828BA00436FD1001828BA0000000000000000001828BA00436FD1001828
      BA001828BA001828BA001828BA0000000000000000001828BA001828BA001828
      BA001828BA00436FD1001828BA0000000000F9FEF900456AF70064FAFF002B72
      FF003266FE003168FF003366F9003266ED003266EB003266F3003267F8003266
      FC002580FF0063F9FF004667FE00F9FEFA0000000000C15B0000D48D4400C15B
      0000C15B0000C15B0000C15B00000000000000000000C15B0000C15B0000C15B
      0000C15B0000D48D4400C15B000000000000000000001D30C100436FD4001C2F
      C100182ABE001524BB00171EB2003D3EBB003739C6002432C2002033C6001C2F
      C1001D30C100436FD4001D30C10000000000000000001D30C100436FD4001D30
      C1001D30C1001D30C1001D30C1001D30C1001D30C1001D30C1001D30C1001D30
      C1001D30C100436FD4001D30C10000000000F8FBF6004169F90065FFFF001F8B
      FD003266FF003266FD003266E6003266E6003266ED003366FE003267EC003167
      F9002387FD0063FAFF00496CF300FAFCF80000000000C8620000D78D3D00C862
      0000C8620000C8620000C86200000000000000000000C8620000C8620000C862
      0000C8620000D78D3D00C862000000000000000000002238C8003F67D6001E33
      C700192BC1001826BD001A26BA004143BA00F4F4FC002633C2002234C7001E33
      C8002137C800436ED7002238C80000000000000000002238C800436ED7002238
      C8002238C8002238C8002238C8002238C8002238C8002238C8002238C8002238
      C8002238C800436ED7002238C80000000000FAFDF8003C68FC0063FFFD00208E
      FF003167F9003167E1003266FA003366F2003266FB003266FD003266F9003167
      EE001E8DFA0060F2FF004567FF00F8FEF80000000000CF690000DA8D3600CF69
      0000CF690000CF690000CF6900000000000000000000CF690000CF690000CF69
      0000CF690000DA8D3600CF69000000000000000000002841D000395ED7002036
      CC001A2BC2001A28BD001620B6005F63C600000000005C60C9001A27BA001F34
      CA00243DCF00436EDA002740CF0000000000000000002740CF00436EDA002740
      CF002740CF002740CF002740CF0000000000000000002740CF002740CF002740
      CF002740CF00436EDA002740CF0000000000F7FDFF003E67FD0063FFFF001D8F
      FE003266FC003266F9003266FF003266FC003266FA003266FB003266FA003266
      F7002C75FE0061F3FF00486EED00F3FDFF0000000000D56F0000DE8E2F00D56F
      0000D56F0000D56F0000D56F0000D56F0000D56F0000D56F0000D56F0000D56F
      0000D56F0000DE8E2F00D56F000000000000000000002D4AD600385EDB00243B
      CF001C2CC3002C3AC400F8F8FD003540C3004C50BF00000000004D54C8002236
      CD002945D500436FDE002C48D50000000000000000002C48D500436FDE002C48
      D5002C48D5002C48D5002C48D50000000000000000002C48D5002C48D5002C48
      D5002C48D500436FDE002C48D50000000000F5FFFB003F6EEB0064FFFF002C87
      FF003168FC003366FC003266FF003266FF003266FF003266FF003267FB003068
      F5002979FF0060F3FF00486AF700FDF7F90000000000DC760000E28F2800DC76
      0000DC760000DC760000DC7600000000000000000000DC760000DC760000DC76
      0000DC760000E28F2800DC76000000000000000000003151DD003D64E0002B45
      D7002234C9005157C500000000005A5DC6004B4EC30000000000656BCE002941
      D4002F4FDC00446FE2003150DC0000000000000000003150DC00446FE2003150
      DC003150DC003150DC003150DC0000000000000000003150DC003150DC003150
      DC003150DC00446FE2003150DC0000000000FFFEFD003F6CF20065FFFF002489
      FF003168FF003266FD003266EE003167EE003366DF003266F5003266E7002D6F
      FD00208BFF0061F4FF004669F800FFFBFB0000000000E27C0000E7902200E27C
      0000E27C0000E27C0000E27C00000000000000000000E27C0000E27C0000E27C
      0000E27C0000E7902200E27C000000000000000000003657E200436EE7003455
      E100304AD900384AD3004547BB0000000000000000004C4FBF00424FCF003656
      E3003657E2004571E7003657E20000000000000000003657E2004571E7003657
      E2003657E2003657E2003657E20000000000000000003657E2003657E2003657
      E2003657E2004571E7003657E20000000000F5FDFC003F6BF40065FFFF000FAB
      F1001B92FB00277AFF003367FF003169FF003169FF002877FF002480FF001C93
      FD0014A1F50060EFFF00476CF200F1FFFE0000000000E9830000EB911900EA86
      0600E9830000E9830000E9830000E9830000E9830000E9830000E9830000E983
      0000EA860600EB911900E983000000000000000000003B5FE9004672EB003D64
      EA003A5EE8003D5BE5004057E1006072E4006E81EA00546DEB004664EB003B5F
      E9003D64EA004672EB003B5FE90000000000000000003B5FE9004672EB003D64
      EA003B5FE9003B5FE9003B5FE9003B5FE9003B5FE9003B5FE9003B5FE9003B5F
      E9003D64EA004672EB003B5FE90000000000FBFEF9003D6EEC004167FD0066E5
      FF0061FFFD0063FCFF005DF4FD005DFBFB0062FAFF0063FFFF0062F8FF0063FE
      FF005EFDFB004269F9004C68FB00FEFCF40000000000EF890000F08E0800F194
      1200F1941400F1941400F1941400F1941400F1941400F1941400F1941400F194
      1400F1941200F08E0800EF89000000000000000000003F67EF00436DF0004774
      F1004875F1004874F1004871F1004C71EF005175F0005177F1004975F1004875
      F1004774F100436DF0003F67EF0000000000000000003F67EF00436DF0004774
      F1004875F1004875F1004875F1004875F1004875F1004875F1004875F1004875
      F1004774F100436DF0003F67EF0000000000F8FBFD003E6DED003F6EEA003C68
      FE003E69F9003A67FF003D6CF1003967FF003C68FB003B6EEB003C6CF0003D6A
      F5003D6BF5003967FF0056EBE900F9FFFB0000000000F58F0000F6900000F791
      0000F7910000F7910000F7910000F7910000F7910000F7910000F7910000F791
      0000F7910000F6900000F58F00000000000000000000436DF500446EF600456F
      F700456FF700456FF700456FF700456FF700456FF700456FF700456FF700456F
      F700456FF700446EF600436DF5000000000000000000436DF500446EF600456F
      F700456FF700456FF700456FF700456FF700456FF700456FF700456FF700456F
      F700456FF700446EF600436DF50000000000FAFFFB00FAFDFE00FFFEFC00F1FE
      FB00FDFFFF00F8FBF600F9FFFA00F8FFF900F6FDF800FDFEFB00F8FFFB00F8FD
      FA00F9FCFA00FEFFFD00F9FBFA00FFFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFBFA00F6FEFC00F5FD
      FC00FEFDF800F9FDF800F6FFF900FCFDF900FCFBF800F5FFF600F7FBFD00FDFC
      FE00F6FAF800F8FFF800FFFEFB00FCFFFE0000000000FCFCFC00FDFDFD00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FCFCFC00FBFBFB00FCFCFC00FCFCFC00FDFD
      FD00F9F9F900FDFDFD00FEFEFE000000000000000000FFFBFA00F6FEFC00F5FD
      FC00FEFDF800F9FDF800F6FFF900FCFDF900FCFBF800F5FFF600F7FBFD00FDFC
      FE00F6FAF800F8FFF800FFFEFB00FCFFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FCF30010B14D000AB5400010B7
      3F0001B64C000EB9460006AD460009BA47000AB44B0009AD4A0012BA430003B5
      40000FBE430006AE49000EB94700F6FBFB00F9F9F90083838300818181008282
      820084848400858585007D7D7D0086868600848484007F7F7F00868686008080
      8000888888007F7F7F0086868600FBFBFB00F8FCF30025AFEF000BA9EF0004A3
      FC0004A2FE0009A3FD0003A1FF0000A7EF0002A2FD0000A0FE0002A2FC0000A0
      FE0003A3FB0007A5F7001CA8FD00F6FBFB0000000000BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA000000000000000000FBFAFE0003B4490009BF4E000BF8
      7F0015F482001CFF850012F98C0018F7820015FC7A000FFE8F001CFD800015F8
      85000BF4870009C34E0005B64C00FFFFFD00FCFCFC00828282008B8B8B00BCBC
      BC00BCBCBC00C4C4C400C1C1C100BEBEBE00BEBEBE00C5C5C500C1C1C100BFBF
      BF00BCBCBC008D8D8D008585850000000000FBFAFE0011A5FD001CAAF70000F8
      FF0000F7F90000F9FA0000F6FF0000F8FA0000FCFF0000FCFF0000FCFF0000F7
      FF0000F1E70014AFE40003A7F200FFFFFD0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000FAFEF8000CBA4D0007F47E0004C7
      570005B54D0001B14B0005B8480004BE4D000ABD510007B2410001B1510004B6
      4F0006CE51000AF67F000CB94E00F6FBFC00FCFCFC0088888800B9B9B9009292
      92008484840081818100858585008A8A8A008B8B8B007F7F7F00838383008585
      850095959500BBBBBB0088888800FBFBFB00FAFEF80010A5FF0000F6FF0000C7
      F90000BAFF0000ABFF00009FFF0000A4FF0000A1FF0000A0FF0000ABFE0000BD
      F90000C2EA0000F7FF000CA4FD00F6FBFC0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000FEFEFA0005BA500010FB8B0007B5
      500002BC4B0006B94E0001B7450001B14D0007B1510002C14F0005B1470001B7
      4E0009B4520013F0860005C55800FBFCF700FDFDFD0088888800C2C2C2008585
      850088888800878787008383830081818100838383008C8C8C00808080008585
      850086868600BABABA0091919100FBFBFB00FEFEFA000CA4FF0000FBFF0000B7
      FF0000ABFF00009FFF00009FFA00009FF800009FFA00009FFF00009FFF0000A1
      FF0000C6F30000F6FD0002A5F400FBFCF70000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F1F9FE0010C6550013F07B0001C4
      540001B5460006B2510001B955000AC8500009C2500001B8500007C0560001BC
      4E0001BC540014FB7C0012BC5700F5FAFA00FAFAFA0092929200B7B7B7008F8F
      8F00828282008484840089898900919191008D8D8D00878787008E8E8E008888
      88008A8A8A00BEBEBE008D8D8D00FAFAFA00F1F9FE000BA6F80000FAFF0000B4
      FD00009EFE00009FFF00009FFF00009FFB0000A0F900009FF700009FE900009F
      FF0000B9FF0000FAFF0008A8F200F5FAFA0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F9FEF90009B54A000CFB94000CB9
      510008BB520001B9520003B14D0001BE4C0001B54B0007B74F0001B64D0009B7
      57000ABA480008E7870007BF5600F9FEFA00FCFCFC0084848400C4C4C4008989
      89008A8A8A008888880082828200898989008383830086868600848484008989
      890086868600B4B4B4008D8D8D00FDFDFD00F9FEF9000DA6F80000F9FF0000A6
      FF00009EFE0000A0FF00009FFA00009FF100009FEF00009FF50000A0F900009F
      FD0000B2FF0000F9FF0010A5FE00F9FEFA0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F8FBF60009BE5B000EF47D0001C0
      520003B2550001BA4F0006C04B0001B8510001B74C0004BE560001BA470001B7
      4F0001C35E000FFB80000BBD5700FAFCF800FAFAFA008E8E8E00BABABA008C8C
      8C0085858500878787008A8A8A0087878700858585008C8C8C00858585008686
      860091919100BFBFBF008D8D8D00FBFBFB00F8FBF60008A5FA0000FDFF0000BC
      FA00009FFF00009FFD00009FEB00009FEB00009FF100009FFE00009FF000009F
      FA0000B8FD0000F9FF0011A8F500FAFCF80000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000FAFDF80002BF5A0009EC7B0004C0
      530001AF4F0005C04B0001B94C0003B8510006BD4E0003B94C0001B84F0001B5
      4A0002C55E0012FC82000BC05D00F8FEF800FCFCFC008E8E8E00B4B4B4008D8D
      8D00818181008A8A8A0086868600878787008989890086868600868686008383
      830093939300C0C0C00090909000FCFCFC00FAFDF80002A2FC0000FFFF0000BE
      FD00009FFA00009FE700009FFA00009FF400009FFB00009FFD00009FFA00009F
      F20000BEF40000F4FF000FA5FF00F8FEF80000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F7FDFF0012C1560001EE810001C0
      500006B6500001AE500005B7430001C54C0002B64E0015BF5B0001C04C000FBF
      4B0001C352000AEC8F0010C95600F3FDFF00FDFDFD008F8F8F00B6B6B6008B8B
      8B008686860081818100828282008D8D8D0085858500909090008A8A8A008B8B
      8B008E8E8E00BABABA0094949400FDFDFD00F7FDFF0005A2FD0000FDFF0000BF
      F900009FFD00009FFA00009FFF00009FFD00009FFA00009FFB00009FFA00009F
      F80000A9FE0000F5FF000FA9F100F3FDFF0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F5FFFB000BC655000FF3880001BE
      570001B64A0002CF550004B2550002B74B0004BC4C0016BF5F0001BA4F0001BD
      510001C2610015F9800008D06000FDF7F900FDFDFD0091919100BCBCBC008C8C
      8C00848484009696960085858500858585008888880091919100878787008A8A
      8A0092929200BEBEBE009B9B9B00F9F9F900F5FFFB0002A7EF0000FDFF0000B8
      FF0000A0FC00009FFD00009FFF00009FFF00009FFF00009FFF0000A0FB0000A0
      F70000ACFF0000F4FF0011A7F800FDF7F90000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000FFFEFD0001C1530012EE850004C0
      600004C04A0007AC430001BC4E0010BE560005B7510001BE490006C5580004C5
      55000AC1570013FC940001C25800FFFBFB00FEFEFE008D8D8D00B9B9B9009090
      90008A8A8A007C7C7C00888888008D8D8D008787870088888800919191009090
      90008F8F8F00C6C6C6008F8F8F00FCFCFC00FFFEFD0003A6F40000FDFF0000BA
      FF0000A0FF00009FFD00009FF200009FF200009FE600009FF700009FEC0000A4
      FD0000BCFF0000F5FF000FA6F900FFFBFB0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000F5FDFC000EBD57000EF78E0001CC
      510001BE540001C3560001BD4D0008BC540006C7560001BF4E0002BE5C0003C0
      550004D25F000DEE810010C15900F1FFFE00FCFCFC008D8D8D00C0C0C0009393
      93008B8B8B008F8F8F00898989008B8B8B00929292008A8A8A008E8E8E008D8D
      8D009B9B9B00B7B7B70090909000FEFEFE00F5FDFC0004A5F60000FDFF0000CA
      D50000C2F20000ADFF00009FFF0000A1FF0000A1FF0000AAFF0000B2FF0000C3
      F50000C8E00000F1FF000EA8F400F1FFFE0000000000BBC8CA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BBC8CA000000000000000000FBFEF90004BB57000ABF470016F6
      9E0012F0890018FC8F0013F58D0008FA890011F78C0019FC980015FE8D0017F7
      8D000FF7950009C5520008BC5B00FEFCF400FDFDFD008B8B8B0089898900C5C5
      C500BBBBBB00C5C5C500BFBFBF00C0C0C000C0C0C000C8C8C800C5C5C500C1C1
      C100C3C3C300909090008D8D8D00FAFAFA00FBFEF90000A7EF0009A3FD0000EB
      FF0000FEFE0000FBFF0000F5FD0000F7F40000F9FF0000FDFF0000F8FF0000FC
      FF0000FBF90009A5FA0018A8FC00FEFCF40000000000BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8CA00BBC8
      CA00BBC8CA00BBC8CA000000000000000000F8FBFD0014C55B0001C557000AC1
      550009C151000AC55A0007C25F0012C15D0010CF66000ACB630008C4540010C2
      60000CD35E0002BC570013D66E00F9FFFB00FCFCFC0094949400909090008E8E
      8E008D8D8D009292920092929200929292009D9D9D0099999900909090009393
      93009C9C9C008B8B8B00A3A3A300FEFEFE00F8FBFD0001A6F10002A7EE0001A2
      FE0004A3FA0000A1FF0001A5F40000A1FF0002A2FB0000A6EF0000A5F30002A4
      F70001A5F70000A1FF0000E9DC00F9FFFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFFFB00FAFDFE00FFFEFC00F1FE
      FB00FDFFFF00F8FBF600F9FFFA00F8FFF900F6FDF800FDFEFB00F8FFFB00F8FD
      FA00F9FCFA00FEFFFD00F9FBFA00FFFFFE00FEFEFE00FDFDFD00FEFEFE00FCFC
      FC0000000000FAFAFA00FDFDFD00FDFDFD00FBFBFB00FDFDFD00FEFEFE00FCFC
      FC00FCFCFC0000000000FBFBFB0000000000FAFFFB00FAFDFE00FFFEFC00F1FE
      FB00FDFFFF00F8FBF600F9FFFA00F8FFF900F6FDF800FDFEFB00F8FFFB00F8FD
      FA00F9FCFA00FEFFFD00F9FBFA00FFFFFE00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FFFFFFFFFFFF0000800180018001
      0000800180018001000080018001800100008181800180010000818180018181
      0000818180018001000081818001800100008181808181810000800180418181
      0000818182418181000081818181818100008001800180010000800180018001
      00008001800180010000FFFFFFFFFFFFFFFF800080018000FFFF000000000000
      8003000000010000800300000000000080030000000000008003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000FFFF00000805000000000000000000000000000000000000
      000000000000}
  end
  object dlgOpen: TsOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofNoNetworkButton, ofOldStyleDialog, ofEnableSizing]
    ZipShowing = zsAsFile
    Left = 416
    Top = 56
  end
  object dlgSave: TsSaveDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofNoNetworkButton, ofEnableSizing]
    Left = 448
    Top = 56
  end
  object tblRecipients: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_ACTION_DEPARTMENT'
      'SET '
      '    ID_DEPARTMENT = :ID_DEPARTMENT,'
      '    ID_ACTION = :ID_ACTION'
      'WHERE'
      '    ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPARTMENT'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_ACTION_DEPARTMENT'
      'WHERE'
      '        ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPARTMENT'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_ACTION_DEPARTMENT('
      '    ID_ACTION_DEPARTMENT,'
      '    ID_DEPARTMENT,'
      '    ID_ACTION'
      ')'
      'VALUES('
      '    :ID_ACTION_DEPARTMENT,'
      '    :ID_DEPARTMENT,'
      '    :ID_ACTION'
      ')')
    RefreshSQL.Strings = (
      'SELECT AD.ID_ACTION_DEPARTMENT,'
      '       AD.ID_DEPARTMENT,'
      '       AD.ID_ACTION,'
      '       D.N_DEPARTMENTS'
      'FROM ACT_ACTION_DEPARTMENT AD'
      
        ' INNER JOIN  DEPARTMENTS D ON D.ID_DEPARTMENTS = AD.ID_DEPARTMEN' +
        'T'
      'WHERE(  D.ID_DEPARTMENTS <> 1'
      ' AND AD.ID_ACTION = :ID_ACTION'
      
        '     ) and (     AD.ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPART' +
        'MENT'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT AD.ID_ACTION_DEPARTMENT,'
      '       AD.ID_DEPARTMENT,'
      '       AD.ID_ACTION,'
      '       D.N_DEPARTMENTS'
      'FROM ACT_ACTION_DEPARTMENT AD'
      
        ' INNER JOIN  DEPARTMENTS D ON D.ID_DEPARTMENTS = AD.ID_DEPARTMEN' +
        'T'
      'WHERE D.ID_DEPARTMENTS <> 1'
      ' AND AD.ID_ACTION = :ID_ACTION')
    AutoUpdateOptions.UpdateTableName = 'ACT_ACTION_DEPARTMENT AD'
    AutoUpdateOptions.KeyFields = 'ID_ACTION_DEPARTMENT'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_ACTION_DEPARTMENT_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 823
    Top = 96
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldRecipientsID_ACTION_DEPARTMENT: TFIBIntegerField
      FieldName = 'ID_ACTION_DEPARTMENT'
    end
    object fbntgrfldRecipientsID_DEPARTMENT: TFIBIntegerField
      FieldName = 'ID_DEPARTMENT'
    end
    object fbntgrfldRecipientsID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fbstrngfldRecipientsN_DEPARTMENTS: TFIBStringField
      FieldName = 'N_DEPARTMENTS'
      Size = 30
      EmptyStrToNull = True
    end
  end
  object dsRecipients: TDataSource
    DataSet = tblRecipients
    Left = 854
    Top = 95
  end
  object tblConditions: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_ACTION_LINES'
      'SET '
      '    ID_ACTION = :ID_ACTION,'
      '    ID_EFFECT_TYPE = :ID_EFFECT_TYPE,'
      '    ORDER_LINE = :ORDER_LINE,'
      '    ID_CONDITION_TYPE = :ID_CONDITION_TYPE,'
      '    CODE_UNIT = :CODE_UNIT,'
      '    ID_UNIT = :ID_UNIT,'
      '    N_UNIT = :N_UNIT,'
      '    PATH_UNIT = :PATH_UNIT,'
      '    KN_EDIZM_UNIT = :KN_EDIZM_UNIT,'
      '    TRIG_AMOUNT_FROM = :TRIG_AMOUNT_FROM,'
      '    ID_COND_TRIG_AMOUNT_FROM = :ID_COND_TRIG_AMOUNT_FROM,'
      '    TRIG_AMOUNT_TO = :TRIG_AMOUNT_TO,'
      '    ID_COND_TRIG_AMOUNT_TO = :ID_COND_TRIG_AMOUNT_TO,'
      '    TRIG_SUM_FROM = :TRIG_SUM_FROM,'
      '    ID_COND_TRIG_SUM_FROM = :ID_COND_TRIG_SUM_FROM,'
      '    TRIG_SUM_TO = :TRIG_SUM_TO,'
      '    ID_COND_TRIG_SUM_TO = :ID_COND_TRIG_SUM_TO,'
      '    HINT_AMOUNT_FROM = :HINT_AMOUNT_FROM,'
      '    ID_COND_HINT_AMOUNT_FROM = :ID_COND_HINT_AMOUNT_FROM,'
      '    HINT_AMOUNT_TO = :HINT_AMOUNT_TO,'
      '    ID_COND_HINT_AMOUNT_TO = :ID_COND_HINT_AMOUNT_TO,'
      '    HINT_SUM_FROM = :HINT_SUM_FROM,'
      '    ID_COND_HINT_SUM_FROM = :ID_COND_HINT_SUM_FROM,'
      '    HINT_SUM_TO = :HINT_SUM_TO,'
      '    ID_COND_HINT_SUM_TO = :ID_COND_HINT_SUM_TO'
      '    '
      'WHERE'
      '    ID_ACTION_LINES = :OLD_ID_ACTION_LINES'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_ACTION_LINES'
      'WHERE'
      '        ID_ACTION_LINES = :OLD_ID_ACTION_LINES'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_ACTION_LINES('
      '    ID_ACTION_LINES,'
      '    ID_ACTION,'
      '    ID_EFFECT_TYPE,'
      '    ORDER_LINE,'
      '    ID_CONDITION_TYPE,'
      '    CODE_UNIT,'
      '    ID_UNIT,'
      '    N_UNIT,'
      '    PATH_UNIT,'
      '    KN_EDIZM_UNIT,'
      '    TRIG_AMOUNT_FROM,'
      '    ID_COND_TRIG_AMOUNT_FROM,'
      '    TRIG_AMOUNT_TO,'
      '    ID_COND_TRIG_AMOUNT_TO,'
      '    TRIG_SUM_FROM,'
      '    ID_COND_TRIG_SUM_FROM,'
      '    TRIG_SUM_TO,'
      '    ID_COND_TRIG_SUM_TO,'
      '    HINT_AMOUNT_FROM,'
      '    ID_COND_HINT_AMOUNT_FROM,'
      '    HINT_AMOUNT_TO,'
      '    ID_COND_HINT_AMOUNT_TO,'
      '    HINT_SUM_FROM,'
      '    ID_COND_HINT_SUM_FROM,'
      '    HINT_SUM_TO,'
      '    ID_COND_HINT_SUM_TO'
      ')'
      'VALUES('
      '    :ID_ACTION_LINES,'
      '    :ID_ACTION,'
      '    :ID_EFFECT_TYPE,'
      '    :ORDER_LINE,'
      '    :ID_CONDITION_TYPE,'
      '    :CODE_UNIT,'
      '    :ID_UNIT,'
      '    :N_UNIT,'
      '    :PATH_UNIT,'
      '    :KN_EDIZM_UNIT,'
      '    :TRIG_AMOUNT_FROM,'
      '    :ID_COND_TRIG_AMOUNT_FROM,'
      '    :TRIG_AMOUNT_TO,'
      '    :ID_COND_TRIG_AMOUNT_TO,'
      '    :TRIG_SUM_FROM,'
      '    :ID_COND_TRIG_SUM_FROM,'
      '    :TRIG_SUM_TO,'
      '    :ID_COND_TRIG_SUM_TO,'
      '    :HINT_AMOUNT_FROM,'
      '    :ID_COND_HINT_AMOUNT_FROM,'
      '    :HINT_AMOUNT_TO,'
      '    :ID_COND_HINT_AMOUNT_TO,'
      '    :HINT_SUM_FROM,'
      '    :ID_COND_HINT_SUM_FROM,'
      '    :HINT_SUM_TO,'
      '    :ID_COND_HINT_SUM_TO'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      ' AL.ID_ACTION_LINES,'
      ' AL.ID_ACTION,'
      ' AL.ID_EFFECT_TYPE,'
      ' AL.ORDER_LINE,'
      ' AL.ID_CONDITION_TYPE,'
      ' AL.CODE_UNIT,'
      ' AL.ID_UNIT,'
      ' AL.N_UNIT,'
      ' AL.PATH_UNIT,'
      ' AL.KN_EDIZM_UNIT,'
      ' AL.TRIG_AMOUNT_FROM,'
      ' AL.ID_COND_TRIG_AMOUNT_FROM,'
      ' AL.TRIG_AMOUNT_TO,'
      ' AL.ID_COND_TRIG_AMOUNT_TO,'
      ' AL.TRIG_SUM_FROM,'
      ' AL.ID_COND_TRIG_SUM_FROM,'
      ' AL.TRIG_SUM_TO,'
      ' AL.ID_COND_TRIG_SUM_TO,'
      ' AL.HINT_AMOUNT_FROM,'
      ' AL.ID_COND_HINT_AMOUNT_FROM,'
      ' AL.HINT_AMOUNT_TO,'
      ' AL.ID_COND_HINT_AMOUNT_TO,'
      ' AL.HINT_SUM_FROM,'
      ' AL.ID_COND_HINT_SUM_FROM,'
      ' AL.HINT_SUM_TO,'
      ' AL.ID_COND_HINT_SUM_TO,'
      ' E.KN_EFFECT_TYPE,'
      ' E.N_EFFECT_TYPE,'
      ' CT.N_CONDITION_TYPE,'
      ' A1.KN_CONDITION AS  N_COND_TRIG_AMOUNT_FROM,'
      ' A2.KN_CONDITION AS  N_COND_TRIG_AMOUNT_TO,'
      ' A3.KN_CONDITION AS  N_COND_TRIG_SUM_FROM,'
      ' A4.KN_CONDITION AS  N_COND_TRIG_SUM_TO,'
      ' A5.KN_CONDITION AS  N_COND_HINT_AMOUNT_FROM,'
      ' A6.KN_CONDITION AS  N_COND_HINT_AMOUNT_TO,'
      ' A7.KN_CONDITION AS  N_COND_HINT_SUM_FROM,'
      ' A8.KN_CONDITION AS  N_COND_HINT_SUM_TO'
      ''
      'FROM ACT_ACTION_LINES AL'
      
        ' INNER JOIN ACT_EFFECT_TYPE E ON E.ID_EFFECT_TYPE = AL.ID_EFFECT' +
        '_TYPE'
      
        ' INNER JOIN ACT_CONDITION_TYPE CT ON CT.ID_CONDITION_TYPE = AL.I' +
        'D_CONDITION_TYPE'
      
        ' INNER JOIN ACT_CONDITION A1 ON A1.ID_CONDITION = AL.ID_COND_TRI' +
        'G_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A2 ON A2.ID_CONDITION = AL.ID_COND_TRI' +
        'G_AMOUNT_TO'
      
        ' INNER JOIN ACT_CONDITION A3 ON A3.ID_CONDITION = AL.ID_COND_TRI' +
        'G_SUM_FROM'
      
        ' INNER JOIN ACT_CONDITION A4 ON A4.ID_CONDITION = AL.ID_COND_TRI' +
        'G_SUM_TO'
      
        ' INNER JOIN ACT_CONDITION A5 ON A5.ID_CONDITION = AL.ID_COND_HIN' +
        'T_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A6 ON A6.ID_CONDITION = AL.ID_COND_HIN' +
        'T_AMOUNT_TO'
      
        ' INNER JOIN ACT_CONDITION A7 ON A7.ID_CONDITION = AL.ID_COND_HIN' +
        'T_SUM_FROM'
      
        ' INNER JOIN ACT_CONDITION A8 ON A8.ID_CONDITION = AL.ID_COND_HIN' +
        'T_SUM_TO'
      'WHERE(  AL.ID_ACTION = :ID_ACTION'
      '     ) and (     AL.ID_ACTION_LINES = :OLD_ID_ACTION_LINES'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      ' AL.ID_ACTION_LINES,'
      ' AL.ID_ACTION,'
      ' AL.ID_EFFECT_TYPE,'
      ' AL.ORDER_LINE,'
      ' AL.ID_CONDITION_TYPE,'
      ' AL.CODE_UNIT,'
      ' AL.ID_UNIT,'
      ' AL.N_UNIT,'
      ' AL.PATH_UNIT,'
      ' AL.KN_EDIZM_UNIT,'
      ' AL.TRIG_AMOUNT_FROM,'
      ' AL.ID_COND_TRIG_AMOUNT_FROM,'
      ' AL.TRIG_AMOUNT_TO,'
      ' AL.ID_COND_TRIG_AMOUNT_TO,'
      ' AL.TRIG_SUM_FROM,'
      ' AL.ID_COND_TRIG_SUM_FROM,'
      ' AL.TRIG_SUM_TO,'
      ' AL.ID_COND_TRIG_SUM_TO,'
      ' AL.HINT_AMOUNT_FROM,'
      ' AL.ID_COND_HINT_AMOUNT_FROM,'
      ' AL.HINT_AMOUNT_TO,'
      ' AL.ID_COND_HINT_AMOUNT_TO,'
      ' AL.HINT_SUM_FROM,'
      ' AL.ID_COND_HINT_SUM_FROM,'
      ' AL.HINT_SUM_TO,'
      ' AL.ID_COND_HINT_SUM_TO,'
      ' E.KN_EFFECT_TYPE,'
      ' E.N_EFFECT_TYPE,'
      ' CT.N_CONDITION_TYPE,'
      ' A1.KN_CONDITION AS  N_COND_TRIG_AMOUNT_FROM,'
      ' A2.KN_CONDITION AS  N_COND_TRIG_AMOUNT_TO,'
      ' A3.KN_CONDITION AS  N_COND_TRIG_SUM_FROM,'
      ' A4.KN_CONDITION AS  N_COND_TRIG_SUM_TO,'
      ' A5.KN_CONDITION AS  N_COND_HINT_AMOUNT_FROM,'
      ' A6.KN_CONDITION AS  N_COND_HINT_AMOUNT_TO,'
      ' A7.KN_CONDITION AS  N_COND_HINT_SUM_FROM,'
      ' A8.KN_CONDITION AS  N_COND_HINT_SUM_TO'
      ''
      'FROM ACT_ACTION_LINES AL'
      
        ' INNER JOIN ACT_EFFECT_TYPE E ON E.ID_EFFECT_TYPE = AL.ID_EFFECT' +
        '_TYPE'
      
        ' INNER JOIN ACT_CONDITION_TYPE CT ON CT.ID_CONDITION_TYPE = AL.I' +
        'D_CONDITION_TYPE'
      
        ' INNER JOIN ACT_CONDITION A1 ON A1.ID_CONDITION = AL.ID_COND_TRI' +
        'G_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A2 ON A2.ID_CONDITION = AL.ID_COND_TRI' +
        'G_AMOUNT_TO'
      
        ' INNER JOIN ACT_CONDITION A3 ON A3.ID_CONDITION = AL.ID_COND_TRI' +
        'G_SUM_FROM'
      
        ' INNER JOIN ACT_CONDITION A4 ON A4.ID_CONDITION = AL.ID_COND_TRI' +
        'G_SUM_TO'
      
        ' INNER JOIN ACT_CONDITION A5 ON A5.ID_CONDITION = AL.ID_COND_HIN' +
        'T_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A6 ON A6.ID_CONDITION = AL.ID_COND_HIN' +
        'T_AMOUNT_TO'
      
        ' INNER JOIN ACT_CONDITION A7 ON A7.ID_CONDITION = AL.ID_COND_HIN' +
        'T_SUM_FROM'
      
        ' INNER JOIN ACT_CONDITION A8 ON A8.ID_CONDITION = AL.ID_COND_HIN' +
        'T_SUM_TO'
      'WHERE AL.ID_ACTION = :ID_ACTION'
      'ORDER BY AL.ID_EFFECT_TYPE, AL.CODE_UNIT')
    AutoUpdateOptions.UpdateTableName = 'ACT_ACTION_LINES'
    AutoUpdateOptions.KeyFields = 'ID_ACTION_LINES'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_ACTION_LINES_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 823
    Top = 128
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldConditionsID_ACTION_LINES: TFIBIntegerField
      FieldName = 'ID_ACTION_LINES'
    end
    object fbntgrfldConditionsID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fbntgrfldConditionsORDER_LINE: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ORDER_LINE'
    end
    object fbntgrfldConditionsID_CONDITION_TYPE: TFIBIntegerField
      FieldName = 'ID_CONDITION_TYPE'
    end
    object fbstrngfldConditionsN_CONDITION_TYPE: TFIBStringField
      FieldName = 'N_CONDITION_TYPE'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsKN_EFFECT_TYPE: TFIBStringField
      FieldName = 'KN_EFFECT_TYPE'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsN_EFFECT_TYPE: TFIBStringField
      FieldName = 'N_EFFECT_TYPE'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsCODE_UNIT: TFIBStringField
      FieldName = 'CODE_UNIT'
      Size = 10
      EmptyStrToNull = True
    end
    object fbntgrfldConditionsID_UNIT: TFIBIntegerField
      FieldName = 'ID_UNIT'
    end
    object fbstrngfldConditionsN_UNIT: TFIBStringField
      FieldName = 'N_UNIT'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsKN_EDIZM_UNIT: TFIBStringField
      FieldName = 'KN_EDIZM_UNIT'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsTRIG_AMOUNT_FROM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_AMOUNT_FROM'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_TRIG_AMOUNT_FROM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_AMOUNT_FROM'
    end
    object fbstrngfldConditionsN_COND_TRIG_AMOUNT_FROM: TFIBStringField
      FieldName = 'N_COND_TRIG_AMOUNT_FROM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsTRIG_AMOUNT_TO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_AMOUNT_TO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_TRIG_AMOUNT_TO: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_AMOUNT_TO'
    end
    object fbstrngfldConditionsN_COND_TRIG_AMOUNT_TO: TFIBStringField
      FieldName = 'N_COND_TRIG_AMOUNT_TO'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsTRIG_SUM_FROM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_SUM_FROM'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_TRIG_SUM_FROM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_SUM_FROM'
    end
    object fbstrngfldConditionsN_COND_TRIG_SUM_FROM: TFIBStringField
      FieldName = 'N_COND_TRIG_SUM_FROM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsTRIG_SUM_TO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_SUM_TO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_TRIG_SUM_TO: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_SUM_TO'
    end
    object fbcdfldConditionsHINT_AMOUNT_FROM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'HINT_AMOUNT_FROM'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_HINT_AMOUNT_FROM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_HINT_AMOUNT_FROM'
    end
    object fbstrngfldConditionsN_COND_HINT_AMOUNT_FROM: TFIBStringField
      FieldName = 'N_COND_HINT_AMOUNT_FROM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsHINT_AMOUNT_TO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'HINT_AMOUNT_TO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_HINT_AMOUNT_TO: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_HINT_AMOUNT_TO'
    end
    object fbstrngfldConditionsN_COND_HINT_AMOUNT_TO: TFIBStringField
      FieldName = 'N_COND_HINT_AMOUNT_TO'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsHINT_SUM_FROM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'HINT_SUM_FROM'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_HINT_SUM_FROM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_HINT_SUM_FROM'
    end
    object fbstrngfldConditionsN_COND_HINT_SUM_FROM: TFIBStringField
      FieldName = 'N_COND_HINT_SUM_FROM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldConditionsHINT_SUM_TO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'HINT_SUM_TO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldConditionsID_COND_HINT_SUM_TO: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_HINT_SUM_TO'
    end
    object fbstrngfldConditionsN_COND_TRIG_SUM_TO: TFIBStringField
      FieldName = 'N_COND_TRIG_SUM_TO'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsN_COND_HINT_SUM_TO: TFIBStringField
      FieldName = 'N_COND_HINT_SUM_TO'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldConditionsPATH_UNIT: TFIBStringField
      FieldName = 'PATH_UNIT'
      Size = 250
      EmptyStrToNull = True
    end
    object fbntgrfldConditionsID_EFFECT_TYPE: TFIBIntegerField
      FieldName = 'ID_EFFECT_TYPE'
    end
  end
  object dsConditions: TDataSource
    DataSet = tblConditions
    Left = 854
    Top = 127
  end
  object tblOperations: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_ACTION_LINES_ACT'
      'SET '
      ' ID_ACTION = :ID_ACTION,'
      ' ID_EFFECT_TYPE = :ID_EFFECT_TYPE,'
      ' ID_CONDITION_TYPE = :ID_CONDITION_TYPE,'
      ' ORDER_LINE = :ORDER_LINE,'
      ' CODE_UNIT = :CODE_UNIT,'
      ' ID_UNIT = :ID_UNIT,'
      ' N_UNIT = :N_UNIT,'
      ' PATH_UNIT = :PATH_UNIT,'
      ' KN_EDIZM_UNIT = :KN_EDIZM_UNIT,'
      ' TRIG_AMOUNT_FROM = :TRIG_AMOUNT_FROM,'
      ' ID_COND_TRIG_AMOUNT_FROM = :ID_COND_TRIG_AMOUNT_FROM,'
      ' TRIG_AMOUNT_TO = :TRIG_AMOUNT_TO,'
      ' ID_COND_TRIG_AMOUNT_TO = :ID_COND_TRIG_AMOUNT_TO,'
      ' TRIG_PRICE = :TRIG_PRICE,'
      ' ID_OPERATION_TYPE = :ID_OPERATION_TYPE'
      'WHERE'
      ' ID_ACTION_LINES_ACT = :OLD_ID_ACTION_LINES_ACT'
      ' ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      ' ACT_ACTION_LINES_ACT'
      'WHERE'
      '  ID_ACTION_LINES_ACT = :OLD_ID_ACTION_LINES_ACT'
      ' ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_ACTION_LINES_ACT('
      ' ID_ACTION_LINES_ACT,'
      ' ID_ACTION,'
      ' ID_EFFECT_TYPE,'
      ' ID_CONDITION_TYPE,'
      ' ORDER_LINE,'
      ' CODE_UNIT,'
      ' ID_UNIT,'
      ' N_UNIT,'
      ' PATH_UNIT,'
      ' KN_EDIZM_UNIT,'
      ' TRIG_AMOUNT_FROM,'
      ' ID_COND_TRIG_AMOUNT_FROM,'
      ' TRIG_AMOUNT_TO,'
      ' ID_COND_TRIG_AMOUNT_TO,'
      ' TRIG_PRICE,'
      ' ID_OPERATION_TYPE'
      ')'
      'VALUES('
      ' :ID_ACTION_LINES_ACT,'
      ' :ID_ACTION,'
      ' :ID_EFFECT_TYPE,'
      ' :ID_CONDITION_TYPE,'
      ' :ORDER_LINE,'
      ' :CODE_UNIT,'
      ' :ID_UNIT,'
      ' :N_UNIT,'
      ' :PATH_UNIT,'
      ' :KN_EDIZM_UNIT,'
      ' :TRIG_AMOUNT_FROM,'
      ' :ID_COND_TRIG_AMOUNT_FROM,'
      ' :TRIG_AMOUNT_TO,'
      ' :ID_COND_TRIG_AMOUNT_TO,'
      ' :TRIG_PRICE,'
      ' :ID_OPERATION_TYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '  ALA.ID_ACTION_LINES_ACT,'
      '  ALA.ID_ACTION,'
      '  ALA.ID_EFFECT_TYPE,'
      '  ALA.ID_CONDITION_TYPE,'
      '  ALA.ORDER_LINE,'
      '  ALA.CODE_UNIT,'
      '  ALA.ID_UNIT,'
      '  ALA.N_UNIT,'
      '  ALA.PATH_UNIT,'
      '  ALA.KN_EDIZM_UNIT,'
      '  ALA.TRIG_AMOUNT_FROM,'
      '  ALA.ID_COND_TRIG_AMOUNT_FROM,'
      '  ALA.TRIG_AMOUNT_TO,'
      '  ALA.ID_COND_TRIG_AMOUNT_TO,'
      '  ALA.TRIG_PRICE,'
      '  ALA.ID_OPERATION_TYPE,'
      '  E.KN_EFFECT_TYPE,'
      '  E.N_EFFECT_TYPE,'
      '  CT.N_CONDITION_TYPE,'
      '  A1.KN_CONDITION AS  N_COND_TRIG_AMOUNT_FROM,'
      '  A2.KN_CONDITION AS  N_COND_TRIG_AMOUNT_TO,'
      '  O.KN_OPERATION_TYPE,'
      '  O.N_OPERATION_TYPE'
      'FROM ACT_ACTION_LINES_ACT ALA'
      
        ' INNER JOIN ACT_EFFECT_TYPE E ON E.ID_EFFECT_TYPE = ALA.ID_EFFEC' +
        'T_TYPE '
      
        ' INNER JOIN ACT_CONDITION_TYPE CT ON CT.ID_CONDITION_TYPE = ALA.' +
        'ID_CONDITION_TYPE'
      
        ' INNER JOIN ACT_CONDITION A1 ON A1.ID_CONDITION = ALA.ID_COND_TR' +
        'IG_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A2 ON A2.ID_CONDITION = ALA.ID_COND_TR' +
        'IG_AMOUNT_TO'
      
        ' INNER JOIN ACT_OPERATION_TYPE O ON O.ID_OPERATION_TYPE = ALA.ID' +
        '_OPERATION_TYPE'
      'WHERE(  ALA.ID_ACTION = :ID_ACTION'
      '  ) and (  ALA.ID_ACTION_LINES_ACT = :OLD_ID_ACTION_LINES_ACT'
      '  )'
      ' ')
    SelectSQL.Strings = (
      'SELECT'
      '  ALA.ID_ACTION_LINES_ACT,'
      '  ALA.ID_ACTION,'
      '  ALA.ID_EFFECT_TYPE,'
      '  ALA.ID_CONDITION_TYPE,'
      '  ALA.ORDER_LINE,'
      '  ALA.CODE_UNIT,'
      '  ALA.ID_UNIT,'
      '  ALA.N_UNIT,'
      '  ALA.PATH_UNIT,'
      '  ALA.KN_EDIZM_UNIT,'
      '  ALA.TRIG_AMOUNT_FROM,'
      '  ALA.ID_COND_TRIG_AMOUNT_FROM,'
      '  ALA.TRIG_AMOUNT_TO,'
      '  ALA.ID_COND_TRIG_AMOUNT_TO,'
      '  ALA.TRIG_PRICE,'
      '  ALA.ID_OPERATION_TYPE,'
      '  E.KN_EFFECT_TYPE,'
      '  E.N_EFFECT_TYPE,'
      '  CT.N_CONDITION_TYPE,'
      '  A1.KN_CONDITION AS  N_COND_TRIG_AMOUNT_FROM,'
      '  A2.KN_CONDITION AS  N_COND_TRIG_AMOUNT_TO,'
      '  O.KN_OPERATION_TYPE,'
      '  O.N_OPERATION_TYPE'
      'FROM ACT_ACTION_LINES_ACT ALA'
      
        ' INNER JOIN ACT_EFFECT_TYPE E ON E.ID_EFFECT_TYPE = ALA.ID_EFFEC' +
        'T_TYPE '
      
        ' INNER JOIN ACT_CONDITION_TYPE CT ON CT.ID_CONDITION_TYPE = ALA.' +
        'ID_CONDITION_TYPE'
      
        ' INNER JOIN ACT_CONDITION A1 ON A1.ID_CONDITION = ALA.ID_COND_TR' +
        'IG_AMOUNT_FROM'
      
        ' INNER JOIN ACT_CONDITION A2 ON A2.ID_CONDITION = ALA.ID_COND_TR' +
        'IG_AMOUNT_TO'
      
        ' INNER JOIN ACT_OPERATION_TYPE O ON O.ID_OPERATION_TYPE = ALA.ID' +
        '_OPERATION_TYPE'
      'WHERE ALA.ID_ACTION = :ID_ACTION'
      'ORDER BY  ALA.ORDER_LINE')
    AutoUpdateOptions.UpdateTableName = 'ACT_ACTION_LINES_ACT'
    AutoUpdateOptions.KeyFields = 'ID_ACTION_LINES_ACT'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_ACTION_LINES_ACT_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 823
    Top = 160
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldOperationsID_ACTION_LINES_ACT: TFIBIntegerField
      FieldName = 'ID_ACTION_LINES_ACT'
    end
    object fbntgrfldOperationsID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fbntgrfldOperationsID_EFFECT_TYPE: TFIBIntegerField
      FieldName = 'ID_EFFECT_TYPE'
    end
    object fbntgrfldOperationsID_CONDITION_TYPE: TFIBIntegerField
      FieldName = 'ID_CONDITION_TYPE'
    end
    object fbntgrfldOperationsORDER_LINE: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ORDER_LINE'
    end
    object fbstrngfldOperationsCODE_UNIT: TFIBStringField
      FieldName = 'CODE_UNIT'
      Size = 10
      EmptyStrToNull = True
    end
    object fbntgrfldOperationsID_UNIT: TFIBIntegerField
      FieldName = 'ID_UNIT'
    end
    object fbstrngfldOperationsN_UNIT: TFIBStringField
      FieldName = 'N_UNIT'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsPATH_UNIT: TFIBStringField
      FieldName = 'PATH_UNIT'
      Size = 250
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsKN_EDIZM_UNIT: TFIBStringField
      FieldName = 'KN_EDIZM_UNIT'
      Size = 10
      EmptyStrToNull = True
    end
    object fbcdfldOperationsTRIG_AMOUNT_FROM: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_AMOUNT_FROM'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldOperationsID_COND_TRIG_AMOUNT_FROM: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_AMOUNT_FROM'
    end
    object fbcdfldOperationsTRIG_AMOUNT_TO: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_AMOUNT_TO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldOperationsID_COND_TRIG_AMOUNT_TO: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_COND_TRIG_AMOUNT_TO'
    end
    object fbcdfldOperationsTRIG_PRICE: TFIBBCDField
      DefaultExpression = '0'
      FieldName = 'TRIG_PRICE'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Size = 4
      RoundByScale = True
    end
    object fbntgrfldOperationsID_OPERATION_TYPE: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'ID_OPERATION_TYPE'
    end
    object fbstrngfldOperationsN_CONDITION_TYPE: TFIBStringField
      FieldName = 'N_CONDITION_TYPE'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsN_COND_TRIG_AMOUNT_FROM: TFIBStringField
      FieldName = 'N_COND_TRIG_AMOUNT_FROM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsN_COND_TRIG_AMOUNT_TO: TFIBStringField
      FieldName = 'N_COND_TRIG_AMOUNT_TO'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsKN_OPERATION_TYPE: TFIBStringField
      FieldName = 'KN_OPERATION_TYPE'
      Size = 5
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsN_OPERATION_TYPE: TFIBStringField
      FieldName = 'N_OPERATION_TYPE'
      Size = 50
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsKN_EFFECT_TYPE: TFIBStringField
      FieldName = 'KN_EFFECT_TYPE'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldOperationsN_EFFECT_TYPE: TFIBStringField
      FieldName = 'N_EFFECT_TYPE'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object dsOperations: TDataSource
    DataSet = tblOperations
    Left = 854
    Top = 159
  end
  object tblObjects: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_ACTION_OBJECTS'
      'SET '
      ' ID_ACTION = :ID_ACTION,'
      ' ID_OBJECTS = :ID_OBJECTS,'
      ' OBJECT_VALUE = :OBJECT_VALUE'
      'WHERE'
      ' ID_ACTION_OBJECTS = :OLD_ID_ACTION_OBJECTS'
      ' ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      ' ACT_ACTION_OBJECTS'
      'WHERE'
      '  ID_ACTION_OBJECTS = :OLD_ID_ACTION_OBJECTS'
      ' ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_ACTION_OBJECTS('
      ' ID_ACTION_OBJECTS,'
      ' ID_ACTION,'
      ' ID_OBJECTS,'
      ' OBJECT_VALUE'
      ')'
      'VALUES('
      ' :ID_ACTION_OBJECTS,'
      ' :ID_ACTION,'
      ' :ID_OBJECTS,'
      ' :OBJECT_VALUE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      ' AO.ID_ACTION_OBJECTS,'
      ' AO.ID_ACTION,'
      ' AO.ID_OBJECTS,'
      ' AO.OBJECT_VALUE,'
      ' O.N_OBJECTS,'
      ' O.ID_OBJECTS_TYPE'
      'FROM ACT_ACTION_OBJECTS AO'
      ' INNER JOIN ACT_OBJECTS O ON O.ID_OBJECTS = AO.ID_OBJECTS'
      'WHERE(  AO.ID_ACTION = :ID_ACTION'
      '  ) and (  AO.ID_ACTION_OBJECTS = :OLD_ID_ACTION_OBJECTS'
      '  )'
      ' ')
    SelectSQL.Strings = (
      'SELECT'
      ' AO.ID_ACTION_OBJECTS,'
      ' AO.ID_ACTION,'
      ' AO.ID_OBJECTS,'
      ' AO.OBJECT_VALUE,'
      ' O.N_OBJECTS,'
      ' O.ID_OBJECTS_TYPE'
      'FROM ACT_ACTION_OBJECTS AO'
      ' INNER JOIN ACT_OBJECTS O ON O.ID_OBJECTS = AO.ID_OBJECTS'
      'WHERE AO.ID_ACTION = :ID_ACTION'
      'ORDER BY O.ID_OBJECTS, O.OBJECT_VALUE')
    AutoUpdateOptions.UpdateTableName = 'ACT_ACTION_OBJECTS'
    AutoUpdateOptions.KeyFields = 'ID_ACTION_OBJECTS'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_ACTION_OBJECTS_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 823
    Top = 192
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldObjectsID_ACTION_OBJECTS: TFIBIntegerField
      FieldName = 'ID_ACTION_OBJECTS'
    end
    object fbntgrfldObjectsID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fbntgrfldObjectsID_OBJECTS: TFIBIntegerField
      FieldName = 'ID_OBJECTS'
    end
    object fbstrngfldObjectsN_OBJECTS: TFIBStringField
      FieldName = 'N_OBJECTS'
      Size = 100
      EmptyStrToNull = True
    end
    object fbntgrfldObjectsID_OBJECTS_TYPE: TFIBIntegerField
      FieldName = 'ID_OBJECTS_TYPE'
    end
    object fbstrngfldObjectsOBJECT_VALUE: TFIBStringField
      FieldName = 'OBJECT_VALUE'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsObjects: TDataSource
    DataSet = tblObjects
    Left = 854
    Top = 191
  end
  object actlstActions: TActionList
    Images = FormMain.ImageListBtn
    Left = 219
    Top = 149
    object actActionSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1040#1082#1094#1080#1102' '#1074' '#1092#1072#1081#1083
      ImageIndex = 4
      OnExecute = actActionSaveExecute
    end
    object actActionLoad: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1040#1082#1094#1080#1102' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 5
      OnExecute = actActionLoadExecute
    end
    object actActionRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
      ImageIndex = 3
      OnExecute = actActionRefreshExecute
    end
    object actActionAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1040#1082#1094#1080#1102
      ImageIndex = 0
      OnExecute = actActionAddExecute
    end
    object actActionDublicate: TAction
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1076#1091#1073#1083#1080#1082#1072#1090' '#1040#1082#1094#1080#1080
      ImageIndex = 41
      OnExecute = actActionDublicateExecute
    end
    object actActionEdit: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1040#1082#1094#1080#1102
      ImageIndex = 1
      OnExecute = actActionEditExecute
    end
    object actActionDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1094#1080#1102
      ImageIndex = 2
      OnExecute = actActionDeleteExecute
    end
    object actActionReview: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1040#1082#1094#1080#1080
      ImageIndex = 18
      OnExecute = actActionReviewExecute
    end
    object actActionActive: TAction
      AutoCheck = True
      Caption = #1057#1086#1073#1088#1072#1085#1086
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1080#1079#1085#1072#1082' '#1057#1086#1073#1088#1072#1085#1086'/'#1053#1077' '#1057#1086#1073#1088#1072#1085#1086
      ImageIndex = 28
      OnExecute = actActionActiveExecute
    end
    object actActionTransmit: TAction
      AutoCheck = True
      Caption = #1040#1082#1090#1080#1074#1085#1086
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1080#1079#1085#1072#1082' '#1043#1086#1090#1086#1074#1085#1086#1089#1090#1080' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1040#1082#1094#1080#1080
      ImageIndex = 44
      OnExecute = actActionTransmitExecute
    end
  end
end
