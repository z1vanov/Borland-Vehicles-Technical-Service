//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "TypeForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TTypeFormUnit *TypeFormUnit;
//---------------------------------------------------------------------------
__fastcall TTypeFormUnit::TTypeFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTypeFormUnit::TypeButtonClick(TObject *Sender)
{
        TypeFormUnit->Close();
}
//---------------------------------------------------------------------------
void __fastcall TTypeFormUnit::TypeGridExit(TObject *Sender)
{
        if(DM->VehicleTypeTBL->State==dsInsert || DM->VehicleTypeTBL->State==dsEdit)
               DM->VehicleTypeTBL->Post();
}
//---------------------------------------------------------------------------
