//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PartForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPartFormUnit *PartFormUnit;
//---------------------------------------------------------------------------
__fastcall TPartFormUnit::TPartFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPartFormUnit::PartGridExit(TObject *Sender)
{
        if(DM->ItemNomTBL->State==dsInsert || DM->ItemNomTBL->State==dsEdit)
               DM->ItemNomTBL->Post();
}
//---------------------------------------------------------------------------


void __fastcall TPartFormUnit::PartSortCBSelect(TObject *Sender)
{
        switch(PartSortCB->ItemIndex)
        {
                case 0: DM->ItemNomTBL->IndexName ="RDB$PRIMARY40";break;
                case 1: DM->ItemNomTBL->IndexName ="ITEMNOMTBLNAMENDX";break;
        }
}
//---------------------------------------------------------------------------


void __fastcall TPartFormUnit::PartEditChange(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        DM->ItemNomTBL->Locate("NAME", PartEdit->Text, Opts);
}
//---------------------------------------------------------------------------

