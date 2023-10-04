//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "CategoryForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TCategoryFormUnit *CategoryFormUnit;
//---------------------------------------------------------------------------
__fastcall TCategoryFormUnit::TCategoryFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TCategoryFormUnit::CategoriesButtonClick(TObject *Sender)
{
                CategoryFormUnit->Close();        
}
//---------------------------------------------------------------------------
void __fastcall TCategoryFormUnit::CategoriesGridExit(TObject *Sender)
{
        if(DM->CategoryTBL->State==dsInsert || DM->CategoryTBL->State==dsEdit)
               DM->CategoryTBL->Post();
}
//---------------------------------------------------------------------------
