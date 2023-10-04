//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PossitionForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPossitionFormUnit *PossitionFormUnit;
//---------------------------------------------------------------------------
__fastcall TPossitionFormUnit::TPossitionFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPossitionFormUnit::PossitionGridExit(TObject *Sender)
{
        if(DM->PossitionTBL->State==dsInsert || DM->PossitionTBL->State==dsEdit)
               DM->PossitionTBL->Post();
}
//---------------------------------------------------------------------------
void __fastcall TPossitionFormUnit::PossitionButtonClick(TObject *Sender)
{
        PossitionFormUnit->Close();
}
//---------------------------------------------------------------------------
