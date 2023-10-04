//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EngineForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEngineFormUnit *EngineFormUnit;
//---------------------------------------------------------------------------
__fastcall TEngineFormUnit::TEngineFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEngineFormUnit::EngineGridExit(TObject *Sender)
{
        if(DM->EngineTypeTBL->State==dsInsert || DM->EngineTypeTBL->State==dsEdit)
               DM->EngineTypeTBL->Post();
}
//---------------------------------------------------------------------------
void __fastcall TEngineFormUnit::EngineButtonClick(TObject *Sender)
{
        EngineFormUnit->Close();
}
//---------------------------------------------------------------------------
