//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MesureForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMesureFormUnit *MesureFormUnit;
//---------------------------------------------------------------------------
__fastcall TMesureFormUnit::TMesureFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMesureFormUnit::MesureGridExit(TObject *Sender)
{
        if(DM->MesureTBL->State==dsInsert || DM->MesureTBL->State==dsEdit)
               DM->MesureTBL->Post();
}
//---------------------------------------------------------------------------
void __fastcall TMesureFormUnit::MesureButtonClick(TObject *Sender)
{
         MesureFormUnit->Close();
}
//---------------------------------------------------------------------------
