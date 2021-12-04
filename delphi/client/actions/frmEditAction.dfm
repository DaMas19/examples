object FormEditAction: TFormEditAction
  Left = 54
  Top = 102
  ActiveControl = dbEditREMARK
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1040#1082#1094#1080#1103
  ClientHeight = 853
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TsPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 853
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    ExplicitWidth = 652
    ExplicitHeight = 592
    object pgctrlActionList: TsPageControl
      AlignWithMargins = True
      Left = 4
      Top = 257
      Width = 912
      Height = 592
      ActivePage = tbConditions
      Align = alClient
      Images = FormMain.ImageListNew1
      TabOrder = 0
      ActiveIsBold = True
      SkinData.SkinSection = 'PAGECONTROL'
      object tbConditions: TsTabSheet
        Caption = #1059#1089#1083#1086#1074#1080#1103
        ImageIndex = 20
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 6
        ExplicitTop = 23
        ExplicitWidth = 831
        ExplicitHeight = 374
        object pnlCondition: TsPanel
          Left = 531
          Top = 0
          Width = 373
          Height = 563
          Align = alRight
          TabOrder = 0
          Visible = False
          SkinData.SkinSection = 'PANEL'
          ExplicitLeft = 1038
          ExplicitHeight = 626
          object pnl1: TsPanel
            Left = 1
            Top = 529
            Width = 371
            Height = 33
            Align = alBottom
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
            ExplicitTop = 530
            object btnOkCondition: TsBitBtn
              Left = 77
              Top = 2
              Width = 105
              Height = 28
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              TabOrder = 0
              OnClick = btnOkConditionClick
              Glyph.Data = {
                FA020000424DFA02000000000000FA0100002800000010000000100000000100
                08000000000000010000120B0000120B00007100000071000000FF00FF006633
                33006E372F00753A2C007F4026008844220091491E009A4D1A00A4521400AE57
                0F00B55A0C00CC660000BF600600D06F0E00D5781A00DB822B00DF8C3A00E597
                4A00E9A15800EFAC6900F3B47500FFCB9800D07E0300E6A64C00F5CC9100EFC8
                8E00F6CE9400F7D09700FEDEAE00D7830000D8850300DB8B1100DE921D00E199
                2B00E19A2C00E19B2D00E39F3700E3A03700E5A33E00E6A74500EAAF5300EFBC
                6C00F2C47B00F5C98500F7D09100F9D49B00F8D39B00F9D59E00FAD7A100FBD9
                A400FBD9A500FBDAA700FCDCAB00FEE0B100FAE2BB00F9E1B800FBE4BD00DABB
                7600C8C0750089821B00C7C68700919B3700F2F3E900F2F3EB0099AF59009CB9
                6300F6F8F2003E5E080099B766009DBE6800577F1B005E9445003EA3220040AB
                2C0010970A006CAC69005B9B5900009800000093000000810000006E0000006A
                0000148E14006CB06B000370060006940A00068C0A0006890A0006850A000DA5
                1300159019000C8815000E9017000F97190011A11B000A7C130026BF3A0053EA
                7C0053E97C0053E77C0056EE820034CA630036CD660039CF690046DD76004DE4
                7D0054EC840063FC960065FE980064FD970066FF9900FFFFFF0000000000000C
                0A090807060504030201000000000B1728272521201F1E1D1D16010000000D29
                1B2E2F303133341C3523020000000E2A1A424B50544C3F3E3822030000000F2B
                18535B66655F4C3F362204000000102C405C686D6B675F4C3724050000001141
                5D696D6E6E6B675F4726060000003D5E6A6C6E6E6E6E6B675F46070000004E64
                6E6E6E63636E6E6B675F430000004D6E6E6E62565A636E6E6B675F0000004860
                6E6155443C52636E6E6B675F00001949594A45322D3A57636E6E6B675F000015
                3914131211103B57636E6E6B67510000000000000000000057636E6E6B500000
                00000000000000000057636E50000000000000000000000000004F580000}
              SkinData.SkinSection = 'BUTTON'
            end
            object btnCancelCondition: TsBitBtn
              Left = 188
              Top = 2
              Width = 105
              Height = 28
              Caption = #1054#1090#1084#1077#1085#1072
              TabOrder = 1
              OnClick = btnCancelConditionClick
              Glyph.Data = {
                CA020000424DCA02000000000000CA0100002800000010000000100000000100
                08000000000000010000120B0000120B00006500000065000000FF00FF003766
                FF003967FC00406FFF004572FF004F7BFF001B4CFF002353FC002959FF003060
                FF003462FD006488FF000033FF000031FB00002EF5000235FF000638FF00083B
                FF000C3EFF000E3EFF001040FC00103FF800153FF5001644FF001642FA001946
                FF001D49FF001F4BFF00224DFF00224EFF002551FF002650FD002A54FF002C56
                FF003861FF003960FF003B5FF9003E64FF003F64FF005576FF005577FF005576
                FE005F7DFE006784FF00738EFF007690FF007A93FF007D96FF008AA2FF008EA4
                FF00002BEF000028E8000027E700092EE3000A2EE0000B2FE2000D32E500173F
                ED004B67F2005E7CFF00617DF9006682FC006C82F2007C94FF007F96FF00869B
                FF008A9FFF008EA2FF000025E2000022DC00001FD6000525DA000728DF001A37
                DD00203FE3002742E000304BE5003651E900001DD2000019CA00021CCF001127
                CB000017C5000012BE000013BE000118C8000E1FC1000011BD00000DB300000D
                B2000818BC001120BD00111AB2001721B8002C36C0000007A6000004A0000000
                9A0000009900FFFFFF0000000000000000000060616262626200000000000000
                0059564A1E1B17134858620000000000544B232125282B2C3B194E620000004F
                4C261016515B5D5E3E421C4E620000492712345700005F5C3C3F42195800453A
                2215550000595A24283C3E3B4862442D0837000054521820245C5E2C13623340
                0936004F500D0F185A5F5D2B1A6232410138464714110D5259005B281D620E43
                0439350706145054000051251E610D3D0B020A0907474F00005716214A60001F
                3105030A35460000553410235600000C2A300502393836371512264B59000000
                0C29310B0401090822274D5300000000000C1F3D432F2E2D3A494F0000000000
                0000000D0E323344450000000000}
              SkinData.SkinSection = 'BUTTON'
            end
          end
          object scrlbxConditions: TsScrollBox
            Left = 1
            Top = 1
            Width = 371
            Height = 528
            HorzScrollBar.Visible = False
            VertScrollBar.Smooth = True
            VertScrollBar.Style = ssFlat
            Align = alClient
            AutoMouseWheel = True
            BorderStyle = bsNone
            TabOrder = 1
            OnMouseWheelDown = scrlbxConditionsMouseWheelDown
            OnMouseWheelUp = scrlbxConditionsMouseWheelUp
            SkinData.SkinSection = 'PANEL_LOW'
            object pgctrlCondition: TsPageControl
              Left = 4
              Top = -1
              Width = 371
              Height = 523
              ActivePage = tbConditionMain
              Images = FormMain.ImageListNew1
              TabOrder = 0
              SkinData.SkinSection = 'PAGECONTROL'
              object tbConditionMain: TsTabSheet
                Caption = #1059#1089#1083#1086#1074#1080#1077
                ImageIndex = 154
                SkinData.CustomColor = False
                SkinData.CustomFont = False
                ExplicitTop = 24
                ExplicitHeight = 495
                object grpConditionCond: TsGroupBox
                  Left = 0
                  Top = 0
                  Width = 363
                  Height = 201
                  Align = alTop
                  Caption = ' '#1057#1091#1097#1085#1086#1089#1090#1100' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  SkinData.SkinSection = 'GROUPBOX'
                  object grpConditionMain: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 18
                    Width = 353
                    Height = 49
                    Align = alTop
                    Color = clBtnFace
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentBackground = False
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 0
                    SkinData.SkinSection = 'GROUPBOX'
                    object lbl35: TLabel
                      Left = 26
                      Top = 19
                      Width = 46
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1042#1083#1080#1103#1085#1080#1077':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl36: TLabel
                      Left = 160
                      Top = 19
                      Width = 48
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1055#1086#1088#1103#1076#1086#1082':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                      Visible = False
                    end
                    object lcbID_EFFECT_TYPE: TDBLookupComboboxEh
                      Left = 75
                      Top = 16
                      Width = 70
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_EFFECT_TYPE'
                      DataSource = dsConditions
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'N_EFFECT_TYPE'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          Width = 30
                        end
                        item
                          FieldName = 'KN_EFFECT_TYPE'
                          Title.Caption = #1050#1088'.'
                          Width = 20
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_EFFECT_TYPE'
                      ListField = 'N_EFFECT_TYPE'
                      ListSource = dsEffectType
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                    end
                    object edORDER_LINE: TDBNumberEditEh
                      Left = 211
                      Top = 16
                      Width = 70
                      Height = 19
                      Color = 16776175
                      DataField = 'ORDER_LINE'
                      DataSource = dsConditions
                      DecimalPlaces = 0
                      EditButton.Style = ebsUpDownEh
                      EditButton.Visible = True
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      MaxValue = 100.000000000000000000
                      ParentFont = False
                      TabOrder = 1
                      Visible = False
                    end
                  end
                  object grpConditionUnit: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 73
                    Width = 353
                    Height = 120
                    Align = alTop
                    Caption = ' '#1054#1073#1098#1077#1082#1090' '
                    Color = clBtnFace
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNone
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentBackground = False
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 1
                    SkinData.SkinSection = 'GROUPBOX'
                    object lbl37: TLabel
                      Left = 50
                      Top = 19
                      Width = 22
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1058#1080#1087':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl38: TLabel
                      Left = 48
                      Top = 41
                      Width = 24
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1050#1086#1076':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl39: TLabel
                      Left = 20
                      Top = 68
                      Width = 52
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl40: TLabel
                      Left = 27
                      Top = 92
                      Width = 45
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1045#1076'. '#1080#1079#1084'.:'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lcbCONDITION_TYPE: TDBLookupComboboxEh
                      Left = 75
                      Top = 16
                      Width = 150
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_CONDITION_TYPE'
                      DataSource = dsConditions
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'N_CONDITION_TYPE'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          Width = 200
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_CONDITION_TYPE'
                      ListField = 'N_CONDITION_TYPE'
                      ListSource = dsConditionType
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                      OnChange = lcbCONDITION_TYPEChange
                      OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                    end
                    object dbEditCODE_UNIT: TDBEditEh
                      Left = 75
                      Top = 39
                      Width = 150
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'CODE_UNIT'
                      DataSource = dsConditions
                      EditButtons = <
                        item
                          Hint = #1042#1099#1073#1086#1088' '#1080#1079' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
                          Style = ebsPlusEh
                          Width = 20
                          OnClick = dbEditCODE_UNITEditButtons0Click
                        end>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ReadOnly = True
                      ShowHint = True
                      TabOrder = 1
                      Visible = True
                      EditMask = ''
                    end
                    object dbEditN_UNIT: TDBEditEh
                      Left = 74
                      Top = 64
                      Width = 257
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'N_UNIT'
                      DataSource = dsConditions
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ReadOnly = True
                      ShowHint = True
                      TabOrder = 2
                      Visible = True
                      EditMask = ''
                    end
                    object dbEditKN_EDIZM_UNIT: TDBEditEh
                      Left = 74
                      Top = 88
                      Width = 151
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'KN_EDIZM_UNIT'
                      DataSource = dsConditions
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ReadOnly = True
                      ShowHint = True
                      TabOrder = 3
                      Visible = True
                      EditMask = ''
                    end
                  end
                end
                object grpConditionCond2: TsGroupBox
                  Left = 0
                  Top = 201
                  Width = 363
                  Height = 293
                  Align = alClient
                  Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  SkinData.SkinSection = 'GROUPBOX'
                  ExplicitHeight = 294
                  object grpDrawdown: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 18
                    Width = 353
                    Height = 135
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
                      Width = 343
                      Height = 50
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
                        Top = 21
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
                        Left = 173
                        Top = 21
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
                      object lcbCOND_TRIG_AMOUNT_FROM: TDBLookupComboboxEh
                        Left = 38
                        Top = 17
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_TRIG_AMOUNT_FROM'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_TRIG_AMOUNT_FROM
                        ParentFont = False
                        TabOrder = 0
                        Visible = True
                        OnChange = lcbCOND_TRIG_AMOUNT_FROMChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edTRIG_AMOUNT_FROM: TDBNumberEditEh
                        Left = 95
                        Top = 18
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
                        TabOrder = 1
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                      object lcbCOND_TRIG_AMOUNT_TO: TDBLookupComboboxEh
                        Left = 196
                        Top = 18
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_TRIG_AMOUNT_TO'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_TRIG_AMOUNT_TO
                        ParentFont = False
                        TabOrder = 2
                        Visible = True
                        OnChange = lcbCOND_TRIG_AMOUNT_TOChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edTRIG_AMOUNT_TO: TDBNumberEditEh
                        Left = 253
                        Top = 18
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
                        TabOrder = 3
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                    end
                    object grpConditionAmountHint: TsGroupBox
                      AlignWithMargins = True
                      Left = 5
                      Top = 74
                      Width = 343
                      Height = 50
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
                        Top = 22
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
                        Left = 173
                        Top = 22
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
                      object lcbCOND_HINT_AMOUNT_FROM: TDBLookupComboboxEh
                        Left = 38
                        Top = 18
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_HINT_AMOUNT_FROM'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_HINT_AMOUNT_FROM
                        ParentFont = False
                        TabOrder = 0
                        Visible = True
                        OnChange = lcbCOND_HINT_AMOUNT_FROMChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edHINT_AMOUNT_FROM: TDBNumberEditEh
                        Left = 95
                        Top = 19
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
                        TabOrder = 1
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                      object lcbCOND_HINT_AMOUNT_TO: TDBLookupComboboxEh
                        Left = 196
                        Top = 19
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_HINT_AMOUNT_TO'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_HINT_AMOUNT_TO
                        ParentFont = False
                        TabOrder = 2
                        Visible = True
                        OnChange = lcbCOND_HINT_AMOUNT_TOChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edHINT_AMOUNT_TO: TDBNumberEditEh
                        Left = 253
                        Top = 19
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
                        TabOrder = 3
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                    end
                  end
                  object grp1: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 159
                    Width = 353
                    Height = 129
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
                    ExplicitHeight = 130
                    object grpConditionHintSUM: TsGroupBox
                      AlignWithMargins = True
                      Left = 5
                      Top = 74
                      Width = 343
                      Height = 50
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
                        Top = 22
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
                        Left = 173
                        Top = 22
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
                      object lcbCOND_HINT_SUM_FROM: TDBLookupComboboxEh
                        Left = 38
                        Top = 18
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_HINT_SUM_FROM'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_HINT_SUM_FROM
                        ParentFont = False
                        TabOrder = 0
                        Visible = True
                        OnChange = lcbCOND_HINT_SUM_FROMChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edHINT_SUM_FROM: TDBNumberEditEh
                        Left = 95
                        Top = 19
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
                        TabOrder = 1
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                      object lcbCOND_HINT_SUM_TO: TDBLookupComboboxEh
                        Left = 196
                        Top = 19
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_HINT_SUM_TO'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_HINT_SUM_TO
                        ParentFont = False
                        TabOrder = 2
                        Visible = True
                        OnChange = lcbCOND_HINT_SUM_TOChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edHINT_SUM_TO: TDBNumberEditEh
                        Left = 253
                        Top = 19
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
                        TabOrder = 3
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                    end
                    object grpDrawdownSUM: TsGroupBox
                      AlignWithMargins = True
                      Left = 5
                      Top = 18
                      Width = 343
                      Height = 50
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
                        Top = 21
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
                        Left = 173
                        Top = 21
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
                      object lcbCOND_TRIG_SUM_FROM: TDBLookupComboboxEh
                        Left = 38
                        Top = 17
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_TRIG_SUM_FROM'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_TRIG_SUM_FROM
                        ParentFont = False
                        TabOrder = 0
                        Visible = True
                        OnChange = lcbCOND_TRIG_SUM_FROMChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edTRIG_SUM_FROM: TDBNumberEditEh
                        Left = 95
                        Top = 18
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
                        TabOrder = 1
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                      object lcbCOND_TRIG_SUM_TO: TDBLookupComboboxEh
                        Left = 196
                        Top = 18
                        Width = 54
                        Height = 19
                        Color = 16776175
                        DataField = 'ID_COND_TRIG_SUM_TO'
                        DataSource = dsConditions
                        DropDownBox.ColumnDefValues.Title.TitleButton = True
                        DropDownBox.Columns = <
                          item
                            FieldName = 'KN_CONDITION'
                            Font.Charset = RUSSIAN_CHARSET
                            Font.Color = clWindowText
                            Font.Height = -11
                            Font.Name = 'Tahoma'
                            Font.Style = [fsBold]
                            Title.Caption = #1050#1088'.'
                            Width = 110
                          end
                          item
                            FieldName = 'N_CONDITION'
                            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          end>
                        DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                        DropDownBox.SortLocal = True
                        DropDownBox.UseMultiTitle = True
                        DropDownBox.AutoDrop = True
                        DropDownBox.Rows = 4
                        DropDownBox.ShowTitles = True
                        DropDownBox.Sizable = True
                        DropDownBox.Width = 150
                        EditButton.Width = 15
                        EditButtons = <>
                        Font.Charset = RUSSIAN_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'Tahoma'
                        Font.Style = []
                        Flat = True
                        KeyField = 'ID_CONDITION'
                        ListField = 'KN_CONDITION'
                        ListSource = dsCOND_TRIG_SUM_TO
                        ParentFont = False
                        TabOrder = 2
                        Visible = True
                        OnChange = lcbCOND_TRIG_SUM_TOChange
                        OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                      end
                      object edTRIG_SUM_TO: TDBNumberEditEh
                        Left = 253
                        Top = 18
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
                        TabOrder = 3
                        Visible = True
                        OnExit = edTRIG_AMOUNT_FROMExit
                      end
                    end
                  end
                end
              end
            end
          end
        end
        object pnlConditionList: TsPanel
          Left = 0
          Top = 0
          Width = 531
          Height = 563
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          ExplicitHeight = 564
          object toolbrCondition: TToolBar
            Left = 1
            Top = 1
            Width = 529
            Height = 43
            ButtonHeight = 38
            ButtonWidth = 57
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
            object btnRefreshConditions: TToolButton
              Left = 0
              Top = 0
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Caption = #1054#1073#1085#1086#1074#1080#1090#1100
              ImageIndex = 3
              OnClick = btnRefreshConditionsClick
            end
            object btn5: TToolButton
              Left = 57
              Top = 0
              Width = 15
              Caption = 'btn2'
              ImageIndex = 26
              Style = tbsSeparator
            end
            object btnAddConditions: TToolButton
              Left = 72
              Top = 0
              Hint = #1044#1086#1073#1072#1074#1080#1090#1100
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              ImageIndex = 0
              OnClick = btnAddConditionsClick
            end
            object btnEditConditions: TToolButton
              Left = 129
              Top = 0
              Hint = #1048#1079#1084#1077#1085#1080#1090#1100
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ImageIndex = 1
              OnClick = btnEditConditionsClick
            end
            object btn7: TToolButton
              Left = 186
              Top = 0
              Width = 15
              Caption = 'btn3'
              ImageIndex = 40
              Style = tbsSeparator
            end
            object btnDeleteConditions: TToolButton
              Left = 201
              Top = 0
              Hint = #1059#1076#1072#1083#1080#1090#1100
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ImageIndex = 2
              OnClick = btnDeleteConditionsClick
            end
            object btn9: TToolButton
              Left = 258
              Top = 0
              Width = 15
              Caption = 'btn1'
              ImageIndex = 26
              Style = tbsSeparator
            end
          end
          object DBGridConditions: TDBGridEh
            Left = 1
            Top = 44
            Width = 529
            Height = 518
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
            STFilter.Visible = True
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            OnGetBtnParams = DBGridConditionsGetBtnParams
            OnGetCellParams = DBGridConditionsGetCellParams
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object tbOperations: TsTabSheet
        Caption = #1044#1077#1081#1089#1090#1074#1080#1103
        ImageIndex = 108
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 6
        ExplicitTop = 23
        ExplicitWidth = 0
        ExplicitHeight = 0
        object pnlOperationEdit: TsPanel
          Left = 541
          Top = 0
          Width = 363
          Height = 563
          Align = alRight
          TabOrder = 0
          Visible = False
          SkinData.SkinSection = 'PANEL'
          ExplicitLeft = 1048
          ExplicitHeight = 559
          object pnl3: TsPanel
            Left = 1
            Top = 529
            Width = 361
            Height = 33
            Align = alBottom
            TabOrder = 0
            SkinData.SkinSection = 'PANEL'
            object btn4: TsBitBtn
              Left = 72
              Top = 2
              Width = 105
              Height = 28
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              TabOrder = 0
              OnClick = btn4Click
              Glyph.Data = {
                FA020000424DFA02000000000000FA0100002800000010000000100000000100
                08000000000000010000120B0000120B00007100000071000000FF00FF006633
                33006E372F00753A2C007F4026008844220091491E009A4D1A00A4521400AE57
                0F00B55A0C00CC660000BF600600D06F0E00D5781A00DB822B00DF8C3A00E597
                4A00E9A15800EFAC6900F3B47500FFCB9800D07E0300E6A64C00F5CC9100EFC8
                8E00F6CE9400F7D09700FEDEAE00D7830000D8850300DB8B1100DE921D00E199
                2B00E19A2C00E19B2D00E39F3700E3A03700E5A33E00E6A74500EAAF5300EFBC
                6C00F2C47B00F5C98500F7D09100F9D49B00F8D39B00F9D59E00FAD7A100FBD9
                A400FBD9A500FBDAA700FCDCAB00FEE0B100FAE2BB00F9E1B800FBE4BD00DABB
                7600C8C0750089821B00C7C68700919B3700F2F3E900F2F3EB0099AF59009CB9
                6300F6F8F2003E5E080099B766009DBE6800577F1B005E9445003EA3220040AB
                2C0010970A006CAC69005B9B5900009800000093000000810000006E0000006A
                0000148E14006CB06B000370060006940A00068C0A0006890A0006850A000DA5
                1300159019000C8815000E9017000F97190011A11B000A7C130026BF3A0053EA
                7C0053E97C0053E77C0056EE820034CA630036CD660039CF690046DD76004DE4
                7D0054EC840063FC960065FE980064FD970066FF9900FFFFFF0000000000000C
                0A090807060504030201000000000B1728272521201F1E1D1D16010000000D29
                1B2E2F303133341C3523020000000E2A1A424B50544C3F3E3822030000000F2B
                18535B66655F4C3F362204000000102C405C686D6B675F4C3724050000001141
                5D696D6E6E6B675F4726060000003D5E6A6C6E6E6E6E6B675F46070000004E64
                6E6E6E63636E6E6B675F430000004D6E6E6E62565A636E6E6B675F0000004860
                6E6155443C52636E6E6B675F00001949594A45322D3A57636E6E6B675F000015
                3914131211103B57636E6E6B67510000000000000000000057636E6E6B500000
                00000000000000000057636E50000000000000000000000000004F580000}
              SkinData.SkinSection = 'BUTTON'
            end
            object btn6: TsBitBtn
              Left = 183
              Top = 2
              Width = 105
              Height = 28
              Caption = #1054#1090#1084#1077#1085#1072
              TabOrder = 1
              OnClick = btn6Click
              Glyph.Data = {
                CA020000424DCA02000000000000CA0100002800000010000000100000000100
                08000000000000010000120B0000120B00006500000065000000FF00FF003766
                FF003967FC00406FFF004572FF004F7BFF001B4CFF002353FC002959FF003060
                FF003462FD006488FF000033FF000031FB00002EF5000235FF000638FF00083B
                FF000C3EFF000E3EFF001040FC00103FF800153FF5001644FF001642FA001946
                FF001D49FF001F4BFF00224DFF00224EFF002551FF002650FD002A54FF002C56
                FF003861FF003960FF003B5FF9003E64FF003F64FF005576FF005577FF005576
                FE005F7DFE006784FF00738EFF007690FF007A93FF007D96FF008AA2FF008EA4
                FF00002BEF000028E8000027E700092EE3000A2EE0000B2FE2000D32E500173F
                ED004B67F2005E7CFF00617DF9006682FC006C82F2007C94FF007F96FF00869B
                FF008A9FFF008EA2FF000025E2000022DC00001FD6000525DA000728DF001A37
                DD00203FE3002742E000304BE5003651E900001DD2000019CA00021CCF001127
                CB000017C5000012BE000013BE000118C8000E1FC1000011BD00000DB300000D
                B2000818BC001120BD00111AB2001721B8002C36C0000007A6000004A0000000
                9A0000009900FFFFFF0000000000000000000060616262626200000000000000
                0059564A1E1B17134858620000000000544B232125282B2C3B194E620000004F
                4C261016515B5D5E3E421C4E620000492712345700005F5C3C3F42195800453A
                2215550000595A24283C3E3B4862442D0837000054521820245C5E2C13623340
                0936004F500D0F185A5F5D2B1A6232410138464714110D5259005B281D620E43
                0439350706145054000051251E610D3D0B020A0907474F00005716214A60001F
                3105030A35460000553410235600000C2A300502393836371512264B59000000
                0C29310B0401090822274D5300000000000C1F3D432F2E2D3A494F0000000000
                0000000D0E323344450000000000}
              SkinData.SkinSection = 'BUTTON'
            end
          end
          object scrlbxOperations: TsScrollBox
            Left = 1
            Top = 1
            Width = 361
            Height = 528
            HorzScrollBar.Visible = False
            VertScrollBar.Smooth = True
            VertScrollBar.Style = ssFlat
            Align = alClient
            AutoMouseWheel = True
            BorderStyle = bsNone
            TabOrder = 1
            SkinData.SkinSection = 'PANEL_LOW'
            ExplicitLeft = 5
            ExplicitTop = -3
            object pgctrlOperation: TsPageControl
              Left = 4
              Top = 0
              Width = 360
              Height = 369
              ActivePage = tbOperationMain
              Images = FormMain.ImageListNew1
              TabOrder = 0
              SkinData.SkinSection = 'PAGECONTROL'
              object tbOperationMain: TsTabSheet
                Caption = #1044#1077#1081#1089#1090#1074#1080#1077
                ImageIndex = 154
                SkinData.CustomColor = False
                SkinData.CustomFont = False
                object grpOperationConditions: TsGroupBox
                  Left = 0
                  Top = 0
                  Width = 352
                  Height = 195
                  Align = alTop
                  Caption = ' '#1057#1091#1097#1085#1086#1089#1090#1100' '
                  Color = clBtnFace
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
                  object grpOperationObject: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 73
                    Width = 342
                    Height = 117
                    Align = alTop
                    Caption = ' '#1054#1073#1098#1077#1082#1090' '
                    Color = clBtnHighlight
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentBackground = False
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 1
                    SkinData.SkinSection = 'GROUPBOX'
                    object lbl43: TLabel
                      Left = 50
                      Top = 19
                      Width = 22
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1058#1080#1087':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl44: TLabel
                      Left = 48
                      Top = 41
                      Width = 24
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1050#1086#1076':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl45: TLabel
                      Left = 20
                      Top = 68
                      Width = 52
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl46: TLabel
                      Left = 27
                      Top = 92
                      Width = 45
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1045#1076'. '#1080#1079#1084'.:'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lcbCONDITION_TYPE_OPER: TDBLookupComboboxEh
                      Left = 75
                      Top = 16
                      Width = 150
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_CONDITION_TYPE'
                      DataSource = dsOperations
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'N_CONDITION_TYPE'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          Width = 200
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_CONDITION_TYPE'
                      ListField = 'N_CONDITION_TYPE'
                      ListSource = dsConditionType
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                      OnChange = lcbCONDITION_TYPE_OPERChange
                      OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                    end
                    object dbEditCODE_UNIT_OPER: TDBEditEh
                      Left = 75
                      Top = 37
                      Width = 150
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'CODE_UNIT'
                      DataSource = dsOperations
                      EditButtons = <
                        item
                          Hint = #1042#1099#1073#1086#1088' '#1080#1079' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
                          Style = ebsPlusEh
                          Width = 20
                          OnClick = dbEditCODE_UNIT_OPEREditButtons0Click
                        end>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 1
                      Visible = True
                      EditMask = ''
                    end
                    object dbEditN_UNIT_OPER: TDBEditEh
                      Left = 74
                      Top = 64
                      Width = 257
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'N_UNIT'
                      DataSource = dsOperations
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 2
                      Visible = True
                      EditMask = ''
                    end
                    object dbEditKN_EDIZM_UNIT_OPER: TDBEditEh
                      Left = 74
                      Top = 88
                      Width = 151
                      Height = 21
                      AutoSize = False
                      Color = 16776175
                      Ctl3D = True
                      DataField = 'KN_EDIZM_UNIT'
                      DataSource = dsOperations
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentCtl3D = False
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 3
                      Visible = True
                      EditMask = ''
                    end
                  end
                  object sGroupBox1: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 18
                    Width = 342
                    Height = 49
                    Align = alTop
                    Color = clBtnFace
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentBackground = False
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 0
                    SkinData.SkinSection = 'GROUPBOX'
                    object Label1: TLabel
                      Left = 26
                      Top = 18
                      Width = 46
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1042#1083#1080#1103#1085#1080#1077':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object Label2: TLabel
                      Left = 160
                      Top = 18
                      Width = 48
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1055#1086#1088#1103#1076#1086#1082':'
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                      Visible = False
                    end
                    object lcbID_EFFECT_TYPE2: TDBLookupComboboxEh
                      Left = 75
                      Top = 15
                      Width = 70
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_EFFECT_TYPE'
                      DataSource = dsOperations
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'N_EFFECT_TYPE'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                          Width = 30
                        end
                        item
                          FieldName = 'KN_EFFECT_TYPE'
                          Title.Caption = #1050#1088'.'
                          Width = 20
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_EFFECT_TYPE'
                      ListField = 'N_EFFECT_TYPE'
                      ListSource = dsEffectTypeOper
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                    end
                    object DBNumberEditEh1: TDBNumberEditEh
                      Left = 211
                      Top = 15
                      Width = 70
                      Height = 19
                      Color = 16776175
                      DataField = 'ORDER_LINE'
                      DataSource = dsConditions
                      DecimalPlaces = 0
                      EditButton.Style = ebsUpDownEh
                      EditButton.Visible = True
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      MaxValue = 100.000000000000000000
                      ParentFont = False
                      TabOrder = 1
                      Visible = False
                    end
                  end
                end
                object grp7: TsGroupBox
                  Left = 0
                  Top = 195
                  Width = 352
                  Height = 145
                  Align = alTop
                  Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '
                  Color = clBtnFace
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 1
                  SkinData.SkinSection = 'GROUPBOX'
                  object grp8: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 18
                    Width = 342
                    Height = 57
                    Hint = 
                      #1058#1086#1074#1072#1088' - '#1085#1072' '#1082#1086#1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1074' '#1087#1086#1079#1080#1094#1080#1080' '#1079#1072#1082#1072#1079#1072#13#10#1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1072' - '#1085#1072' '#1082#1086 +
                      #1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1074' '#1082#1072#1078#1076#1086#1081' '#1087#1086#1079#1080#1094#1080#1080' '#1075#1088#1091#1087#1087#1099' '#1079#1072#1082#1072#1079#1072
                    Align = alTop
                    Caption = ' '#1057#1088#1072#1073#1086#1090#1082#1072' ('#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086') '
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
                      Left = 15
                      Top = 25
                      Width = 18
                      Height = 13
                      Margins.Bottom = 0
                      Alignment = taRightJustify
                      Caption = #1054#1090':'
                      Enabled = False
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      Transparent = True
                    end
                    object lbl48: TLabel
                      Left = 173
                      Top = 25
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
                    object lcbCOND_TRIG_AMOUNT_FROM_OPER: TDBLookupComboboxEh
                      Left = 38
                      Top = 22
                      Width = 59
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_COND_TRIG_AMOUNT_FROM'
                      DataSource = dsOperations
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'KN_CONDITION'
                          Font.Charset = RUSSIAN_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Title.Caption = #1050#1088'.'
                          Width = 110
                        end
                        item
                          FieldName = 'N_CONDITION'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      Enabled = False
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_CONDITION'
                      ListField = 'KN_CONDITION'
                      ListSource = dsCOND_TRIG_AMOUNT_FROM
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                      OnChange = lcbCOND_TRIG_AMOUNT_FROM_OPERChange
                      OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                    end
                    object edTRIG_AMOUNT_FROM_OPER: TDBNumberEditEh
                      Left = 98
                      Top = 22
                      Width = 67
                      Height = 19
                      Color = 16776175
                      DataField = 'TRIG_AMOUNT_FROM'
                      DataSource = dsOperations
                      DecimalPlaces = 3
                      Enabled = False
                      EditButtons = <>
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clNavy
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      ParentFont = False
                      TabOrder = 1
                      Visible = True
                      OnExit = edTRIG_AMOUNT_FROMExit
                    end
                    object lcbCOND_TRIG_AMOUNT_TO_OPER: TDBLookupComboboxEh
                      Left = 196
                      Top = 22
                      Width = 59
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_COND_TRIG_AMOUNT_TO'
                      DataSource = dsOperations
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'KN_CONDITION'
                          Title.Caption = #1050#1088'.'
                          Width = 100
                        end
                        item
                          FieldName = 'N_CONDITION'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 4
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_CONDITION'
                      ListField = 'KN_CONDITION'
                      ListSource = dsCOND_TRIG_AMOUNT_TO_OPER
                      ParentFont = False
                      TabOrder = 2
                      Visible = True
                      OnChange = lcbCOND_TRIG_AMOUNT_TO_OPERChange
                      OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                    end
                    object edTRIG_AMOUNT_TO_OPER: TDBNumberEditEh
                      Left = 261
                      Top = 22
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
                      TabOrder = 3
                      Visible = True
                      OnExit = edTRIG_AMOUNT_FROMExit
                    end
                  end
                  object grp9: TsGroupBox
                    AlignWithMargins = True
                    Left = 5
                    Top = 81
                    Width = 342
                    Height = 57
                    Hint = #1055#1088#1072#1074#1080#1083#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1094#1077#1085#1099
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
                      Left = 61
                      Top = 25
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
                    object lcbOPERATION_TYPE: TDBLookupComboboxEh
                      Left = 118
                      Top = 22
                      Width = 51
                      Height = 19
                      Color = 16776175
                      DataField = 'ID_OPERATION_TYPE'
                      DataSource = dsOperations
                      DropDownBox.ColumnDefValues.Title.TitleButton = True
                      DropDownBox.Columns = <
                        item
                          FieldName = 'KN_OPERATION_TYPE'
                          Font.Charset = RUSSIAN_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -11
                          Font.Name = 'Tahoma'
                          Font.Style = [fsBold]
                          Title.Caption = #1050#1088'.'
                          Width = 100
                        end
                        item
                          FieldName = 'N_OPERATION_TYPE'
                          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                        end>
                      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh, dlgRowLinesEh, dlgAutoSortMarkingEh, dlgMultiSortMarkingEh]
                      DropDownBox.SortLocal = True
                      DropDownBox.UseMultiTitle = True
                      DropDownBox.AutoDrop = True
                      DropDownBox.Rows = 5
                      DropDownBox.ShowTitles = True
                      DropDownBox.Sizable = True
                      DropDownBox.Width = 150
                      EditButton.Width = 15
                      EditButtons = <>
                      Font.Charset = RUSSIAN_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      Flat = True
                      KeyField = 'ID_OPERATION_TYPE'
                      ListField = 'KN_OPERATION_TYPE'
                      ListSource = dsOperationType
                      ParentFont = False
                      TabOrder = 0
                      Visible = True
                      OnNotInList = lcbCOND_TRIG_AMOUNT_FROMNotInList
                    end
                    object edTRIG_PRICE: TDBNumberEditEh
                      Left = 173
                      Top = 22
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
                      MaxValue = 100000.000000000000000000
                      MinValue = 0.010000000000000000
                      ParentFont = False
                      TabOrder = 1
                      Visible = True
                    end
                  end
                end
              end
            end
          end
        end
        object pnlOperationsList: TsPanel
          Left = 0
          Top = 0
          Width = 541
          Height = 563
          Align = alClient
          TabOrder = 1
          SkinData.SkinSection = 'PANEL'
          object toolbrOperation: TToolBar
            Left = 1
            Top = 1
            Width = 539
            Height = 43
            ButtonHeight = 38
            ButtonWidth = 57
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
            object btnRefreshOperation: TToolButton
              Left = 0
              Top = 0
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Caption = #1054#1073#1085#1086#1074#1080#1090#1100
              ImageIndex = 3
              OnClick = btnRefreshOperationClick
            end
            object btn10: TToolButton
              Left = 57
              Top = 0
              Width = 15
              Caption = 'btn2'
              ImageIndex = 26
              Style = tbsSeparator
            end
            object btnAddOperation: TToolButton
              Left = 72
              Top = 0
              Hint = #1044#1086#1073#1072#1074#1080#1090#1100
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              ImageIndex = 0
              OnClick = btnAddOperationClick
            end
            object btnEditOperation: TToolButton
              Left = 129
              Top = 0
              Hint = #1048#1079#1084#1077#1085#1080#1090#1100
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              ImageIndex = 1
              OnClick = btnEditOperationClick
            end
            object btn13: TToolButton
              Left = 186
              Top = 0
              Width = 15
              Caption = 'btn3'
              ImageIndex = 40
              Style = tbsSeparator
            end
            object btnDeleteOperation: TToolButton
              Left = 201
              Top = 0
              Hint = #1059#1076#1072#1083#1080#1090#1100
              Caption = #1059#1076#1072#1083#1080#1090#1100
              ImageIndex = 2
              OnClick = btnDeleteOperationClick
            end
            object btn15: TToolButton
              Left = 258
              Top = 0
              Width = 15
              Caption = 'btn1'
              ImageIndex = 26
              Style = tbsSeparator
            end
          end
          object DBGridOperations: TDBGridEh
            Left = 1
            Top = 44
            Width = 539
            Height = 518
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
            STFilter.Visible = True
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            OnGetBtnParams = DBGridOperationsGetBtnParams
            OnGetCellParams = DBGridOperationsGetCellParams
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object tbObjects: TsTabSheet
        Caption = #1054#1073#1098#1077#1082#1090#1099
        ImageIndex = 124
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object toolbrObjects: TToolBar
          Left = 0
          Top = 0
          Width = 904
          Height = 43
          ButtonHeight = 38
          ButtonWidth = 57
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
          object btnRefreshObj: TToolButton
            Left = 0
            Top = 0
            Hint = #1054#1073#1085#1086#1074#1080#1090#1100
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            ImageIndex = 3
            OnClick = btnRefreshObjClick
          end
          object btn12: TToolButton
            Left = 57
            Top = 0
            Width = 15
            Caption = 'btn2'
            ImageIndex = 26
            Style = tbsSeparator
          end
          object btnEditObj: TToolButton
            Left = 72
            Top = 0
            Hint = #1048#1079#1084#1077#1085#1080#1090#1100
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            ImageIndex = 1
            OnClick = btnEditObjClick
          end
          object btn18: TToolButton
            Left = 129
            Top = 0
            Width = 15
            Caption = 'btn3'
            ImageIndex = 40
            Style = tbsSeparator
          end
          object btnDeleteObj: TToolButton
            Left = 144
            Top = 0
            Hint = #1059#1076#1072#1083#1080#1090#1100
            Caption = #1059#1076#1072#1083#1080#1090#1100
            ImageIndex = 2
            OnClick = btnDeleteObjClick
          end
          object btn20: TToolButton
            Left = 201
            Top = 0
            Width = 15
            Caption = 'btn1'
            ImageIndex = 26
            Style = tbsSeparator
          end
        end
        object DBGridActionObjects: TDBGridEh
          Left = 0
          Top = 68
          Width = 904
          Height = 495
          HelpContext = 2320
          Align = alClient
          AllowedOperations = [alopUpdateEh]
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
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghTraceColSizing, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          ReadOnly = True
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
          VertScrollBar.VisibleMode = sbAlwaysShowEh
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object dbnvgrL: TDBNavigator
          Left = 0
          Top = 43
          Width = 904
          Height = 25
          DataSource = dsObjects
          VisibleButtons = [nbPost, nbCancel]
          Align = alTop
          TabOrder = 2
        end
      end
      object tbPayType: TsTabSheet
        Caption = #1042#1080#1076#1099' '#1086#1087#1083#1072#1090#1099
        ImageIndex = 23
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object toolbrPayTypes: TToolBar
          Left = 0
          Top = 0
          Width = 904
          Height = 43
          ButtonHeight = 38
          ButtonWidth = 57
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
          object btnRefreshPayType: TToolButton
            Left = 0
            Top = 0
            Caption = #1054#1073#1085#1086#1074#1080#1090#1100
            ImageIndex = 3
            OnClick = btnRefreshPayTypeClick
          end
          object btn11: TToolButton
            Left = 57
            Top = 0
            Width = 15
            Caption = 'btn2'
            ImageIndex = 26
            Style = tbsSeparator
          end
          object btnEditPayType: TToolButton
            Left = 72
            Top = 0
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            ImageIndex = 1
            OnClick = btnEditPayTypeClick
          end
          object btn14: TToolButton
            Left = 129
            Top = 0
            Width = 15
            Caption = 'btn3'
            ImageIndex = 40
            Style = tbsSeparator
          end
          object btnDeletePayType: TToolButton
            Left = 144
            Top = 0
            Caption = #1059#1076#1072#1083#1080#1090#1100
            ImageIndex = 2
            OnClick = btnDeletePayTypeClick
          end
          object btn17: TToolButton
            Left = 201
            Top = 0
            Width = 15
            Caption = 'btn1'
            ImageIndex = 26
            Style = tbsSeparator
          end
        end
        object DBGridActionPayType: TDBGridEh
          Left = 0
          Top = 43
          Width = 904
          Height = 520
          HelpContext = 2320
          Align = alClient
          AllowedSelections = [gstRecordBookmarks]
          ColumnDefValues.AutoDropDown = True
          ColumnDefValues.DropDownShowTitles = True
          ColumnDefValues.DropDownSizing = True
          ColumnDefValues.Title.TitleButton = True
          DataGrouping.GroupLevels = <>
          DataSource = dsPayType
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
          STFilter.Visible = True
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
    object pnlActionMain: TsPanel
      Left = 1
      Top = 1
      Width = 918
      Height = 253
      Align = alTop
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      ExplicitWidth = 1425
      object grpAction: TsGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 789
        Height = 245
        Align = alClient
        Caption = ' '#1040#1082#1094#1080#1103' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'GROUPBOX'
        ExplicitWidth = 1143
        ExplicitHeight = 224
        object grpActionMain: TsGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 458
          Height = 222
          Align = alLeft
          Caption = ' '#1043#1083#1072#1074#1085#1072#1103' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          SkinData.SkinSection = 'GROUPBOX'
          object lbl_N: TLabel
            Left = 55
            Top = 39
            Width = 35
            Height = 13
            Margins.Bottom = 0
            Alignment = taRightJustify
            Caption = #1053#1086#1084#1077#1088':'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbl1: TLabel
            Left = 18
            Top = 175
            Width = 71
            Height = 13
            Margins.Bottom = 0
            Alignment = taRightJustify
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1088'.:'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbl2: TLabel
            Left = 7
            Top = 86
            Width = 83
            Height = 13
            Margins.Bottom = 0
            Alignment = taRightJustify
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1083#1085'.:'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbl3: TLabel
            Left = 81
            Top = 63
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
          object lbl4: TLabel
            Left = 197
            Top = 63
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
          object dbEditNUM_TAB: TDBEditEh
            Left = 91
            Top = 35
            Width = 94
            Height = 21
            AutoSize = False
            Color = 16776175
            Ctl3D = True
            DataField = 'NUM_ACTION'
            DataSource = FormActions.dsActions
            EditButtons = <>
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = True
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = True
            OnExit = dbEditNUM_TABExit
            EditMask = ''
          end
          object ckbxIsActive: TDBCheckBoxEh
            Left = 91
            Top = 13
            Width = 77
            Height = 21
            Caption = #1040#1082#1090#1080#1074#1085#1072
            DataField = 'IS_ACTIVE'
            DataSource = FormActions.dsActions
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dbEditN_ACTION: TDBEditEh
            Left = 91
            Top = 173
            Width = 358
            Height = 21
            AutoSize = False
            Color = 16776175
            Ctl3D = True
            DataField = 'N_ACTION'
            DataSource = FormActions.dsActions
            EditButtons = <>
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = True
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Visible = True
            EditMask = ''
          end
          object dbEditREMARK: TDBEditEh
            Left = 92
            Top = 84
            Width = 358
            Height = 84
            AutoSize = False
            Color = 16776175
            Ctl3D = True
            DataField = 'REMARK'
            DataSource = FormActions.dsActions
            EditButtons = <>
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = True
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Visible = True
            WordWrap = True
            EditMask = ''
          end
          object edtD_ACTIVE_BEGIN: TDBDateTimeEditEh
            Left = 92
            Top = 59
            Width = 96
            Height = 21
            Color = 16776175
            DataField = 'D_ACTIVE_BEGIN'
            DataSource = FormActions.dsActions
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 4
            Visible = True
          end
          object edtD_ACTIVE_END: TDBDateTimeEditEh
            Left = 219
            Top = 59
            Width = 96
            Height = 21
            Color = 16776175
            DataField = 'D_ACTIVE_END'
            DataSource = FormActions.dsActions
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Kind = dtkDateEh
            ParentFont = False
            TabOrder = 5
            Visible = True
          end
        end
        object pgctrlMain: TsPageControl
          Left = 466
          Top = 15
          Width = 321
          Height = 228
          ActivePage = tbActionShedule
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Images = FormMain.ImageListNew1
          ParentFont = False
          TabOrder = 1
          ActiveIsBold = True
          SkinData.SkinSection = 'PAGECONTROL'
          object tbActionShedule: TsTabSheet
            Hint = #1055#1077#1088#1080#1086#1076' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1040#1082#1094#1080#1080' '#1074' '#1090#1077#1095#1077#1085#1080#1080' '#1089#1091#1090#1086#1082
            Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 95
            ParentFont = False
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            ExplicitTop = 24
            ExplicitHeight = 200
            object grpActionSheduler: TsGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 307
              Height = 193
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              SkinData.SkinSection = 'GROUPBOX'
              ExplicitHeight = 194
              object lbl5: TLabel
                Left = 104
                Top = 20
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
                Left = 179
                Top = 20
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
                Left = 11
                Top = 20
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
                Left = 104
                Top = 43
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
                Left = 179
                Top = 43
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
                Left = 42
                Top = 43
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
                Left = 104
                Top = 67
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
                Left = 179
                Top = 67
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
                Left = 53
                Top = 67
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
                Left = 104
                Top = 90
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
                Left = 179
                Top = 90
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
                Left = 41
                Top = 90
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
                Left = 104
                Top = 113
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
                Left = 179
                Top = 113
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
                Left = 40
                Top = 113
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
                Left = 104
                Top = 136
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
                Left = 179
                Top = 136
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
                Left = 41
                Top = 136
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
                Left = 104
                Top = 159
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
                Left = 179
                Top = 159
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
                Left = 15
                Top = 159
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
                Left = 117
                Top = 16
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_1_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Visible = True
                OnChange = edtSCH_1_FROMChange
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_1_TO: TDBDateTimeEditEh
                Left = 199
                Top = 16
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_1_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_2_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 39
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_2_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_2_TO: TDBDateTimeEditEh
                Left = 199
                Top = 39
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_2_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_3_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 63
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_3_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_3_TO: TDBDateTimeEditEh
                Left = 199
                Top = 63
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_3_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_4_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 86
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_4_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_4_TO: TDBDateTimeEditEh
                Left = 199
                Top = 86
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_4_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_5_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 109
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_5_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_5_TO: TDBDateTimeEditEh
                Left = 199
                Top = 109
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_5_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_6_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 132
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_6_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_6_TO: TDBDateTimeEditEh
                Left = 199
                Top = 132
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_6_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 11
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_7_FROM: TDBDateTimeEditEh
                Left = 117
                Top = 155
                Width = 57
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_7_FROM'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 12
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
              object edtSCH_7_TO: TDBDateTimeEditEh
                Left = 199
                Top = 156
                Width = 58
                Height = 21
                Alignment = taLeftJustify
                Color = 16776175
                DataField = 'SCH_7_TO'
                DataSource = FormActions.dsActions
                EditButton.Visible = False
                EditButtons = <>
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 13
                Visible = True
                EditFormat = 'hh:nn:ss'
              end
            end
          end
          object tbActionRecepients: TsTabSheet
            Hint = #1057#1087#1080#1089#1086#1082' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1077#1081' '#1040#1082#1094#1080#1081
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1080
            SkinData.CustomColor = False
            SkinData.CustomFont = False
            object grpActionReceiver: TsGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 307
              Height = 193
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              SkinData.SkinSection = 'GROUPBOX'
              object tlbGrid: TToolBar
                Left = 2
                Top = 15
                Width = 303
                Height = 43
                ButtonHeight = 38
                ButtonWidth = 57
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
                object btnRefreshRec: TToolButton
                  Left = 0
                  Top = 0
                  Caption = #1054#1073#1085#1086#1074#1080#1090#1100
                  ImageIndex = 3
                  OnClick = btnRefreshRecClick
                end
                object btn2: TToolButton
                  Left = 57
                  Top = 0
                  Width = 15
                  Caption = 'btn2'
                  ImageIndex = 26
                  Style = tbsSeparator
                end
                object btnEditRec: TToolButton
                  Left = 72
                  Top = 0
                  Caption = #1048#1079#1084#1077#1085#1080#1090#1100
                  ImageIndex = 1
                  OnClick = btnEditRecClick
                end
                object btn3: TToolButton
                  Left = 129
                  Top = 0
                  Width = 15
                  Caption = 'btn3'
                  ImageIndex = 40
                  Style = tbsSeparator
                end
                object btnDelRec: TToolButton
                  Left = 144
                  Top = 0
                  Caption = #1059#1076#1072#1083#1080#1090#1100
                  ImageIndex = 2
                  OnClick = btnDelRecClick
                end
                object btn1: TToolButton
                  Left = 201
                  Top = 0
                  Width = 15
                  Caption = 'btn1'
                  ImageIndex = 26
                  Style = tbsSeparator
                end
              end
              object DBGridRecepients: TDBGridEh
                Left = 2
                Top = 58
                Width = 303
                Height = 133
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
                STFilter.Visible = True
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
      object pnlButtons: TsPanel
        Left = 796
        Top = 1
        Width = 121
        Height = 251
        Align = alRight
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        object btnOk: TsBitBtn
          Left = 4
          Top = 9
          Width = 113
          Height = 28
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = btnOkClick
          Glyph.Data = {
            FA020000424DFA02000000000000FA0100002800000010000000100000000100
            08000000000000010000120B0000120B00007100000071000000FF00FF006633
            33006E372F00753A2C007F4026008844220091491E009A4D1A00A4521400AE57
            0F00B55A0C00CC660000BF600600D06F0E00D5781A00DB822B00DF8C3A00E597
            4A00E9A15800EFAC6900F3B47500FFCB9800D07E0300E6A64C00F5CC9100EFC8
            8E00F6CE9400F7D09700FEDEAE00D7830000D8850300DB8B1100DE921D00E199
            2B00E19A2C00E19B2D00E39F3700E3A03700E5A33E00E6A74500EAAF5300EFBC
            6C00F2C47B00F5C98500F7D09100F9D49B00F8D39B00F9D59E00FAD7A100FBD9
            A400FBD9A500FBDAA700FCDCAB00FEE0B100FAE2BB00F9E1B800FBE4BD00DABB
            7600C8C0750089821B00C7C68700919B3700F2F3E900F2F3EB0099AF59009CB9
            6300F6F8F2003E5E080099B766009DBE6800577F1B005E9445003EA3220040AB
            2C0010970A006CAC69005B9B5900009800000093000000810000006E0000006A
            0000148E14006CB06B000370060006940A00068C0A0006890A0006850A000DA5
            1300159019000C8815000E9017000F97190011A11B000A7C130026BF3A0053EA
            7C0053E97C0053E77C0056EE820034CA630036CD660039CF690046DD76004DE4
            7D0054EC840063FC960065FE980064FD970066FF9900FFFFFF0000000000000C
            0A090807060504030201000000000B1728272521201F1E1D1D16010000000D29
            1B2E2F303133341C3523020000000E2A1A424B50544C3F3E3822030000000F2B
            18535B66655F4C3F362204000000102C405C686D6B675F4C3724050000001141
            5D696D6E6E6B675F4726060000003D5E6A6C6E6E6E6E6B675F46070000004E64
            6E6E6E63636E6E6B675F430000004D6E6E6E62565A636E6E6B675F0000004860
            6E6155443C52636E6E6B675F00001949594A45322D3A57636E6E6B675F000015
            3914131211103B57636E6E6B67510000000000000000000057636E6E6B500000
            00000000000000000057636E50000000000000000000000000004F580000}
          SkinData.SkinSection = 'BUTTON'
        end
        object btnCancel: TsBitBtn
          Left = 4
          Top = 54
          Width = 113
          Height = 28
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 1
          OnClick = btnCancelClick
          Glyph.Data = {
            CA020000424DCA02000000000000CA0100002800000010000000100000000100
            08000000000000010000120B0000120B00006500000065000000FF00FF003766
            FF003967FC00406FFF004572FF004F7BFF001B4CFF002353FC002959FF003060
            FF003462FD006488FF000033FF000031FB00002EF5000235FF000638FF00083B
            FF000C3EFF000E3EFF001040FC00103FF800153FF5001644FF001642FA001946
            FF001D49FF001F4BFF00224DFF00224EFF002551FF002650FD002A54FF002C56
            FF003861FF003960FF003B5FF9003E64FF003F64FF005576FF005577FF005576
            FE005F7DFE006784FF00738EFF007690FF007A93FF007D96FF008AA2FF008EA4
            FF00002BEF000028E8000027E700092EE3000A2EE0000B2FE2000D32E500173F
            ED004B67F2005E7CFF00617DF9006682FC006C82F2007C94FF007F96FF00869B
            FF008A9FFF008EA2FF000025E2000022DC00001FD6000525DA000728DF001A37
            DD00203FE3002742E000304BE5003651E900001DD2000019CA00021CCF001127
            CB000017C5000012BE000013BE000118C8000E1FC1000011BD00000DB300000D
            B2000818BC001120BD00111AB2001721B8002C36C0000007A6000004A0000000
            9A0000009900FFFFFF0000000000000000000060616262626200000000000000
            0059564A1E1B17134858620000000000544B232125282B2C3B194E620000004F
            4C261016515B5D5E3E421C4E620000492712345700005F5C3C3F42195800453A
            2215550000595A24283C3E3B4862442D0837000054521820245C5E2C13623340
            0936004F500D0F185A5F5D2B1A6232410138464714110D5259005B281D620E43
            0439350706145054000051251E610D3D0B020A0907474F00005716214A60001F
            3105030A35460000553410235600000C2A300502393836371512264B59000000
            0C29310B0401090822274D5300000000000C1F3D432F2E2D3A494F0000000000
            0000000D0E323344450000000000}
          SkinData.SkinSection = 'BUTTON'
        end
      end
    end
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
    Left = 39
    Top = 392
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
    Left = 70
    Top = 391
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
    BeforePost = tblConditionsBeforePost
    OnNewRecord = tblConditionsNewRecord
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 39
    Top = 440
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
    Left = 70
    Top = 439
  end
  object tblCOND_TRIG_AMOUNT_FROM: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 255
    Top = 384
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldCOND_TRIG_AMOUNT_FROMID_CONDITION: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfldCOND_TRIG_AMOUNT_FROMKN_CONDITION: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldCOND_TRIG_AMOUNT_FROMN_CONDITION: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_TRIG_AMOUNT_FROM: TDataSource
    DataSet = tblCOND_TRIG_AMOUNT_FROM
    Left = 286
    Top = 383
  end
  object tblCOND_TRIG_AMOUNT_TO: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 416
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldCOND_TRIG_AMOUNT_TOID_CONDITION: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfldCOND_TRIG_AMOUNT_TOKN_CONDITION: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldCOND_TRIG_AMOUNT_TON_CONDITION: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_TRIG_AMOUNT_TO: TDataSource
    DataSet = tblCOND_TRIG_AMOUNT_TO
    Left = 286
    Top = 415
  end
  object tblCOND_TRIG_SUM_FROM: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 448
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld1: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld1: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld2: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_TRIG_SUM_FROM: TDataSource
    DataSet = tblCOND_TRIG_SUM_FROM
    Left = 286
    Top = 447
  end
  object tblCOND_TRIG_SUM_TO: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 480
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld2: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld3: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld4: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_TRIG_SUM_TO: TDataSource
    DataSet = tblCOND_TRIG_SUM_TO
    Left = 286
    Top = 479
  end
  object tblCOND_HINT_AMOUNT_FROM: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 327
    Top = 384
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld3: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld5: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld6: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_HINT_AMOUNT_FROM: TDataSource
    DataSet = tblCOND_HINT_AMOUNT_FROM
    Left = 358
    Top = 383
  end
  object tblCOND_HINT_AMOUNT_TO: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 327
    Top = 416
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld4: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld7: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld8: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_HINT_AMOUNT_TO: TDataSource
    DataSet = tblCOND_HINT_AMOUNT_TO
    Left = 358
    Top = 415
  end
  object tblCOND_HINT_SUM_FROM: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 327
    Top = 448
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld5: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld9: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld10: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_HINT_SUM_FROM: TDataSource
    DataSet = tblCOND_HINT_SUM_FROM
    Left = 358
    Top = 447
  end
  object tblCOND_HINT_SUM_TO: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 327
    Top = 480
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld6: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld11: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld12: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_HINT_SUM_TO: TDataSource
    DataSet = tblCOND_HINT_SUM_TO
    Left = 358
    Top = 479
  end
  object tblEffectType: TpFIBDataSet
    SelectSQL.Strings = (
      'select E.ID_EFFECT_TYPE, E.KN_EFFECT_TYPE, E.N_EFFECT_TYPE'
      'from ACT_EFFECT_TYPE E'
      'order by E.ID_EFFECT_TYPE')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 640
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldEffectTypeID_EFFECT_TYPE: TFIBIntegerField
      FieldName = 'ID_EFFECT_TYPE'
    end
    object fbstrngfldEffectTypeKN_EFFECT_TYPE: TFIBStringField
      FieldName = 'KN_EFFECT_TYPE'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfldEffectTypeN_EFFECT_TYPE: TFIBStringField
      FieldName = 'N_EFFECT_TYPE'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object dsEffectType: TDataSource
    DataSet = tblEffectType
    Left = 286
    Top = 639
  end
  object tblConditionType: TpFIBDataSet
    SelectSQL.Strings = (
      'select C.ID_CONDITION_TYPE, C.N_CONDITION_TYPE'
      'from ACT_CONDITION_TYPE C')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 720
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldConditionTypeID_CONDITION_TYPE: TFIBIntegerField
      FieldName = 'ID_CONDITION_TYPE'
    end
    object fbstrngfldConditionTypeN_CONDITION_TYPE: TFIBStringField
      FieldName = 'N_CONDITION_TYPE'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsConditionType: TDataSource
    DataSet = tblConditionType
    Left = 286
    Top = 719
  end
  object tblRecipientsNotIn: TpFIBDataSet
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_ACTION_DEPARTMENT'
      'WHERE'
      '        ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPARTMENT'
      '    ')
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
      'select D.ID_DEPARTMENTS, D.N_DEPARTMENTS'
      'from DEPARTMENTS D'
      'WHERE D.ID_DEPARTMENTS <> 1'
      ' AND D.ID_DEPARTMENTS NOT IN'
      '('
      'select A.ID_DEPARTMENT'
      'from ACT_ACTION_DEPARTMENT A'
      'WHERE A.ID_ACTION = :ID_ACTION'
      ')'
      'ORDER BY D.ID_DEPARTMENTS')
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
    Left = 103
    Top = 392
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldRecipientsNotInID_DEPARTMENTS: TFIBIntegerField
      FieldName = 'ID_DEPARTMENTS'
    end
    object fbstrngfldRecipientsNotInN_DEPARTMENTS: TFIBStringField
      FieldName = 'N_DEPARTMENTS'
      Size = 30
      EmptyStrToNull = True
    end
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
    BeforePost = tblOperationsBeforePost
    OnNewRecord = tblOperationsNewRecord
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 39
    Top = 480
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
    Left = 70
    Top = 479
  end
  object tblOperationType: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select O.ID_OPERATION_TYPE, O.KN_OPERATION_TYPE, O.N_OPERATION_T' +
        'YPE'
      'from ACT_OPERATION_TYPE O'
      'order by O.ID_OPERATION_TYPE')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 760
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldOperationTypeID_OPERATION_TYPE: TFIBIntegerField
      FieldName = 'ID_OPERATION_TYPE'
    end
    object fbstrngfldOperationTypeKN_OPERATION_TYPE: TFIBStringField
      FieldName = 'KN_OPERATION_TYPE'
      Size = 5
      EmptyStrToNull = True
    end
    object fbstrngfldOperationTypeN_OPERATION_TYPE: TFIBStringField
      FieldName = 'N_OPERATION_TYPE'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsOperationType: TDataSource
    DataSet = tblOperationType
    Left = 286
    Top = 759
  end
  object tblPayType: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE ACT_PAYTYPE_VAR'
      'SET '
      '    ID_ACTION = :ID_ACTION,'
      '    ID_PAYTYPE_VAR = :ID_PAYTYPE_VAR'
      'WHERE'
      '    ID_ACT_PAYTYPE_VAR = :OLD_ID_ACT_PAYTYPE_VAR'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_PAYTYPE_VAR'
      'WHERE'
      '        ID_ACT_PAYTYPE_VAR = :OLD_ID_ACT_PAYTYPE_VAR'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO ACT_PAYTYPE_VAR('
      '    ID_ACT_PAYTYPE_VAR,'
      '    ID_ACTION,'
      '    ID_PAYTYPE_VAR'
      ')'
      'VALUES('
      '    :ID_ACT_PAYTYPE_VAR,'
      '    :ID_ACTION,'
      '    :ID_PAYTYPE_VAR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      ' P.ID_ACT_PAYTYPE_VAR,'
      ' P.ID_ACTION,'
      ' P.ID_PAYTYPE_VAR,'
      ' PV.N_PAYTYPE_VAR'
      'FROM ACT_PAYTYPE_VAR P'
      
        '  INNER JOIN PAYTYPE_VAR PV ON PV.ID_PAYTYPE_VAR = P.ID_PAYTYPE_' +
        'VAR'
      'WHERE(  P.ID_ACTION = :ID_ACTION'
      '     ) and (     P.ID_ACT_PAYTYPE_VAR = :OLD_ID_ACT_PAYTYPE_VAR'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      ' P.ID_ACT_PAYTYPE_VAR,'
      ' P.ID_ACTION,'
      ' P.ID_PAYTYPE_VAR,'
      ' PV.N_PAYTYPE_VAR'
      'FROM ACT_PAYTYPE_VAR P'
      
        '  INNER JOIN PAYTYPE_VAR PV ON PV.ID_PAYTYPE_VAR = P.ID_PAYTYPE_' +
        'VAR'
      'WHERE P.ID_ACTION = :ID_ACTION'
      'ORDER BY P.ID_PAYTYPE_VAR')
    AutoUpdateOptions.UpdateTableName = 'ACT_PAYTYPE_VAR'
    AutoUpdateOptions.KeyFields = 'ID_ACT_PAYTYPE_VAR'
    AutoUpdateOptions.GeneratorName = 'GEN_ACT_PAYTYPE_VAR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    Left = 39
    Top = 520
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldPayTypeID_ACT_PAYTYPE_VAR: TFIBIntegerField
      FieldName = 'ID_ACT_PAYTYPE_VAR'
    end
    object fbntgrfldPayTypeID_ACTION: TFIBIntegerField
      FieldName = 'ID_ACTION'
    end
    object fbntgrfldPayTypeID_PAYTYPE_VAR: TFIBIntegerField
      FieldName = 'ID_PAYTYPE_VAR'
    end
    object fbstrngfldPayTypeN_PAYTYPE_VAR: TFIBStringField
      FieldName = 'N_PAYTYPE_VAR'
      Size = 30
      EmptyStrToNull = True
    end
  end
  object dsPayType: TDataSource
    DataSet = tblPayType
    Left = 70
    Top = 519
  end
  object tbltblPayTypeNotIn: TpFIBDataSet
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_ACTION_DEPARTMENT'
      'WHERE'
      '        ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPARTMENT'
      '    ')
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
      'SELECT'
      '  PV.ID_PAYTYPE_VAR,'
      '  PV.N_PAYTYPE_VAR'
      'FROM PAYTYPE_VAR PV'
      'WHERE PV.ID_PAYTYPE_VAR NOT IN'
      '('
      'SELECT'
      ' P.ID_PAYTYPE_VAR'
      'FROM ACT_PAYTYPE_VAR P'
      'WHERE P.ID_ACTION = :ID_ACTION'
      ')'
      'ORDER BY PV.ID_PAYTYPE_VAR')
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
    Left = 103
    Top = 520
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldPayTypeNotInID_PAYTYPE_VAR: TFIBIntegerField
      FieldName = 'ID_PAYTYPE_VAR'
    end
    object fbstrngfldPayTypeNotInN_PAYTYPE_VAR: TFIBStringField
      FieldName = 'N_PAYTYPE_VAR'
      Size = 30
      EmptyStrToNull = True
    end
  end
  object tblGoods: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '  G.ID_GOODSDIR,'
      '  G.KN_GOODS,'
      '  G.N_GOODS,'
      '  G.CODE,'
      '  E.KN_EDIZM,'
      '   GRT.CODE_PATH || '#39'#'#39' || G.CODE AS PATH'
      'FROM G_GOODSDIR G'
      '  INNER JOIN EDIZM E ON E.ID_EDIZM = G.ID_EDIZM'
      
        '  INNER JOIN G_GOODS_GR_TREE GT ON GT.ID_GOODSDIR = G.ID_GOODSDI' +
        'R'
      '  INNER JOIN G_GR_TREE GRT ON GRT.ID_GR_TREE = GT.ID_GR_TREE'
      'WHERE '
      '/*FILTER*/(1=1)'
      'AND G.IS_ARH = 0')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 47
    Top = 680
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfldGoodsID_GOODSDIR: TFIBIntegerField
      FieldName = 'ID_GOODSDIR'
    end
    object fbstrngfldGoodsKN_GOODS: TFIBStringField
      FieldName = 'KN_GOODS'
      Size = 24
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsN_GOODS: TFIBStringField
      FieldName = 'N_GOODS'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsCODE: TFIBStringField
      FieldName = 'CODE'
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsKN_EDIZM: TFIBStringField
      FieldName = 'KN_EDIZM'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsPATH: TFIBStringField
      FieldName = 'PATH'
      Size = 271
      EmptyStrToNull = True
    end
  end
  object dsGoods: TDataSource
    DataSet = tblGoods
    Left = 78
    Top = 679
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
    Left = 39
    Top = 552
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
    Left = 70
    Top = 551
  end
  object tblObjectsNotIn: TpFIBDataSet
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    ACT_ACTION_DEPARTMENT'
      'WHERE'
      '        ID_ACTION_DEPARTMENT = :OLD_ID_ACTION_DEPARTMENT'
      '    ')
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
      'SELECT'
      '  O.ID_OBJECTS,'
      '  O.N_OBJECTS,'
      '  O.OBJECT_VALUE,'
      '  O.ID_OBJECTS_TYPE'
      'FROM ACT_OBJECTS O'
      'WHERE O.ID_OBJECTS NOT IN'
      '('
      'SELECT AO.ID_OBJECTS'
      'FROM ACT_ACTION_OBJECTS AO'
      'WHERE AO.ID_ACTION = :ID_ACTION'
      ')'
      'ORDER BY O.ID_OBJECTS, O.OBJECT_VALUE')
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
    Left = 103
    Top = 552
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object tblGoodsGrTree: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      ' G.ID_GR_TREE AS ID,'
      ' G.ID_PARENT,'
      ' G.LVL AS IMAGE_INDEX,'
      ' G.FN_GR_TREE AS REC_NAME,'
      ' G.CODE AS NOTE,'
      ' G.CODE_PATH AS PATH'
      'FROM G_GR_TREE G'
      'WHERE'
      '/*FILTER*/(1=1)'
      'ORDER BY G.PATH')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 47
    Top = 712
    WaitEndMasterScroll = True
    dcForceOpen = True
    object fbntgrfldGoodsGrTreeID: TFIBIntegerField
      FieldName = 'ID'
    end
    object fbntgrfldGoodsGrTreeID_PARENT: TFIBIntegerField
      FieldName = 'ID_PARENT'
    end
    object fbntgrfldGoodsGrTreeIMAGE_INDEX: TFIBIntegerField
      DefaultExpression = '0'
      FieldName = 'IMAGE_INDEX'
    end
    object fbstrngfldGoodsGrTreeREC_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'REC_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsGrTreeNOTE: TFIBStringField
      DisplayLabel = #1050#1086#1076
      FieldName = 'NOTE'
      Size = 36
      EmptyStrToNull = True
    end
    object fbstrngfldGoodsGrTreePATH: TFIBStringField
      FieldName = 'PATH'
      Size = 250
      EmptyStrToNull = True
    end
  end
  object dsGoodsGrTree: TDataSource
    DataSet = tblGoodsGrTree
    Left = 78
    Top = 711
  end
  object tblCOND_TRIG_AMOUNT_TO_OPER: TpFIBDataSet
    SelectSQL.Strings = (
      'select ID_CONDITION, KN_CONDITION, N_CONDITION'
      'from ACT_CONDITION'
      'order by ID_CONDITION')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 544
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld7: TFIBIntegerField
      FieldName = 'ID_CONDITION'
    end
    object fbstrngfld13: TFIBStringField
      FieldName = 'KN_CONDITION'
      Size = 10
      EmptyStrToNull = True
    end
    object fbstrngfld14: TFIBStringField
      FieldName = 'N_CONDITION'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object dsCOND_TRIG_AMOUNT_TO_OPER: TDataSource
    DataSet = tblCOND_TRIG_AMOUNT_TO_OPER
    Left = 286
    Top = 543
  end
  object tblEffectTypeOper: TpFIBDataSet
    SelectSQL.Strings = (
      'select E.ID_EFFECT_TYPE, E.KN_EFFECT_TYPE, E.N_EFFECT_TYPE'
      'from ACT_EFFECT_TYPE E'
      'order by E.ID_EFFECT_TYPE')
    AutoUpdateOptions.UpdateTableName = 'G_GOODSDIR'
    AutoUpdateOptions.KeyFields = 'ID_GOODSDIR'
    AutoUpdateOptions.GeneratorName = 'GEN_G_GOODSDIR_ID'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    AutoUpdateOptions.SeparateBlobUpdate = True
    Transaction = FormMain.TransactionRead
    Database = FormMain.DatabaseFW
    UpdateTransaction = FormMain.TransactionWrite
    AutoCommit = True
    DataSource = FormActions.dsActions
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm:ss'
    Left = 255
    Top = 672
    WaitEndMasterScroll = True
    dcForceOpen = True
    oFetchAll = True
    object fbntgrfld8: TFIBIntegerField
      FieldName = 'ID_EFFECT_TYPE'
    end
    object fbstrngfld15: TFIBStringField
      FieldName = 'KN_EFFECT_TYPE'
      Size = 1
      EmptyStrToNull = True
    end
    object fbstrngfld16: TFIBStringField
      FieldName = 'N_EFFECT_TYPE'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object dsEffectTypeOper: TDataSource
    DataSet = tblEffectTypeOper
    Left = 286
    Top = 671
  end
end
