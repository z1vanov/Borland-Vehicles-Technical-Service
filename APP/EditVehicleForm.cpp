//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditVehicleForm.h"
#include "MainUnit.h"
#include "DataModuleUnit.h"
#include "OwnerForm.h"
#include "VehicleForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditVehicleFormUnit *EditVehicleFormUnit;
//---------------------------------------------------------------------------
__fastcall TEditVehicleFormUnit::TEditVehicleFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TEditVehicleFormUnit::EVFUSelectVehicleNomButtonClick(TObject *Sender)
{
        VehicleNomFormUnit->VehicleNomButtonSelect->Visible = true;
        VehicleNomFormUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TEditVehicleFormUnit::EVFUSubmitButtonClick(TObject *Sender)
{
        if(
           EVFUModelEdit->Text.IsEmpty() ||
           EVFURegNumEdit->Text.IsEmpty() ||
           EVFUEgnBulEdit->Text.IsEmpty()
           )
                ShowMessage("Моля попълнете всички полета");
        else{
                DM->VehicleTBL->FieldByName("PRODUCTION_YEAR")->AsDateTime =
                EVFUYearManufactTimePicker->DateTime;
                DM->VehicleTBL->FieldByName("REGISTRATION_NUMBER")->AsString =
                EVFURegNumEdit->Text;
                DM->VehicleTBL->FieldByName("REGISTRATION_DATE")->AsDateTime =
                EVFURegDateTimePicker->DateTime;
                DM->VehicleTBL->FieldByName("FRAME_NUMBER")->AsString =
                EVFUFrameEdit->Text;
                DM->VehicleTBL->FieldByName("CHASSIS_NUMBER")->AsString =
                EVFUChasseEdit->Text;
        
                DM->VehicleTBL->FieldByName("OWNER_ID")->AsInteger=
                DM->OwnerTBL->FieldByName("ID")->AsInteger;

                DM->VehicleTBL->FieldByName("VEHICLE_NOMENCLATURE_ID")->AsInteger=
                DM->VehicleNomTBL->FieldByName("ID")->AsInteger;

                DM->VehicleTBL->Post();
                EditVehicleFormUnit->Close();
        }
}
//---------------------------------------------------------------------------

void __fastcall TEditVehicleFormUnit::EVFUSelectOwnerButtonClick(TObject *Sender)
{
        OwnerFormUnit->OwnerButtonSelect->Visible = true;
        OwnerFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TEditVehicleFormUnit::EVFUCloseButtonClick(TObject *Sender)
{
        EditVehicleFormUnit->Close();

}
//---------------------------------------------------------------------------


void __fastcall TEditVehicleFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(DM->VehicleTBL->State == dsEdit || DM->VehicleTBL->State == dsInsert)
                DM->VehicleTBL->Cancel();

        EVFUYearManufactTimePicker->DateTime = Now();
        EVFUTypeEdit->Text = "";
        EVFUTelNumEdit->Text = "";
        EVFUSeatsEdit->Text = "";
        EVFURegNumEdit->Text = "";
        EVFURegDateTimePicker->DateTime = Now();
        EVFUNameEdit->Text = "";
        EVFUMolEdit->Text = "";
        EVFUModelEdit->Text = "";
        EVFULoadabilityEdit->Text = "";
        EVFUFrameEdit->Text = "";
        EVFUEngineVolumeEdit->Text = "";
        EVFUEngineTypeEdit->Text = "";
        EVFUEmailEdit->Text = "";
        EVFUEgnBulEdit->Text = "";
        EVFUChasseEdit->Text = "";
        EVFUCategoryEdit->Text = "";
        EVFUBrandEdit->Text = "";
        EVFUAxlesEdit->Text = "";
        EVFUAddressEdit->Text = "";


}
//---------------------------------------------------------------------------

