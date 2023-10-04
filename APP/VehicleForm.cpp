//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "VehicleForm.h"
#include "DataModuleUnit.h"
#include "EditVehicleForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TVehicleNomFormUnit *VehicleNomFormUnit;
//---------------------------------------------------------------------------
__fastcall TVehicleNomFormUnit::TVehicleNomFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TVehicleNomFormUnit::VehicleNomSortCBSelect(TObject *Sender)
{
        switch(VehicleNomSortCB->ItemIndex)
        {
                case 0: DM->VehicleNomTBL->IndexName ="RDB$PRIMARY6";break;
                case 1: DM->VehicleNomTBL->IndexName ="VEHNOMMODELNDX";break;
                case 2: DM->VehicleNomTBL->IndexName ="VEHNOMENGINEVOLNDX";break;
                case 3: DM->VehicleNomTBL->IndexName ="VEHNOMLOADNDX";break;
                case 4: DM->VehicleNomTBL->IndexName ="VEHNOMAXLESNDX";break;
                case 5: DM->VehicleNomTBL->IndexName ="VEHNOMSEATSNDX";break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TVehicleNomFormUnit::VehicleNomEditChange(TObject *Sender)
{
        AnsiString FieldName ="MODEL";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        switch(VehicleNomSearchCB->ItemIndex)
        {
                case 0: FieldName ="MODEL";break;
                case 1: FieldName ="ENGINE_TYPE";break;
                case 2: FieldName ="LOADABILITY";break;
                case 3: FieldName ="AXLES_NUMBER";break;
                case 4: FieldName ="SEATS_NUMBER";break;
        }
        DM->VehicleNomTBL->Locate(FieldName, VehicleNomEdit->Text, Opts);
}
//---------------------------------------------------------------------------

void __fastcall TVehicleNomFormUnit::VehicleNomGridExit(TObject *Sender)
{
        if(DM->VehicleNomTBL->State==dsInsert || DM->VehicleNomTBL->State==dsEdit)
               DM->VehicleNomTBL->Post();
}
//---------------------------------------------------------------------------

void __fastcall TVehicleNomFormUnit::VehicleNomButtonSelectClick(
      TObject *Sender)
{
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

        VehicleNomFormUnit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TVehicleNomFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(VehicleNomButtonSelect->Visible == true)
                VehicleNomButtonSelect->Visible = false;
}
//---------------------------------------------------------------------------

