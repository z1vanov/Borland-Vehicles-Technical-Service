object EngineFormUnit: TEngineFormUnit
  Left = 557
  Top = 144
  BorderStyle = bsSingle
  Caption = #1044#1074#1080#1075#1072#1090#1077#1083#1080
  ClientHeight = 461
  ClientWidth = 284
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 500
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EngineDBNavigator: TDBNavigator
    Left = 0
    Top = 0
    Width = 284
    Height = 25
    DataSource = DM.EngineTypeDS
    Align = alTop
    TabOrder = 0
  end
  object EngineGrid: TDBGrid
    Left = 0
    Top = 25
    Width = 284
    Height = 396
    Align = alClient
    DataSource = DM.EngineTypeDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnExit = EngineGridExit
  end
  object EnginePanel: TPanel
    Left = 0
    Top = 421
    Width = 284
    Height = 40
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 2
    object EngineButton: TButton
      Left = 82
      Top = 5
      Width = 120
      Height = 30
      Caption = #1048#1079#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = EngineButtonClick
    end
  end
end
