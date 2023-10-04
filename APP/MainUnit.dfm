object MainFormUnit: TMainFormUnit
  Left = -8
  Top = -8
  Width = 1552
  Height = 840
  Align = alClient
  AutoSize = True
  Caption = 'ServicesApp'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = DM.MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainVehicleGrid: TDBGrid
    Left = 0
    Top = 105
    Width = 1536
    Height = 273
    Align = alTop
    DataSource = DM.VehicleDS
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = '@Arial Unicode MS'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'REGISTRATION_NUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REGISTRATION_DATE'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'VEHICLE_BRAND_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEHICLE_MODEL_NAME'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'PRODUCTION_YEAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEHICLE_CATEGORY_NAME'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'VEHICLE_TYPE_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEHICLE_ENGINE_NAME'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'CHASSIS_NUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRAME_NUMBER'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'OWNER_NAME'
        Visible = True
      end>
  end
  object MainRepairGrid: TDBGrid
    Left = 0
    Top = 438
    Width = 1536
    Height = 324
    Align = alClient
    DataSource = DM.RepairDS
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '@Arial Unicode MS'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'ACCPETANCE_DATE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLETION_DATE'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'ACCEPTED_THE_VEHICLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REPAIR_SHOP_NAME'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'EMPLOYEE_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPLOYEE_POSSITION'
        Visible = True
      end
      item
        Color = clBtnFace
        Expanded = False
        FieldName = 'NOTE'
        Visible = True
      end>
  end
  object MainVehiclePanel: TPanel
    Left = 0
    Top = 0
    Width = 1536
    Height = 105
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object MainLabelSort: TLabel
      Left = 16
      Top = 18
      Width = 128
      Height = 25
      Caption = #1055#1086#1076#1088#1077#1076#1080' '#1087#1086': '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object MainLabelSearch: TLabel
      Left = 384
      Top = 18
      Width = 125
      Height = 25
      Caption = #1058#1098#1088#1089#1077#1085#1077' '#1087#1086': '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object MainEdit: TEdit
      Left = 720
      Top = 16
      Width = 457
      Height = 26
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = MainEditChange
    end
    object MainSortCB: TComboBox
      Left = 152
      Top = 16
      Width = 200
      Height = 26
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 1
      Text = #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
      OnSelect = MainSortCBSelect
      Items.Strings = (
        #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
        #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
        #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
        #1043#1086#1076#1080#1085#1072' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        #1053#1086#1084#1077#1088' '#1085#1072' '#1088#1072#1084#1072
        #1053#1086#1084#1077#1088' '#1085#1072' '#1082#1091#1087#1077)
    end
    object MainSearchCB: TComboBox
      Left = 512
      Top = 16
      Width = 200
      Height = 26
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 2
      Text = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
      Items.Strings = (
        #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
        #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
        #1043#1086#1076#1080#1085#1072' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
        #1053#1086#1084#1077#1088' '#1085#1072' '#1088#1072#1084#1072
        #1053#1086#1084#1077#1088' '#1085#1072' '#1082#1091#1087#1077)
    end
    object MainAddVehicleButton: TButton
      Left = 16
      Top = 56
      Width = 345
      Height = 40
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1055#1080#1048#1058
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = MainAddVehicleButtonClick
    end
    object MainEditVehicleButton: TButton
      Left = 384
      Top = 56
      Width = 425
      Height = 40
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'/'#1076#1077#1090#1072#1081#1083#1080' '#1085#1072' '#1055#1080#1048#1058
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = MainEditVehicleButtonClick
    end
    object MainDeleteVehicle: TButton
      Left = 832
      Top = 56
      Width = 345
      Height = 40
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' '#1055#1080#1048#1058
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = MainDeleteVehicleClick
    end
    object Memo: TMemo
      Left = 1216
      Top = 16
      Width = 161
      Height = 81
      TabOrder = 6
      Visible = False
    end
  end
  object MainRepairPanel: TPanel
    Left = 0
    Top = 378
    Width = 1536
    Height = 60
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 3
    object MainRepairAddButton: TButton
      Left = 16
      Top = 10
      Width = 345
      Height = 40
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = MainRepairAddButtonClick
    end
    object MainEditRepirButton: TButton
      Left = 384
      Top = 10
      Width = 425
      Height = 40
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'/'#1076#1077#1090#1072#1081#1083#1080' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = MainEditRepirButtonClick
    end
    object MainDeleteRepair: TButton
      Left = 832
      Top = 10
      Width = 345
      Height = 40
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = MainDeleteRepairClick
    end
  end
  object MainStatusBar: TStatusBar
    Left = 0
    Top = 762
    Width = 1536
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Panels = <
      item
        Width = 500
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 500
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object SaveDialog: TSaveDialog
    Left = 1408
    Top = 16
  end
  object OpenDialog: TOpenDialog
    Left = 1376
    Top = 16
  end
end
