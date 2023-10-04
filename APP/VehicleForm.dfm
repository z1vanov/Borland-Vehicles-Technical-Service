object VehicleNomFormUnit: TVehicleNomFormUnit
  Left = 200
  Top = 169
  Width = 1268
  Height = 538
  Caption = #1055#1098#1090#1085#1072' '#1080' '#1080#1079#1074#1098#1085#1087#1098#1090#1085#1072' '#1090#1077#1093#1085#1080#1082#1072
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
  object VehicleNomPanel: TPanel
    Left = 0
    Top = 0
    Width = 1252
    Height = 60
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object VehicleNomLabelSort: TLabel
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
    object VehicleNomrLabelSearch: TLabel
      Left = 376
      Top = 18
      Width = 102
      Height = 20
      Caption = #1058#1098#1088#1089#1077#1085#1077' '#1087#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object VehicleNomSortCB: TComboBox
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
      TabOrder = 0
      Text = #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
      OnSelect = VehicleNomSortCBSelect
      Items.Strings = (
        #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
        #1052#1086#1076#1077#1083
        #1054#1073#1077#1084' '#1085#1072' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
        #1058#1086#1074#1072#1088#1080#1084#1086#1089#1090
        #1041#1088#1086#1081' '#1086#1089#1080
        #1041#1088#1086#1081' '#1084#1077#1089#1090#1072)
    end
    object VehicleNomSearchCB: TComboBox
      Left = 488
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
      Text = #1048#1084#1077
      Items.Strings = (
        #1052#1086#1076#1077#1083
        #1054#1073#1077#1084' '#1085#1072' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
        #1058#1086#1074#1072#1088#1080#1084#1086#1089#1090
        #1041#1088#1086#1081' '#1086#1089#1080
        #1041#1088#1086#1081' '#1084#1077#1089#1090#1072)
    end
    object VehicleNomEdit: TEdit
      Left = 696
      Top = 16
      Width = 300
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = VehicleNomEditChange
    end
    object VehicleNomButtonSelect: TButton
      Left = 1024
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
      TabOrder = 3
      Visible = False
      OnClick = VehicleNomButtonSelectClick
    end
  end
  object VehicleNomGrid: TDBGrid
    Left = 0
    Top = 88
    Width = 1252
    Height = 411
    Align = alClient
    DataSource = DM.VehicleNomDS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = VehicleNomGridExit
  end
  object VehicleNomDBNavigator: TDBNavigator
    Left = 0
    Top = 60
    Width = 1252
    Height = 28
    DataSource = DM.VehicleNomDS
    Align = alTop
    TabOrder = 2
  end
end
