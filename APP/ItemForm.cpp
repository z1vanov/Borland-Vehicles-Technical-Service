//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ItemForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TItemNomFormUnit *ItemNomFormUnit;
//---------------------------------------------------------------------------
__fastcall TItemNomFormUnit::TItemNomFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TItemNomFormUnit::ItemNomSortCBSelect(TObject *Sender)
{
        switch(ItemNomSortCB->ItemIndex)
        {
                case 0: DM->ItemNomTBL->IndexName ="RDB$PRIMARY40";break;
                case 1: DM->ItemNomTBL->IndexName ="ITEMNAMENDX";break;
        }        
}
//---------------------------------------------------------------------------
void __fastcall TItemNomFormUnit::ItemNomEditChange(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        DM->ServiceTBL->Locate("NAME", ItemNomEdit->Text, Opts);
}
//---------------------------------------------------------------------------
void __fastcall TItemNomFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(ItemNomButtonSelect->Visible == true)
                ItemNomButtonSelect->Visible = false;
}
//---------------------------------------------------------------------------
void __fastcall TItemNomFormUnit::ItemNomButtonSelectClick(TObject *Sender)
{
        DM->ItemTBL->Append();
        DM->ItemTBL->FieldByName("SERVICE_ID")->AsInteger=
        DM->ServiceTBL->FieldByName("ID")->AsInteger;
        DM->ItemTBL->FieldByName("ITEM_NOMENCLATURE_ID")->AsInteger=
        DM->ItemNomTBL->FieldByName("ID")->AsInteger;
        DM->ItemTBL->FieldByName("PRICE")->AsInteger= 0;
        DM->ItemTBL->FieldByName("QUANTITY")->AsInteger= 0;
        DM->ItemTBL->Post();
        ItemNomFormUnit->Close();
}
//---------------------------------------------------------------------------
void __fastcall TItemNomFormUnit::ItemNomGridExit(TObject *Sender)
{
        if(DM->ItemNomTBL->State==dsInsert || DM->ItemNomTBL->State==dsEdit)
               DM->ItemNomTBL->Post();
}
//---------------------------------------------------------------------------
