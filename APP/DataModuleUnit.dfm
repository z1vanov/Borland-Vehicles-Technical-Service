object DM: TDM
  OldCreateOrder = False
  Left = 1075
  Top = 32
  Height = 785
  Width = 475
  object DB: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\ThePessimistt\Desktop\diplomna\SERVICE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
  end
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = DB
    AutoStopAction = saNone
    Left = 40
  end
  object RepairTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = RepairTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ACCPETANCE_DATE'
        DataType = ftDate
      end
      item
        Name = 'COMPLETION_DATE'
        DataType = ftDate
      end
      item
        Name = 'EMPLOYEE_ID'
        DataType = ftInteger
      end
      item
        Name = 'REPAIR_SHOP_ID'
        DataType = ftInteger
      end
      item
        Name = 'VEHICLE_ID'
        DataType = ftInteger
      end
      item
        Name = 'ACCEPTED_THE_VEHICLE'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'NOTE'
        DataType = ftString
        Size = 256
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY18'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN19'
        Fields = 'REPAIR_SHOP_ID'
      end
      item
        Name = 'RDB$FOREIGN20'
        Fields = 'VEHICLE_ID'
      end
      item
        Name = 'RDB$FOREIGN21'
        Fields = 'EMPLOYEE_ID'
      end>
    IndexFieldNames = 'VEHICLE_ID'
    MasterFields = 'ID'
    MasterSource = VehicleDS
    StoreDefs = True
    TableName = 'REPAIR'
    Left = 24
    Top = 56
    object RepairTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object RepairTBLACCPETANCE_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1080#1089#1090#1080#1075#1072#1085#1077
      DisplayWidth = 20
      FieldName = 'ACCPETANCE_DATE'
    end
    object RepairTBLCOMPLETION_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1079#1072#1074#1098#1088#1096#1074#1072#1085#1077
      DisplayWidth = 20
      FieldName = 'COMPLETION_DATE'
    end
    object RepairTBLACCEPTED_THE_VEHICLE: TIBStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1080#1083' '#1087#1098#1090#1085#1072#1090#1072' '#1080#1083#1080' '#1080#1079#1074#1098#1085#1087#1098#1090#1085#1072' '#1090#1077#1093#1085#1080#1082#1072
      DisplayWidth = 60
      FieldName = 'ACCEPTED_THE_VEHICLE'
      Size = 128
    end
    object RepairTBLREPAIR_SHOP_NAME: TStringField
      DisplayLabel = #1057#1077#1088#1074#1080#1079
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'REPAIR_SHOP_NAME'
      LookupDataSet = RShopTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'REPAIR_SHOP_ID'
      Size = 130
      Lookup = True
    end
    object RepairTBLEMPLOYEE_NAME: TStringField
      DisplayLabel = #1048#1084#1077' '#1085#1072' '#1089#1083#1091#1078#1080#1090#1077#1083
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'EMPLOYEE_NAME'
      LookupDataSet = EmployeeTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'FIRST_NAME'
      KeyFields = 'EMPLOYEE_ID'
      Size = 35
      Lookup = True
    end
    object RepairTBLEMPLOYEE_POSSITION: TStringField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1089#1083#1091#1078#1080#1090#1077#1083
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'EMPLOYEE_POSSITION'
      LookupDataSet = EmployeeTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'POSSITION'
      KeyFields = 'EMPLOYEE_ID'
      Size = 35
      Lookup = True
    end
    object RepairTBLNOTE: TIBStringField
      DisplayLabel = #1041#1077#1083#1077#1078#1082#1072
      DisplayWidth = 200
      FieldName = 'NOTE'
      Size = 256
    end
    object RepairTBLEMPLOYEE_ID: TIntegerField
      FieldName = 'EMPLOYEE_ID'
      Visible = False
    end
    object RepairTBLREPAIR_SHOP_ID: TIntegerField
      FieldName = 'REPAIR_SHOP_ID'
      Visible = False
    end
    object RepairTBLVEHICLE_ID: TIntegerField
      FieldName = 'VEHICLE_ID'
      Visible = False
    end
  end
  object RepairDS: TDataSource
    DataSet = RepairTBL
    Left = 96
    Top = 56
  end
  object MainMenu: TMainMenu
    Left = 160
    object ImportExport1: TMenuItem
      Caption = #1052#1077#1085#1102
      object Export1: TMenuItem
        Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1072#1082#1072#1091#1085#1090
        OnClick = Export1Click
      end
      object N10: TMenuItem
        Caption = #1057#1098#1079#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1072#1082#1072#1091#1085#1090
        OnClick = N10Click
      end
      object N9: TMenuItem
        Caption = #1040#1085#1072#1083#1080#1079' '#1085#1072' '#1076#1072#1085#1085#1080
        OnClick = N9Click
      end
      object N11: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1080
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1048#1084#1087#1086#1088#1090
        object N13: TMenuItem
          Caption = #1048#1084#1087#1086#1088#1090
          OnClick = N13Click
        end
        object N14: TMenuItem
          Caption = #1045#1082#1089#1087#1086#1088#1090
          OnClick = N14Click
        end
      end
    end
    object Open1: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      object N7: TMenuItem
        Caption = #1055#1098#1090#1085#1072' '#1080' '#1080#1079#1074#1098#1085#1087#1098#1090#1085#1072' '#1090#1077#1093#1085#1080#1082#1072
        OnClick = N7Click
      end
      object OwnersTBL1: TMenuItem
        Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1080#1094#1080
        OnClick = OwnersTBL1Click
      end
      object N8: TMenuItem
        Caption = #1057#1077#1088#1074#1080#1079#1080
        OnClick = N8Click
      end
      object EmployeesTBL1: TMenuItem
        Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080
        OnClick = EmployeesTBL1Click
      end
      object N5: TMenuItem
        Caption = #1055#1086#1079#1080#1094#1080#1080' '#1085#1072' '#1089#1083#1091#1078#1080#1090#1077#1083#1080#1090#1077
        OnClick = N5Click
      end
      object PartsTBL1: TMenuItem
        Caption = #1063#1072#1089#1090#1080
        OnClick = PartsTBL1Click
      end
      object N3: TMenuItem
        Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1056#1072#1079#1084#1077#1088#1080
        OnClick = N4Click
      end
      object ServicesTBL1: TMenuItem
        Caption = #1059#1089#1083#1091#1075#1080
        OnClick = ServicesTBL1Click
      end
      object BrandTBL1: TMenuItem
        Caption = #1052#1072#1088#1082#1080
        OnClick = BrandTBL1Click
      end
      object N1: TMenuItem
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = #1042#1080#1076#1086#1074#1077' '#1076#1074#1080#1075#1072#1090#1077#1083#1080
        OnClick = N2Click
      end
      object N6: TMenuItem
        Caption = #1042#1080#1076#1086#1074#1077' '#1087#1098#1090#1085#1072' '#1080' '#1080#1079#1074#1098#1085#1087#1098#1090#1085#1072' '#1090#1077#1093#1085#1080#1082#1072
        OnClick = N6Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
    end
  end
  object EmployeeTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = EmployeeTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'FAM_NAME'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'PHONE_NUMBER'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'SERVICE_PHONE_NUMBER'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'POSSITION_ID'
        DataType = ftInteger
      end
      item
        Name = 'USER_PASSWORD'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'USERNAME'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY16'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN17'
        Fields = 'POSSITION_ID'
      end
      item
        Name = 'EMPLOYEETBLFNNDX'
        Fields = 'FIRST_NAME'
      end
      item
        Name = 'EMPLOYEETBLFAMNNDX'
        Fields = 'FAM_NAME'
      end
      item
        Name = 'EMPLOYEETBLPNNDX'
        Fields = 'PHONE_NUMBER'
      end
      item
        Name = 'EMPLOYEETBLSPNNDX'
        Fields = 'SERVICE_PHONE_NUMBER'
      end
      item
        Name = 'EMPLOYEETBLEMNDX'
        Fields = 'E_MAIL'
      end>
    IndexName = 'RDB$PRIMARY16'
    StoreDefs = True
    TableName = 'EMPLOYEE'
    Left = 24
    Top = 152
    object EmployeeTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object EmployeeTBLFIRST_NAME: TIBStringField
      DisplayLabel = #1048#1084#1077
      DisplayWidth = 40
      FieldName = 'FIRST_NAME'
      Size = 32
    end
    object EmployeeTBLFAM_NAME: TIBStringField
      DisplayLabel = #1060#1072#1084#1080#1083#1080#1103
      DisplayWidth = 40
      FieldName = 'FAM_NAME'
      Size = 32
    end
    object EmployeeTBLPHONE_NUMBER: TIBStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
      DisplayWidth = 25
      FieldName = 'PHONE_NUMBER'
      Size = 12
    end
    object EmployeeTBLSERVICE_PHONE_NUMBER: TIBStringField
      DisplayLabel = #1057#1083#1091#1078#1077#1073#1077#1085' '#1085#1086#1084#1077#1088
      DisplayWidth = 25
      FieldName = 'SERVICE_PHONE_NUMBER'
      Size = 12
    end
    object EmployeeTBLE_MAIL: TIBStringField
      DisplayLabel = #1045'-'#1084#1077#1081#1083
      DisplayWidth = 40
      FieldName = 'E_MAIL'
      Size = 64
    end
    object EmployeeTBLPOSSITION_ID: TIntegerField
      FieldName = 'POSSITION_ID'
      Required = True
      Visible = False
    end
    object EmployeeTBLUSER_PASSWORD: TIBStringField
      FieldName = 'USER_PASSWORD'
      Visible = False
      Size = 32
    end
    object EmployeeTBLUSERNAME: TIBStringField
      FieldName = 'USERNAME'
      Visible = False
      Size = 32
    end
    object EmployeeTBLPOSSITION: TStringField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103
      FieldKind = fkLookup
      FieldName = 'POSSITION'
      LookupDataSet = PossitionTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'POSSITION_ID'
      Size = 70
      Lookup = True
    end
  end
  object EmployeeDS: TDataSource
    DataSet = EmployeeTBL
    Left = 96
    Top = 152
  end
  object RShopTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = RShopTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 128
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        Size = 256
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY14'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RSHOPNAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'REPAIR_SHOP'
    Left = 24
    Top = 440
    object RShopTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object RShopTBLNAME: TIBStringField
      DisplayLabel = #1048#1084#1077
      DisplayWidth = 50
      FieldName = 'NAME'
      Size = 128
    end
    object RShopTBLADDRESS: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 100
      FieldName = 'ADDRESS'
      Size = 256
    end
  end
  object RShopDS: TDataSource
    DataSet = RShopTBL
    Left = 96
    Top = 440
  end
  object VehicleTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = VehicleTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRODUCTION_YEAR'
        DataType = ftDate
      end
      item
        Name = 'OWNER_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VEHICLE_NOMENCLATURE_ID'
        DataType = ftInteger
      end
      item
        Name = 'REGISTRATION_NUMBER'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CHASSIS_NUMBER'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'FRAME_NUMBER'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'REGISTRATION_DATE'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY11'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN12'
        Fields = 'OWNER_ID'
      end
      item
        Name = 'RDB$FOREIGN13'
        Fields = 'VEHICLE_NOMENCLATURE_ID'
      end
      item
        Name = 'VEHICLERDNDX'
        Fields = 'REGISTRATION_NUMBER'
      end
      item
        Name = 'VEHICLEPYNDX'
        Fields = 'PRODUCTION_YEAR'
      end
      item
        Name = 'VEHICLECNNDX'
        Fields = 'CHASSIS_NUMBER'
      end
      item
        Name = 'VEHICLEFNNDX'
        Fields = 'FRAME_NUMBER'
      end
      item
        Name = 'VEHICLERDATENDX'
        Fields = 'REGISTRATION_DATE'
      end>
    StoreDefs = True
    TableName = 'VEHICLE'
    Left = 24
    Top = 200
    object VehicleTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object VehicleTBLREGISTRATION_NUMBER: TIBStringField
      DisplayLabel = #1056#1077#1075'. '#1085#1086#1084#1077#1088
      DisplayWidth = 24
      FieldName = 'REGISTRATION_NUMBER'
      Size = 16
    end
    object VehicleTBLREGISTRATION_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
      DisplayWidth = 24
      FieldName = 'REGISTRATION_DATE'
    end
    object VehicleTBLVEHICLE_BRAND_NAME: TStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'VEHICLE_BRAND_NAME'
      LookupDataSet = VehicleNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'BRAND_NAME'
      KeyFields = 'VEHICLE_NOMENCLATURE_ID'
      Size = 32
      Lookup = True
    end
    object VehicleTBLVEHICLE_MODEL_NAME: TStringField
      DisplayLabel = #1052#1086#1076#1077#1083
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'VEHICLE_MODEL_NAME'
      LookupDataSet = VehicleNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'MODEL'
      KeyFields = 'VEHICLE_NOMENCLATURE_ID'
      Size = 64
      Lookup = True
    end
    object VehicleTBLPRODUCTION_YEAR: TDateField
      DisplayLabel = #1043#1086#1076#1080#1085#1072' '#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086
      DisplayWidth = 25
      FieldName = 'PRODUCTION_YEAR'
    end
    object VehicleTBLVEHICLE_CATEGORY_NAME: TStringField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'VEHICLE_CATEGORY_NAME'
      LookupDataSet = VehicleNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'CATEGORY_NAME'
      KeyFields = 'VEHICLE_NOMENCLATURE_ID'
      Size = 32
      Lookup = True
    end
    object VehicleTBLVEHICLE_TYPE_NAME: TStringField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'VEHICLE_TYPE_NAME'
      LookupDataSet = VehicleNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'TYPE_NAME'
      KeyFields = 'VEHICLE_NOMENCLATURE_ID'
      Size = 32
      Lookup = True
    end
    object VehicleTBLVEHICLE_ENGINE_NAME: TStringField
      DisplayLabel = #1042#1080#1076' '#1076#1074#1080#1075#1072#1090#1077#1083
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'VEHICLE_ENGINE_NAME'
      LookupDataSet = VehicleNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'ENGINE_NAME'
      KeyFields = 'VEHICLE_NOMENCLATURE_ID'
      Size = 32
      Lookup = True
    end
    object VehicleTBLCHASSIS_NUMBER: TIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072' '#1082#1091#1087#1077
      DisplayWidth = 24
      FieldName = 'CHASSIS_NUMBER'
      Size = 64
    end
    object VehicleTBLFRAME_NUMBER: TIBStringField
      DisplayLabel = #1053#1086#1084#1077#1088' '#1085#1072' '#1088#1072#1084#1072
      DisplayWidth = 24
      FieldName = 'FRAME_NUMBER'
      Size = 64
    end
    object VehicleTBLOWNER_NAME: TStringField
      DisplayLabel = #1057#1086#1073#1089#1090#1074#1077#1085#1080#1082
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'OWNER_NAME'
      LookupDataSet = OwnerTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'OWNER_ID'
      Size = 64
      Lookup = True
    end
    object VehicleTBLOWNER_ID: TIntegerField
      FieldName = 'OWNER_ID'
      Visible = False
    end
    object VehicleTBLVEHICLE_NOMENCLATURE_ID: TIntegerField
      FieldName = 'VEHICLE_NOMENCLATURE_ID'
      Visible = False
    end
  end
  object VehicleDS: TDataSource
    DataSet = VehicleTBL
    Left = 96
    Top = 200
  end
  object PossitionTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = PossitionTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY15'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'POSSITION'
    Left = 24
    Top = 248
    object PossitionTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object PossitionTBLNAME: TIBStringField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 64
    end
  end
  object PossitionDS: TDataSource
    DataSet = PossitionTBL
    Left = 96
    Top = 248
  end
  object VehicleNomTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = VehicleNomTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BRAND_ID'
        DataType = ftInteger
      end
      item
        Name = 'MODEL'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'CATEGORY_ID'
        DataType = ftInteger
      end
      item
        Name = 'ENGINE_TYPE_ID'
        DataType = ftInteger
      end
      item
        Name = 'TYPE_VEHICLE_ID'
        DataType = ftInteger
      end
      item
        Name = 'ENGINE_VOLUME'
        DataType = ftBCD
        Precision = 9
        Size = 1
      end
      item
        Name = 'LOADABILITY'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'AXLES_NUMBER'
        DataType = ftInteger
      end
      item
        Name = 'SEATS_NUMBER'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY6'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN7'
        Fields = 'BRAND_ID'
      end
      item
        Name = 'RDB$FOREIGN8'
        Fields = 'TYPE_VEHICLE_ID'
      end
      item
        Name = 'RDB$FOREIGN9'
        Fields = 'ENGINE_TYPE_ID'
      end
      item
        Name = 'RDB$FOREIGN10'
        Fields = 'CATEGORY_ID'
      end
      item
        Name = 'VEHNOMMODELNDX'
        Fields = 'MODEL'
      end
      item
        Name = 'VEHNOMENGINEVOLNDX'
        Fields = 'ENGINE_VOLUME'
      end
      item
        Name = 'VEHNOMLOADNDX'
        Fields = 'LOADABILITY'
      end
      item
        Name = 'VEHNOMAXLESNDX'
        Fields = 'AXLES_NUMBER'
      end
      item
        Name = 'VEHNOMSEATSNDX'
        Fields = 'SEATS_NUMBER'
      end>
    StoreDefs = True
    TableName = 'VEHICLE_NOMENCLATURE'
    Left = 240
    Top = 200
    object VehicleNomTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object VehicleNomTBLBRAND_ID: TIntegerField
      FieldName = 'BRAND_ID'
      Visible = False
    end
    object VehicleNomTBLMODEL: TIBStringField
      DisplayLabel = #1052#1086#1076#1077#1083
      DisplayWidth = 50
      FieldName = 'MODEL'
      Size = 64
    end
    object VehicleNomTBLCATEGORY_ID: TIntegerField
      DisplayWidth = 15
      FieldName = 'CATEGORY_ID'
      Visible = False
    end
    object VehicleNomTBLENGINE_TYPE_ID: TIntegerField
      DisplayWidth = 15
      FieldName = 'ENGINE_TYPE_ID'
      Visible = False
    end
    object VehicleNomTBLTYPE_VEHICLE_ID: TIntegerField
      DisplayWidth = 15
      FieldName = 'TYPE_VEHICLE_ID'
      Visible = False
    end
    object VehicleNomTBLENGINE_VOLUME: TIBBCDField
      DisplayLabel = #1054#1073#1077#1084' '#1085#1072' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
      DisplayWidth = 20
      FieldName = 'ENGINE_VOLUME'
      Precision = 9
      Size = 1
    end
    object VehicleNomTBLLOADABILITY: TIBStringField
      DisplayLabel = #1058#1086#1074#1072#1088#1080#1084#1086#1089#1090
      DisplayWidth = 20
      FieldName = 'LOADABILITY'
      Size = 32
    end
    object VehicleNomTBLAXLES_NUMBER: TIntegerField
      DisplayLabel = #1041#1088#1086#1081' '#1086#1089#1080
      DisplayWidth = 20
      FieldName = 'AXLES_NUMBER'
    end
    object VehicleNomTBLSEATS_NUMBER: TIntegerField
      DisplayLabel = #1041#1088#1086#1081' '#1084#1077#1089#1090#1072
      DisplayWidth = 20
      FieldName = 'SEATS_NUMBER'
    end
    object VehicleNomTBLBRAND_NAME: TStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'BRAND_NAME'
      LookupDataSet = BrandTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'BRAND_ID'
      Size = 32
      Lookup = True
    end
    object VehicleNomTBLCATEGORY_NAME: TStringField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'CATEGORY_NAME'
      LookupDataSet = CategoryTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'CATEGORY_ID'
      Size = 32
      Lookup = True
    end
    object VehicleNomTBLENGINE_NAME: TStringField
      DisplayLabel = #1044#1074#1080#1075#1072#1090#1077#1083
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'ENGINE_NAME'
      LookupDataSet = EngineTypeTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ENGINE_TYPE_ID'
      Size = 32
      Lookup = True
    end
    object VehicleNomTBLTYPE_NAME: TStringField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'TYPE_NAME'
      LookupDataSet = VehicleTypeTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'TYPE_VEHICLE_ID'
      Size = 32
      Lookup = True
    end
  end
  object VehicleNomDS: TDataSource
    DataSet = VehicleNomTBL
    Left = 320
    Top = 200
  end
  object OwnerTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = OwnerTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'PHONE_NUMBER'
        DataType = ftLargeint
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'MOL'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'BUL_EGN'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'OWNENAMERNDX'
        Fields = 'NAME'
      end
      item
        Name = 'OWNERPNNDX'
        Fields = 'PHONE_NUMBER'
      end
      item
        Name = 'OWNERMOLNDX'
        Fields = 'MOL'
      end
      item
        Name = 'OWNERBENDX'
        Fields = 'BUL_EGN'
      end
      item
        Name = 'OWNEREMNDX'
        Fields = 'E_MAIL'
      end
      item
        Name = 'OWNERADDNDX'
        Fields = 'ADDRESS'
      end>
    IndexName = 'RDB$PRIMARY1'
    StoreDefs = True
    TableName = 'OWNER'
    Left = 240
    Top = 152
    object OwnerTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object OwnerTBLNAME: TIBStringField
      DisplayLabel = #1048#1084#1077
      DisplayWidth = 100
      FieldName = 'NAME'
      Size = 128
    end
    object OwnerTBLBUL_EGN: TIBStringField
      DisplayLabel = #1045#1043#1053'/'#1041#1059#1051
      DisplayWidth = 20
      FieldName = 'BUL_EGN'
      Size = 12
    end
    object OwnerTBLMOL: TIBStringField
      DisplayLabel = #1052#1054#1051
      DisplayWidth = 40
      FieldName = 'MOL'
      Size = 64
    end
    object OwnerTBLPHONE_NUMBER: TLargeintField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
      DisplayWidth = 25
      FieldName = 'PHONE_NUMBER'
    end
    object OwnerTBLE_MAIL: TIBStringField
      DisplayLabel = #1045'-'#1084#1077#1081#1083
      DisplayWidth = 40
      FieldName = 'E_MAIL'
      Size = 64
    end
    object OwnerTBLADDRESS: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 200
      FieldName = 'ADDRESS'
      Size = 256
    end
  end
  object OwnerDS: TDataSource
    DataSet = OwnerTBL
    Left = 320
    Top = 152
  end
  object BrandTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = BrandTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'BRAND'
    Left = 24
    Top = 296
    object BrandTBLID: TIntegerField
      DisplayWidth = 15
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object BrandTBLNAME: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 32
    end
  end
  object RepairServiceTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = RepairServiceTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REPAIR_ID'
        DataType = ftInteger
      end
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY23'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN24'
        Fields = 'REPAIR_ID'
      end
      item
        Name = 'RDB$FOREIGN25'
        Fields = 'SERVICE_ID'
      end>
    IndexFieldNames = 'REPAIR_ID'
    MasterFields = 'ID'
    MasterSource = RepairDS
    StoreDefs = True
    TableName = 'REPAIR_SERVICE'
    Left = 240
    Top = 104
    object RepairServiceTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object RepairServiceTBLSERVICE: TStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 94
      FieldKind = fkLookup
      FieldName = 'SERVICE'
      LookupDataSet = AllServiceTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'SERVICE_ID'
      Size = 110
      Lookup = True
    end
    object RepairServiceTBLTOTAL_PRICE: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 20
      FieldName = 'TOTAL_PRICE'
      Required = True
      Precision = 18
      Size = 2
    end
    object RepairServiceTBLREPAIR_ID: TIntegerField
      FieldName = 'REPAIR_ID'
      Required = True
      Visible = False
    end
    object RepairServiceTBLSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
      Required = True
      Visible = False
    end
  end
  object RepairServiceDS: TDataSource
    DataSet = RepairServiceTBL
    Left = 320
    Top = 104
  end
  object BrandDS: TDataSource
    DataSet = BrandTBL
    Left = 96
    Top = 296
  end
  object ServiceDS: TDataSource
    DataSet = ServiceTBL
    Left = 96
    Top = 104
  end
  object CategoryDS: TDataSource
    DataSet = CategoryTBL
    Left = 320
    Top = 248
  end
  object EngineTypeDS: TDataSource
    DataSet = EngineTypeTBL
    Left = 320
    Top = 296
  end
  object ServiceTBL: TIBTable
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 128
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY22'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SERVICETBLNAMENDX'
        Fields = 'NAME'
      end>
    IndexFieldNames = 'ID'
    MasterFields = 'SERVICE_ID'
    MasterSource = RepairServiceDS
    StoreDefs = True
    TableName = 'SERVICE'
    Left = 24
    Top = 104
    object ServiceTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object ServiceTBLNAME: TIBStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 110
      FieldName = 'NAME'
      Size = 130
    end
  end
  object CategoryTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = CategoryTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CATEGORY'
    Left = 240
    Top = 248
    object CategoryTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object CategoryTBLNAME: TIBStringField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 32
    end
  end
  object EngineTypeTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = EngineTypeTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ENGINE_TYPE'
    Left = 240
    Top = 296
    object EngineTypeTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object EngineTypeTBLNAME: TIBStringField
      DisplayLabel = #1042#1080#1076' '#1085#1072' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 32
    end
  end
  object ItemTBL: TIBTable
    Database = DB
    Transaction = Transaction
    AfterDelete = ItemTBLAfterPost
    AfterPost = ItemTBLAfterPost
    AfterRefresh = ItemTBLAfterPost
    BeforePost = ItemTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRICE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'QUANTITY'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'ITEM_NOMENCLATURE_ID'
        DataType = ftInteger
      end
      item
        Name = 'SERVICE_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY31'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN32'
        Fields = 'SERVICE_ID'
      end
      item
        Name = 'RDB$FOREIGN33'
        Fields = 'ITEM_NOMENCLATURE_ID'
      end>
    IndexFieldNames = 'SERVICE_ID'
    MasterFields = 'ID'
    MasterSource = ServiceDS
    StoreDefs = True
    TableName = 'ITEM'
    Left = 24
    Top = 344
    object ItemTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object ItemTBLNAME: TStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'NAME'
      LookupDataSet = ItemNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'ITEM_NOMENCLATURE_ID'
      Required = True
      Size = 65
      Lookup = True
    end
    object ItemTBLPRICE: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 20
      FieldName = 'PRICE'
      Required = True
      Precision = 18
      Size = 2
    end
    object ItemTBLQUANTITY: TIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      DisplayWidth = 20
      FieldName = 'QUANTITY'
      Required = True
      Precision = 9
      Size = 2
    end
    object ItemTBLMEASURE_NAME_ITEM: TStringField
      DisplayLabel = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'MEASURE_NAME_ITEM'
      LookupDataSet = ItemNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'MESURE_NAME'
      KeyFields = 'ITEM_NOMENCLATURE_ID'
      Required = True
      Size = 64
      Lookup = True
    end
    object ItemTBLMANUFACTURER_NAME_ITEM: TStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083
      DisplayWidth = 70
      FieldKind = fkLookup
      FieldName = 'MANUFACTURER_NAME_ITEM'
      LookupDataSet = ItemNomTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'MANUFACTURER_NAME'
      KeyFields = 'ITEM_NOMENCLATURE_ID'
      Required = True
      Size = 64
      Lookup = True
    end
    object ItemTBLITEM_NOMENCLATURE_ID: TIntegerField
      FieldName = 'ITEM_NOMENCLATURE_ID'
      Required = True
      Visible = False
    end
    object ItemTBLSERVICE_ID: TIntegerField
      FieldName = 'SERVICE_ID'
      Required = True
      Visible = False
    end
  end
  object ItemNomTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = ItemNomTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'MANUFACTURER_ID'
        DataType = ftInteger
      end
      item
        Name = 'MEASURE_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY28'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN29'
        Fields = 'MEASURE_ID'
      end
      item
        Name = 'RDB$FOREIGN30'
        Fields = 'MANUFACTURER_ID'
      end
      item
        Name = 'ITEMNAMENDX'
        Fields = 'NAME'
      end
      item
        Name = 'ITEMNOMTBLNAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'ITEM_NOMENCLATURE'
    Left = 240
    Top = 344
    object ItemNomTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object ItemNomTBLNAME: TIBStringField
      DisplayLabel = #1048#1084#1077
      DisplayWidth = 50
      FieldName = 'NAME'
      Size = 64
    end
    object ItemNomTBLMANUFACTURER_ID: TIntegerField
      FieldName = 'MANUFACTURER_ID'
      Visible = False
    end
    object ItemNomTBLMEASURE_ID: TIntegerField
      FieldName = 'MEASURE_ID'
      Visible = False
    end
    object ItemNomTBLMANUFACTURER_NAME: TStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'MANUFACTURER_NAME'
      LookupDataSet = ManufacturerTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'MANUFACTURER_ID'
      Size = 64
      Lookup = True
    end
    object ItemNomTBLMESURE_NAME: TStringField
      DisplayLabel = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'MESURE_NAME'
      LookupDataSet = MesureTBL
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'MEASURE_ID'
      Size = 64
      Lookup = True
    end
  end
  object ManufacturerTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = ManufacturerTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 64
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY27'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MANUFACTURER'
    Left = 240
    Top = 392
    object ManufacturerTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object ManufacturerTBLNAME: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083
      FieldName = 'NAME'
      Size = 64
    end
  end
  object MesureTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = MesureTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 64
      end
      item
        Name = 'ABBREVIATION'
        DataType = ftString
        Size = 16
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY26'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MEASURE'
    Left = 24
    Top = 392
    object MesureTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object MesureTBLNAME: TIBStringField
      DisplayLabel = #1048#1084#1077
      DisplayWidth = 23
      FieldName = 'NAME'
      Size = 64
    end
    object MesureTBLABBREVIATION: TIBStringField
      DisplayLabel = #1040#1073#1088#1080#1074#1080#1072#1090#1091#1088#1072
      DisplayWidth = 15
      FieldName = 'ABBREVIATION'
      Size = 16
    end
  end
  object VehicleTypeTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = VehicleTypeTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TYPE_VEHICLE'
    Left = 240
    Top = 56
    object VehicleTypeTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object VehicleTypeTBLNAME: TIBStringField
      DisplayLabel = #1042#1080#1076
      DisplayWidth = 40
      FieldName = 'NAME'
      Size = 32
    end
  end
  object ItemDS: TDataSource
    DataSet = ItemTBL
    Left = 96
    Top = 344
  end
  object MesureDS: TDataSource
    DataSet = MesureTBL
    Left = 96
    Top = 392
  end
  object VehicleTypeDS: TDataSource
    DataSet = VehicleTypeTBL
    Left = 320
    Top = 56
  end
  object ItemNomDS: TDataSource
    DataSet = ItemNomTBL
    Left = 320
    Top = 344
  end
  object ManufacturerDS: TDataSource
    DataSet = ManufacturerTBL
    Left = 320
    Top = 392
  end
  object VehicleSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'VEHICLETBL_IDSP'
    Left = 160
    Top = 201
  end
  object RepairSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'REPAIRTBL_IDSP'
    Left = 160
    Top = 56
  end
  object RShopSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'RSHOPTBL_IDSP'
    Left = 160
    Top = 440
  end
  object ServiceSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'SERVICETBL_IDSP'
    Left = 160
    Top = 104
  end
  object RepairServiceSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'REPAIRSERVICETBL_IDSP'
    Left = 400
    Top = 104
  end
  object EmployeeSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'EMPLOYEETBL_IDSP'
    Left = 160
    Top = 152
  end
  object OwnerSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'OWNERTBL_IDSP'
    Left = 400
    Top = 152
  end
  object VehicleNomSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'VEHICLENOMTBL_IDSP'
    Left = 400
    Top = 200
  end
  object PossitionSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'POSSITIONTBL_IDSP'
    Left = 160
    Top = 248
  end
  object CategorySP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'CATEGORYTBL_IDSP'
    Left = 400
    Top = 248
  end
  object BrandSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'BRANDTBL_IDSP'
    Left = 160
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end>
  end
  object EngineTypeSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'ENGINETYPETBL_IDSP'
    Left = 400
    Top = 298
  end
  object ItemSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'ITEMTBL_IDSP'
    Left = 160
    Top = 344
  end
  object ItemNomSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'ITEMNOMTBL_IDSP'
    Left = 400
    Top = 344
  end
  object MesureSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'MESURETBL_IDSP'
    Left = 160
    Top = 392
  end
  object ManufacturerSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'MANUFACTURERTBL_IDSP'
    Left = 400
    Top = 392
  end
  object VehicleTypeSP: TIBStoredProc
    Database = DB
    Transaction = Transaction
    StoredProcName = 'VEHICLETYPETBL_IDSP'
    Left = 400
    Top = 56
  end
  object AllServicesDS: TDataSource
    DataSet = AllServiceTBL
    Left = 320
    Top = 440
  end
  object AllServiceTBL: TIBTable
    Database = DB
    Transaction = Transaction
    BeforePost = AllServiceTBLBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 128
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY22'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'SERVICETBLNAMENDX'
        Fields = 'NAME'
      end>
    StoreDefs = True
    TableName = 'SERVICE'
    Left = 240
    Top = 440
    object AllServiceTBLID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object AllServiceTBLNAME: TIBStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      FieldName = 'NAME'
      Size = 128
    end
  end
  object LogInQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select id,first_name,fam_name'
      'from employee '
      'where username = :PUSER and user_password = :PPASS;')
    Left = 320
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PUSER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PPASS'
        ParamType = ptUnknown
      end>
  end
  object RepairCountQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select brand.name, count(repair.id) as cnt'
      'from vehicle,vehicle_nomenclature,brand,repair'
      'where '
      '   vehicle.vehicle_nomenclature_id = vehicle_nomenclature.id and'
      '   vehicle_nomenclature.brand_id = brand.id and'
      '   repair.vehicle_id = vehicle.id'
      'group by brand.id, brand.name'
      'order by 2 desc')
    Left = 56
    Top = 496
    object RepairCountQueryNAME: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 26
      FieldName = 'NAME'
      Size = 32
    end
    object RepairCountQueryCNT: TIntegerField
      DisplayLabel = #1041#1088#1086#1081' '#1087#1086#1087#1088#1072#1074#1082#1080
      DisplayWidth = 10
      FieldName = 'CNT'
      Required = True
    end
  end
  object RepairCountDS: TDataSource
    DataSet = RepairCountQuery
    Left = 160
    Top = 544
  end
  object ServiceCountQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select service.name, count(service.id) as cnt'
      
        'from service, repair_service, repair, vehicle, vehicle_nomenclat' +
        'ure, brand'
      'where service.id=repair_service.service_id and'
      '      repair_service.repair_id=repair.id and'
      '      vehicle.id=repair.vehicle_id and'
      
        '      vehicle.vehicle_nomenclature_id = vehicle_nomenclature.id ' +
        'and'
      '      vehicle_nomenclature.brand_id = brand.id and'
      '      brand.name like :PBRANDNAME'
      'group by  service.id, service.name'
      'order by 2 desc')
    Left = 56
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PBRANDNAME'
        ParamType = ptUnknown
      end>
    object ServiceCountQueryNAME: TIBStringField
      DisplayLabel = #1059#1089#1083#1091#1075#1072
      DisplayWidth = 34
      FieldName = 'NAME'
      Size = 128
    end
    object ServiceCountQueryCNT: TIntegerField
      DisplayLabel = #1041#1088#1086#1081' '#1080#1079#1074#1098#1088#1096#1074#1072#1085#1080#1103
      DisplayWidth = 15
      FieldName = 'CNT'
      Required = True
    end
  end
  object ServiceCountDS: TDataSource
    DataSet = ServiceCountQuery
    Left = 160
    Top = 496
  end
  object SumQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(item.price*item.quantity) summ'
      'from item'
      'where item.service_id = :PSERVICEID')
    Left = 320
    Top = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PSERVICEID'
        ParamType = ptUnknown
      end>
  end
  object PriceQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select  brand.name, max(repair_service.total_price) as maxi, sum' +
        '(repair_service.total_price) as summ'
      
        'from repair_service, repair, vehicle, vehicle_nomenclature, bran' +
        'd'
      'where repair_service.repair_id=repair.id and'
      '      vehicle.id=repair.vehicle_id and'
      
        '      vehicle.vehicle_nomenclature_id = vehicle_nomenclature.id ' +
        'and'
      '      vehicle_nomenclature.brand_id = brand.id and'
      '      brand.name like :PBRANDNAME'
      'group by brand.id, brand.name'
      'order by 2 desc')
    Left = 56
    Top = 592
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PBRANDNAME'
        ParamType = ptUnknown
      end>
    object PriceQueryNAME: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 15
      FieldName = 'NAME'
      Size = 32
    end
    object PriceQueryMAXI: TIBBCDField
      DisplayLabel = #1053#1072#1081'-'#1089#1082#1098#1087#1072' '#1091#1089#1083#1091#1075#1072
      DisplayWidth = 22
      FieldName = 'MAXI'
      Precision = 18
      Size = 2
    end
    object PriceQuerySUMM: TIBBCDField
      DisplayLabel = #1054#1073#1097#1072' '#1094#1077#1085#1072
      DisplayWidth = 15
      FieldName = 'SUMM'
      Precision = 18
      Size = 2
    end
  end
  object PriceDS: TDataSource
    DataSet = PriceQuery
    Left = 160
    Top = 592
  end
  object repair_service_delete_query: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'DELETE FROM REPAIR_SERVICE'
      'WHERE REPAIR_ID = :PREPAIRID;')
    Left = 320
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PREPAIRID'
        ParamType = ptUnknown
      end>
  end
  object ReferenceRepairQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '   repair.accpetance_date,'
      '   repair.completion_date,'
      '   repair.accepted_the_vehicle, '
      '   vehicle.registration_number,'
      '   brand.name, '
      '   repair_shop.name, '
      '   owner.name, '
      '   repair.note'
      
        'from vehicle, vehicle_nomenclature, brand, repair, repair_shop, ' +
        'owner'
      'where'
      '   vehicle.vehicle_nomenclature_id = vehicle_nomenclature.id and'
      '   vehicle_nomenclature.brand_id = brand.id and'
      '   repair.vehicle_id = vehicle.id and'
      '   repair.repair_shop_id = repair_shop.id and'
      '   vehicle.owner_id = owner.id and'
      '   brand.name like :PBRANDNAME and'
      '   vehicle.registration_number like :PREGNUM and '
      '   repair_shop.name like :PRSHOPNAME and'
      '   repair.accpetance_date between :PADFROM and  :PADTO and'
      '   repair.completion_date between :PCDFROM and  :PCDTO')
    Left = 56
    Top = 640
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PBRANDNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PREGNUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRSHOPNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PADFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PADTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCDFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCDTO'
        ParamType = ptUnknown
      end>
    object ReferenceRepairQueryACCPETANCE_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1080#1089#1090#1080#1075#1072#1085#1077
      DisplayWidth = 20
      FieldName = 'ACCPETANCE_DATE'
      Origin = 'REPAIR.ACCPETANCE_DATE'
    end
    object ReferenceRepairQueryCOMPLETION_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1079#1072#1074#1098#1088#1096#1074#1072#1085#1077
      DisplayWidth = 20
      FieldName = 'COMPLETION_DATE'
      Origin = 'REPAIR.COMPLETION_DATE'
    end
    object ReferenceRepairQueryACCEPTED_THE_VEHICLE: TIBStringField
      DisplayLabel = #1055#1086#1083#1091#1095#1080#1083' '#1087#1098#1090#1085#1072#1090#1072' '#1080#1083#1080' '#1080#1079#1074#1098#1085#1087#1098#1090#1085#1072' '#1090#1077#1093#1085#1080#1082#1072
      DisplayWidth = 40
      FieldName = 'ACCEPTED_THE_VEHICLE'
      Origin = 'REPAIR.ACCEPTED_THE_VEHICLE'
      Size = 128
    end
    object ReferenceRepairQueryREGISTRATION_NUMBER: TIBStringField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'REGISTRATION_NUMBER'
      Origin = 'VEHICLE.REGISTRATION_NUMBER'
      Size = 16
    end
    object ReferenceRepairQueryNAME: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 20
      FieldName = 'NAME'
      Origin = 'BRAND.NAME'
      Size = 32
    end
    object ReferenceRepairQueryNAME1: TIBStringField
      DisplayLabel = #1057#1077#1088#1074#1080#1079
      DisplayWidth = 40
      FieldName = 'NAME1'
      Origin = 'REPAIR_SHOP.NAME'
      Size = 128
    end
    object ReferenceRepairQueryNAME2: TIBStringField
      DisplayLabel = #1057#1086#1073#1089#1090#1074#1077#1085#1080#1082
      DisplayWidth = 30
      FieldName = 'NAME2'
      Origin = 'OWNER.NAME'
      Size = 64
    end
    object ReferenceRepairQueryNOTE: TIBStringField
      DisplayWidth = 100
      FieldName = 'NOTE'
      Origin = 'REPAIR.NOTE'
      Size = 256
    end
  end
  object ReferenceRepairDS: TDataSource
    DataSet = ReferenceRepairQuery
    Left = 160
    Top = 640
  end
  object ReferenceItemDS: TDataSource
    DataSet = ReferenceItemQuery
    Left = 160
    Top = 688
  end
  object ReferenceItemQuery: TIBQuery
    Database = DB
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      '   item_nomenclature.name,'
      '   item.price,'
      '   item.quantity,'
      '   measure.name,'
      '   manufacturer.name,'
      '   repair.accpetance_date,'
      '   repair.completion_date,'
      '   vehicle.registration_number,'
      '   brand.name,'
      '   repair_shop.name'
      
        'from vehicle, vehicle_nomenclature, brand, repair, repair_shop, ' +
        'item,'
      
        '   item_nomenclature, manufacturer, measure, repair_service, ser' +
        'vice'
      'where'
      '   vehicle.vehicle_nomenclature_id = vehicle_nomenclature.id and'
      '   vehicle_nomenclature.brand_id = brand.id and'
      '   repair.vehicle_id = vehicle.id and'
      '   repair.repair_shop_id = repair_shop.id and'
      '   repair_service.repair_id = repair.id and'
      '   repair_service.service_id = service.id and'
      '   item.service_id = service.id and'
      '   item.item_nomenclature_id = item_nomenclature.id and'
      '   item_nomenclature.manufacturer_id = manufacturer.id and'
      '   item_nomenclature.measure_id = measure.id and'
      '   manufacturer.name != '#39'-'#39' and'
      '   brand.name like :PBRANDNAME and'
      '   vehicle.registration_number like :PREGNUM and '
      '   repair_shop.name like :PRSHOPNAME and'
      '   repair.accpetance_date between :PADFROM and  :PADTO and'
      '   repair.completion_date between :PCDFROM and  :PCDTO')
    Left = 56
    Top = 688
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PBRANDNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PREGNUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRSHOPNAME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PADFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PADTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCDFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCDTO'
        ParamType = ptUnknown
      end>
    object ReferenceItemQueryNAME: TIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = 'ITEM_NOMENCLATURE.NAME'
      Size = 64
    end
    object ReferenceItemQueryPRICE: TIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      DisplayWidth = 20
      FieldName = 'PRICE'
      Origin = 'ITEM.PRICE'
      Precision = 18
      Size = 2
    end
    object ReferenceItemQueryQUANTITY: TIBBCDField
      DisplayLabel = #1041#1088#1086#1081
      DisplayWidth = 20
      FieldName = 'QUANTITY'
      Origin = 'ITEM.QUANTITY'
      Precision = 9
      Size = 2
    end
    object ReferenceItemQueryNAME1: TIBStringField
      DisplayLabel = #1052#1103#1088#1082#1072
      DisplayWidth = 20
      FieldName = 'NAME1'
      Origin = 'MEASURE.NAME'
      Size = 64
    end
    object ReferenceItemQueryNAME2: TIBStringField
      DisplayLabel = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083
      DisplayWidth = 40
      FieldName = 'NAME2'
      Origin = 'MANUFACTURER.NAME'
      Size = 64
    end
    object ReferenceItemQueryACCPETANCE_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1087#1088#1077#1089#1090#1080#1075#1072#1085#1077' '#1079#1072' '#1088#1077#1084#1086#1085#1090
      DisplayWidth = 30
      FieldName = 'ACCPETANCE_DATE'
      Origin = 'REPAIR.ACCPETANCE_DATE'
    end
    object ReferenceItemQueryCOMPLETION_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1079#1072#1074#1098#1088#1096#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1084#1086#1085#1090
      DisplayWidth = 30
      FieldName = 'COMPLETION_DATE'
      Origin = 'REPAIR.COMPLETION_DATE'
    end
    object ReferenceItemQueryREGISTRATION_NUMBER: TIBStringField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1077#1084#1077#1088
      DisplayWidth = 20
      FieldName = 'REGISTRATION_NUMBER'
      Origin = 'VEHICLE.REGISTRATION_NUMBER'
      Size = 16
    end
    object ReferenceItemQueryNAME3: TIBStringField
      DisplayLabel = #1052#1072#1088#1082#1072
      DisplayWidth = 30
      FieldName = 'NAME3'
      Origin = 'BRAND.NAME'
      Size = 32
    end
    object ReferenceItemQueryNAME4: TIBStringField
      DisplayLabel = #1057#1077#1088#1074#1080#1079
      DisplayWidth = 40
      FieldName = 'NAME4'
      Origin = 'REPAIR_SHOP.NAME'
      Size = 128
    end
  end
end
