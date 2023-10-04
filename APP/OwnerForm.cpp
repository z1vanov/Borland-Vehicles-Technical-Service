//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "OwnerForm.h"
#include "DataModuleUnit.h"
#include "EditVehicleForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TOwnerFormUnit *OwnerFormUnit;
//---------------------------------------------------------------------------
__fastcall TOwnerFormUnit::TOwnerFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TOwnerFormUnit::OwnerSortCBSelect(TObject *Sender)
{
        switch(OwnerSortCB->ItemIndex)
        {
                case 0: DM->OwnerTBL->IndexName ="RDB$PRIMARY1";break;
                case 1: DM->OwnerTBL->IndexName ="OWNENAMERNDX";break;
                case 2: DM->OwnerTBL->IndexName ="OWNERBENDX";break;
                case 3: DM->OwnerTBL->IndexName ="OWNERMOLNDX";break;
                case 4: DM->OwnerTBL->IndexName ="OWNERPNNDX";break;
                case 5: DM->OwnerTBL->IndexName ="OWNEREMNDX";break;
                case 6: DM->OwnerTBL->IndexName ="OWNERADDNDX";break;
        }
}
//---------------------------------------------------------------------------
void __fastcall TOwnerFormUnit::OwnerEditChange(TObject *Sender)
{
        AnsiString FieldName ="NAME";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        switch(OwnerSearchCB->ItemIndex)
        {
                case 0: FieldName ="NAME";break;
                case 1: FieldName ="BUL_EGN";break;
                case 2: FieldName ="MOL";break;
                case 3: FieldName ="PHONE_NUMBER";break;
                case 4: FieldName ="E_MAIL";break;
                case 5: FieldName ="ADDRESS";break;
        }
        DM->OwnerTBL->Locate(FieldName, OwnerEdit->Text, Opts);        
}
//---------------------------------------------------------------------------
void __fastcall TOwnerFormUnit::DBGrid1Exit(TObject *Sender)
{
        if(DM->OwnerTBL->State==dsInsert || DM->OwnerTBL->State==dsEdit)
               DM->OwnerTBL->Post();        
}
//---------------------------------------------------------------------------
void __fastcall TOwnerFormUnit::OwnerButtonSelectClick(TObject *Sender)
{
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

        OwnerFormUnit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TOwnerFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(OwnerButtonSelect->Visible == true)
                OwnerButtonSelect->Visible = false;
}
//---------------------------------------------------------------------------

