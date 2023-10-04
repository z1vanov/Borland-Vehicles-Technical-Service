//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "BrandForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TBrandFormUnit *BrandFormUnit;
//---------------------------------------------------------------------------
__fastcall TBrandFormUnit::TBrandFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBrandFormUnit::BrandGridExit(TObject *Sender)
{
        if(DM->BrandTBL->State==dsInsert || DM->BrandTBL->State==dsEdit)
               DM->BrandTBL->Post();
}
//---------------------------------------------------------------------------
void __fastcall TBrandFormUnit::BrandButtonClick(TObject *Sender)
{
        BrandFormUnit->Close();        
}
//---------------------------------------------------------------------------

