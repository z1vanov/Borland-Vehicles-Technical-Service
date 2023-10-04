//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#pragma hdrstop

#include "MainUnit.h"
#include "DataModuleUnit.h"
#include "EditVehicleForm.h"
#include "EditPartForm.h"
#include "LogInForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainFormUnit *MainFormUnit;
//---------------------------------------------------------------------------
__fastcall TMainFormUnit::TMainFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainSortCBSelect(TObject *Sender)
{
        switch(MainSortCB->ItemIndex)
        {
                case 0: DM->VehicleTBL->IndexName ="RDB$PRIMARY11";break;
                case 1: DM->VehicleTBL->IndexName ="VEHICLERDNDX";break;
                case 2: DM->VehicleTBL->IndexName ="VEHICLERDATENDX";break;
                case 3: DM->VehicleTBL->IndexName ="VEHICLEPYNDX";break;
                case 4: DM->VehicleTBL->IndexName ="VEHICLEFNNDX";break;
                case 5: DM->VehicleTBL->IndexName ="VEHICLECNNDX";break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TMainFormUnit::MainEditChange(TObject *Sender)
{
{
        AnsiString FieldName ="REGISTRATION_NUMBER";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        switch(MainSearchCB->ItemIndex)
        {
                case 0: FieldName ="REGISTRATION_NUMBER";break;
                case 1: FieldName ="REGISTRATION_DATE";break;
                case 2: FieldName ="PRODUCTION_YEAR";break;
                case 3: FieldName ="CHASSIS_NUMBER";break;
                case 4: FieldName ="FRAME_NUMBER";break;
        }
        DM->VehicleTBL->Locate(FieldName, MainEdit->Text, Opts);
}
}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainAddVehicleButtonClick(TObject *Sender)
{
        DM->VehicleTBL->Append();
        EditVehicleFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainFormUnit::MainRepairAddButtonClick(TObject *Sender)
{
        DM->RepairTBL->Append();
        DM->RepairTBL->Post();
        DM->RepairTBL->Edit();
        RepairEditFormUnit->ShowModal();

}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainEditVehicleButtonClick(TObject *Sender)
{
        AnsiString FieldName ="ID";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;

        DM->VehicleNomTBL->Locate(FieldName,
           DM->VehicleTBL->FieldByName("VEHICLE_NOMENCLATURE_ID")->AsInteger, Opts);

        EditVehicleFormUnit->EVFUBrandEdit->Text =
        DM->VehicleNomTBL->FieldByName("BRAND_NAME")->AsString;
        EditVehicleFormUnit->EVFUModelEdit->Text =
        DM->VehicleNomTBL->FieldByName("MODEL")->AsString;
        EditVehicleFormUnit->EVFUCategoryEdit->Text =
        DM->VehicleNomTBL->FieldByName("CATEGORY_NAME")->AsString;
        EditVehicleFormUnit->EVFUEngineTypeEdit->Text =
        DM->VehicleNomTBL->FieldByName("ENGINE_NAME")->AsString;
        EditVehicleFormUnit->EVFUTypeEdit->Text =
        DM->VehicleNomTBL->FieldByName("TYPE_NAME")->AsString;
        EditVehicleFormUnit->EVFUEngineVolumeEdit->Text =
        DM->VehicleNomTBL->FieldByName("ENGINE_VOLUME")->AsString;
        EditVehicleFormUnit->EVFULoadabilityEdit->Text =
        DM->VehicleNomTBL->FieldByName("LOADABILITY")->AsString;
        EditVehicleFormUnit->EVFUAxlesEdit->Text =
        DM->VehicleNomTBL->FieldByName("AXLES_NUMBER")->AsString;
        EditVehicleFormUnit->EVFUSeatsEdit->Text =
        DM->VehicleNomTBL->FieldByName("SEATS_NUMBER")->AsString;

        EditVehicleFormUnit->EVFUYearManufactTimePicker->DateTime =
        DM->VehicleTBL->FieldByName("PRODUCTION_YEAR")->AsDateTime;
        EditVehicleFormUnit->EVFURegNumEdit->Text =
        DM->VehicleTBL->FieldByName("REGISTRATION_NUMBER")->AsString;
        EditVehicleFormUnit->EVFURegDateTimePicker->DateTime =
        DM->VehicleTBL->FieldByName("REGISTRATION_DATE")->AsDateTime;
        EditVehicleFormUnit->EVFUFrameEdit->Text =
        DM->VehicleTBL->FieldByName("FRAME_NUMBER")->AsString;
        EditVehicleFormUnit->EVFUChasseEdit->Text =
        DM->VehicleTBL->FieldByName("CHASSIS_NUMBER")->AsString;

        DM->OwnerTBL->Locate(FieldName,
           DM->VehicleTBL->FieldByName("OWNER_ID")->AsInteger, Opts);

        EditVehicleFormUnit->EVFUNameEdit->Text =
        DM->OwnerTBL->FieldByName("NAME")->AsString;
        EditVehicleFormUnit->EVFUEgnBulEdit->Text =
        DM->OwnerTBL->FieldByName("BUL_EGN")->AsString;
        EditVehicleFormUnit->EVFUMolEdit->Text =
        DM->OwnerTBL->FieldByName("MOL")->AsString;
        EditVehicleFormUnit->EVFUTelNumEdit->Text =
        DM->OwnerTBL->FieldByName("PHONE_NUMBER")->AsString;
        EditVehicleFormUnit->EVFUEmailEdit->Text =
        DM->OwnerTBL->FieldByName("E_MAIL")->AsString;
        EditVehicleFormUnit->EVFUAddressEdit->Text =
        DM->OwnerTBL->FieldByName("ADDRESS")->AsString;

        DM->VehicleTBL->Edit();
        EditVehicleFormUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainEditRepirButtonClick(TObject *Sender)
{
        AnsiString FieldName ="ID";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;

        if(!(DM->RepairTBL->Locate("VEHICLE_ID",
           DM->VehicleTBL->FieldByName("ID")->AsInteger, Opts)))
                ShowMessage("Няма избран ремонт!");
        //without this if the program crashes if you try to edit or delete repair that dont exist
        else
        {
                DM->EmployeeTBL->Locate(FieldName,
                   DM->RepairTBL->FieldByName("EMPLOYEE_ID")->AsInteger, Opts);

                RepairEditFormUnit->REFUFirstNameEdit->Text =
                DM->EmployeeTBL->FieldByName("FIRST_NAME")->AsString;
                RepairEditFormUnit->REFUFamNameEdit->Text =
                DM->EmployeeTBL->FieldByName("FAM_NAME")->AsString;
                RepairEditFormUnit->REFUPhNumEdit->Text =
                DM->EmployeeTBL->FieldByName("PHONE_NUMBER")->AsString;
                RepairEditFormUnit->REFUSrPhNumEdit->Text =
                DM->EmployeeTBL->FieldByName("SERVICE_PHONE_NUMBER")->AsString;
                RepairEditFormUnit->REFUEmailEdit->Text =
                DM->EmployeeTBL->FieldByName("E_MAIL")->AsString;
                RepairEditFormUnit->REFUPossitionEdit->Text =
                DM->EmployeeTBL->FieldByName("POSSITION")->AsString;

                DM->RShopTBL->Locate(FieldName,
                   DM->RepairTBL->FieldByName("REPAIR_SHOP_ID")->AsInteger, Opts);

                RepairEditFormUnit->REFUShopNameEdit->Text =
                DM->RShopTBL->FieldByName("NAME")->AsString;
                RepairEditFormUnit->REFUShopAddressEdit->Text =
                DM->RShopTBL->FieldByName("ADDRESS")->AsString;

                RepairEditFormUnit->REFUAccDateTimePicker->DateTime=
                DM->RepairTBL->FieldByName("ACCPETANCE_DATE")->AsDateTime;
                RepairEditFormUnit->REFUComplDateTimePicker->DateTime=
                DM->RepairTBL->FieldByName("COMPLETION_DATE")->AsDateTime;
                RepairEditFormUnit->REFUAccEdit->Text=
                DM->RepairTBL->FieldByName("ACCEPTED_THE_VEHICLE")->AsString;
                RepairEditFormUnit->REFUNoteMemo->Text=
                DM->RepairTBL->FieldByName("NOTE")->AsString;

                RepairEditFormUnit->ShowModal();
        }
}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainDeleteRepairClick(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;

        if(!(DM->RepairTBL->Locate("VEHICLE_ID",
           DM->VehicleTBL->FieldByName("ID")->AsInteger, Opts)))
                ShowMessage("Няма избран ремонт!");
        else
                DM->repair_service_delete_query->ParamByName("PREPAIRID")->AsInteger =
                    DM->RepairTBL->FieldByName("ID")->AsInteger;

                DM->repair_service_delete_query->Close();
                DM->repair_service_delete_query->Prepare();
                DM->repair_service_delete_query->ExecSQL();

                DM->RepairTBL->Delete();

}
//---------------------------------------------------------------------------


void __fastcall TMainFormUnit::MainDeleteVehicleClick(TObject *Sender)
{
        AnsiString FieldName ="ID";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;

        if(DM->VehicleTBL->Locate(FieldName,
              DM->RepairTBL->FieldByName("VEHICLE_ID")->AsInteger, Opts))
                ShowMessage("Моля изтрийте ремонтите първо!");
        else
                DM->VehicleTBL->Delete();
}
//---------------------------------------------------------------------------

void __fastcall TMainFormUnit::FormShow(TObject *Sender)
{
        LogInFormUnit->ShowModal();
}
//---------------------------------------------------------------------------




