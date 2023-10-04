object PartFormUnit: TPartFormUnit
  Left = 412
  Top = 134
  Width = 939
  Height = 800
  Caption = #1040#1088#1090#1080#1082#1091#1083#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PartPanel: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 60
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object PartLabelSort: TLabel
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
    object PartSearch: TLabel
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
    object PartEdit: TEdit
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
      OnChange = PartEditChange
    end
    object PartSortCB: TComboBox
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
      OnSelect = PartSortCBSelect
      Items.Strings = (
        #1056#1077#1076' '#1085#1072' '#1074#1098#1074#1077#1078#1076#1072#1085#1077
        #1048#1084#1077)
    end
  end
  object PartDBNavigator: TDBNavigator
    Left = 0
    Top = 60
    Width = 923
    Height = 28
    DataSource = DM.ItemNomDS
    Align = alTop
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 923
    Height = 673
    Align = alClient
    DataSource = DM.ItemNomDS
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
  end
end
