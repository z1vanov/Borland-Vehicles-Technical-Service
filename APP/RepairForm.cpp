//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "RepairForm.h"
#include "DataModuleUnit.h"
#include "EditPartForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRepairShopFormUnit *RepairShopFormUnit;
//---------------------------------------------------------------------------
__fastcall TRepairShopFormUnit::TRepairShopFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TRepairShopFormUnit::RShopButtonSelectClick(
      TObject *Sender)
{
        RepairEditFormUnit->REFUShopNameEdit->Text =
        DM->RShopTBL->FieldByName("NAME")->AsString;
        RepairEditFormUnit->REFUShopAddressEdit->Text =
        DM->RShopTBL->FieldByName("ADDRESS")->AsString;

        RepairShopFormUnit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TRepairShopFormUnit::RShopEditChange(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        DM->ServiceTBL->Locate("NAME", RShopEdit->Text, Opts);
}
//---------------------------------------------------------------------------

void __fastcall TRepairShopFormUnit::RShopSortCBSelect(TObject *Sender)
{
        switch(RShopSortCB->ItemIndex)
        {
                case 0: DM->RShopTBL->IndexName ="RDB$PRIMARY14";break;
                case 1: DM->RShopTBL->IndexName ="RSHOPNAMENDX";break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TRepairShopFormUnit::RShopGridColExit(TObject *Sender)
{
        if(DM->RShopTBL->State==dsInsert || DM->RShopTBL->State==dsEdit)
               DM->RShopTBL->Post();
}
//---------------------------------------------------------------------------

void __fastcall TRepairShopFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(RShopButtonSelect->Visible == true)
                RShopButtonSelect->Visible = false;
}
//---------------------------------------------------------------------------

