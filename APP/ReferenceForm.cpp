//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ReferenceForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TReferenceFromUnit *ReferenceFromUnit;
//---------------------------------------------------------------------------
__fastcall TReferenceFromUnit::TReferenceFromUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TReferenceFromUnit::FormShow(TObject *Sender)
{
        if(!(ReferenceGrid->DataSource == DM->ReferenceRepairDS))
                ReferenceGrid->DataSource == DM->ReferenceRepairDS;
        DM->ReferenceRepairQuery->Close();
        DM->ReferenceRepairQuery->ParamByName("PBRANDNAME")->AsString = '%';
        DM->ReferenceRepairQuery->ParamByName("PREGNUM")->AsString = '%';
        DM->ReferenceRepairQuery->ParamByName("PRSHOPNAME")->AsString = '%';
        DM->ReferenceRepairQuery->ParamByName("PADFROM")->AsDateTime = Now();
        DM->ReferenceRepairQuery->ParamByName("PADTO")->AsDateTime = Now();
        DM->ReferenceRepairQuery->ParamByName("PCDFROM")->AsDateTime = Now();
        DM->ReferenceRepairQuery->ParamByName("PCDTO")->AsDateTime = Now();
        DM->ReferenceRepairQuery->Open();
        DM->ReferenceItemQuery->Close();
        DM->ReferenceItemQuery->ParamByName("PBRANDNAME")->AsString = '%';
        DM->ReferenceItemQuery->ParamByName("PREGNUM")->AsString = '%';
        DM->ReferenceItemQuery->ParamByName("PRSHOPNAME")->AsString = '%';
        DM->ReferenceItemQuery->ParamByName("PADFROM")->AsDateTime = Now();
        DM->ReferenceItemQuery->ParamByName("PADTO")->AsDateTime = Now();
        DM->ReferenceItemQuery->ParamByName("PCDFROM")->AsDateTime = Now();
        DM->ReferenceItemQuery->ParamByName("PCDTO")->AsDateTime = Now();
        DM->ReferenceItemQuery->Open();
        BrandEdit->Text="";
        RegNumEdit->Text="";
        RShopEdit->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TReferenceFromUnit::ShowButtonClick(TObject *Sender)
{
        if(RadioGroup->ItemIndex == 0)
        {
                DM->ReferenceRepairQuery->Close();
                if(!BrandEdit->Text.IsEmpty())
                        DM->ReferenceRepairQuery->ParamByName("PBRANDNAME")->AsString =
                           BrandEdit->Text;
                if(!RegNumEdit->Text.IsEmpty())
                        DM->ReferenceRepairQuery->ParamByName("PREGNUM")->AsString =
                           RegNumEdit->Text;
                if(!RShopEdit->Text.IsEmpty())
                        DM->ReferenceRepairQuery->ParamByName("PRSHOPNAME")->AsString =
                           RShopEdit->Text;
                DM->ReferenceRepairQuery->ParamByName("PADFROM")->AsDateTime =
                   AcceptanceFromDateTimePicker->DateTime;
                DM->ReferenceRepairQuery->ParamByName("PADTO")->AsDateTime =
                   AcceptanceToDateTimePicker->DateTime;
                DM->ReferenceRepairQuery->ParamByName("PCDFROM")->AsDateTime =
                   CompletionFromDateTimePicker->DateTime;
                DM->ReferenceRepairQuery->ParamByName("PCDTO")->AsDateTime =
                   CompletionToDateTimePicker->DateTime;
                DM->ReferenceRepairQuery->Open();
                if(!(ReferenceGrid->DataSource == DM->ReferenceRepairDS))
                        ReferenceGrid->DataSource = DM->ReferenceRepairDS;
        }
        else
        {
                DM->ReferenceItemQuery->Close();
                if(!BrandEdit->Text.IsEmpty())
                        DM->ReferenceItemQuery->ParamByName("PBRANDNAME")->AsString =
                           BrandEdit->Text;
                if(!RegNumEdit->Text.IsEmpty())
                        DM->ReferenceItemQuery->ParamByName("PREGNUM")->AsString =
                           RegNumEdit->Text;
                if(!RShopEdit->Text.IsEmpty())
                        DM->ReferenceItemQuery->ParamByName("PRSHOPNAME")->AsString =
                           RShopEdit->Text;
                DM->ReferenceItemQuery->ParamByName("PADFROM")->AsDateTime =
                   AcceptanceFromDateTimePicker->DateTime;
                DM->ReferenceItemQuery->ParamByName("PADTO")->AsDateTime =
                   AcceptanceToDateTimePicker->DateTime;
                DM->ReferenceItemQuery->ParamByName("PCDFROM")->AsDateTime =
                   CompletionFromDateTimePicker->DateTime;
                DM->ReferenceItemQuery->ParamByName("PCDTO")->AsDateTime =
                   CompletionToDateTimePicker->DateTime;
                DM->ReferenceItemQuery->Open();
                if(!(ReferenceGrid->DataSource == DM->ReferenceItemDS))
                        ReferenceGrid->DataSource = DM->ReferenceItemDS;
        }
}
//---------------------------------------------------------------------------




void __fastcall TReferenceFromUnit::ExportButtonClick(TObject *Sender)
{
        if(RadioGroup->ItemIndex == 0){
                DM->ReferenceRepairQuery->First();
                while(!DM->ReferenceRepairQuery->Eof)
                {
                        ExportMemo->Lines->Add(
                           DM->ReferenceRepairQuery->FieldByName("ACCPETANCE_DATE")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("COMPLETION_DATE")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("ACCEPTED_THE_VEHICLE")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("REGISTRATION_NUMBER")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("NAME")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("NAME1")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("NAME2")->AsString + ";" +
                           DM->ReferenceRepairQuery->FieldByName("NOTE")->AsString);
                        DM->ReferenceRepairQuery->Next();
                }
        }
        else{
                DM->ReferenceItemQuery->First();
                while(!DM->ReferenceItemQuery->Eof)
                {
                        ExportMemo->Lines->Add(
                           DM->ReferenceItemQuery->FieldByName("NAME")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("PRICE")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("QUANTITY")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("NAME1")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("NAME2")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("ACCPETANCE_DATE")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("COMPLETION_DATE")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("REGISTRATION_NUMBER")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("NAME3")->AsString + ";" +
                           DM->ReferenceItemQuery->FieldByName("NAME4")->AsString);
                        DM->ReferenceItemQuery->Next();
                }
        }
        if(SaveDialog->Execute())
                ExportMemo->Lines->SaveToFile(SaveDialog->FileName + ".CSV");
        else
                ShowMessage("Има грешка при избирането на файл!");
}
//---------------------------------------------------------------------------

