object CreateAccFormUnit: TCreateAccFormUnit
  Left = 277
  Top = 166
  BorderStyle = bsSingle
  Caption = #1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1072#1082#1072#1091#1085#1090
  ClientHeight = 233
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object EmployeeNameLabel: TLabel
    Left = 16
    Top = 56
    Width = 25
    Height = 18
    Caption = #1048#1084#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object EmployeeFamLabel: TLabel
    Left = 208
    Top = 56
    Width = 54
    Height = 18
    Caption = #1060#1072#1084#1080#1083#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 120
    Width = 173
    Height = 18
    Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1089#1082#1086' '#1080#1084#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 208
    Top = 120
    Width = 100
    Height = 18
    Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1087#1072#1088#1086#1083#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object EmployeeNameEdit: TEdit
    Left = 16
    Top = 72
    Width = 161
    Height = 26
    Color = clCream
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object SelectEmployeeButton: TButton
    Left = 32
    Top = 16
    Width = 129
    Height = 25
    Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1089#1083#1091#1078#1080#1090#1077#1083
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = SelectEmployeeButtonClick
  end
  object EmployeeFamEdit: TEdit
    Left = 208
    Top = 72
    Width = 161
    Height = 26
    Color = clCream
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object UsernameEdit: TEdit
    Left = 16
    Top = 136
    Width = 161
    Height = 26
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object PasswordEdit: TEdit
    Left = 208
    Top = 136
    Width = 161
    Height = 26
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 32
    Top = 176
    Width = 129
    Height = 33
    Caption = #1055#1086#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 176
    Width = 129
    Height = 33
    Caption = #1054#1090#1082#1072#1079
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '@Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
end
