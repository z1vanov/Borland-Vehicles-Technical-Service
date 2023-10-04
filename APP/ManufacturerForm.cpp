//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ManufacturerForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TManufacturerFormUnit *ManufacturerFormUnit;
//---------------------------------------------------------------------------
__fastcall TManufacturerFormUnit::TManufacturerFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TManufacturerFormUnit::ManufacturerGridExit(
      TObject *Sender)
{
        if(DM->ManufacturerTBL->State==dsInsert || DM->ManufacturerTBL->State==dsEdit)
               DM->ManufacturerTBL->Post();
}
//---------------------------------------------------------------------------
void __fastcall TManufacturerFormUnit::ManufacturerButtonClick(
      TObject *Sender)
{
        ManufacturerFormUnit->Close();
}
//---------------------------------------------------------------------------
