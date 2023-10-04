object RepairShopFormUnit: TRepairShopFormUnit
  Left = -8
  Top = -8
  Width = 1552
  Height = 840
  Caption = #1057#1077#1088#1074#1080#1079#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RShopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1536
    Height = 60
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object RShopLabelSort: TLabel
      Left = 16
      Top = 18
      Width = 108
      Height = 20
      Caption = #1055#1086#1076#1088#1077#1076#1080' '#1087#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RShopLabelSearch: TLabel
      Left = 360
      Top = 18
      Width = 139
      Height = 20
      Caption = #1058#1098#1088#1089#1077#1085#1077' '#1087#1086' '#1080#1084#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RShopEdit: TEdit
      Left = 504
      Top = 16
      Width = 200
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = RShopEditChange
    end
    object RShopSortCB: TComboBox
      Left = 136
      Top = 16
      Width = 200
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 1
      Text = #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
      OnSelect = RShopSortCBSelect
      Items.Strings = (
        #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
        #1048#1084#1077)
    end
    object RShopButtonSelect: TButton
      Left = 720
      Top = 16
      Width = 150
      Height = 25
      Caption = #1048#1079#1073#1086#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = RShopButtonSelectClick
    end
  end
  object RShopDBNavigator: TDBNavigator
    Left = 0
    Top = 60
    Width = 1536
    Height = 28
    DataSource = DM.RShopDS
    Align = alTop
    TabOrder = 1
  end
  object RShopGrid: TDBGrid
    Left = 0
    Top = 88
    Width = 1536
    Height = 713
    Align = alClient
    DataSource = DM.RShopDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColExit = RShopGridColExit
  end
end
