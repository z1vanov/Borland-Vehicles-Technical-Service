//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DataModuleUnit.h"
#include "EmployeeForm.h"
#include "OwnerForm.h"
#include "PartForm.h"
#include "ServiceForm.h"
#include "BrandForm.h"
#include "CategoryForm.h"
#include "TypeForm.h"
#include "EngineForm.h"
#include "ManufacturerForm.h"
#include "MesureForm.h"
#include "PossitionForm.h"
#include "VehicleForm.h"
#include "RepairForm.h"
#include "LogInForm.h"
#include "CreateAccForm.h"
#include "MainUnit.h"
#include "AnalysisForm.h"
#include "ReferenceForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDM *DM;
//---------------------------------------------------------------------------
__fastcall TDM::TDM(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TDM::EmployeesTBL1Click(TObject *Sender)
{
        EmployeeFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::OwnersTBL1Click(TObject *Sender)
{
        OwnerFormUnit->ShowModal();
}
//---------------------------------------------------------------------------



void __fastcall TDM::PartsTBL1Click(TObject *Sender)
{
        PartFormUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TDM::ServicesTBL1Click(TObject *Sender)
{
         ServiceFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::BrandTBL1Click(TObject *Sender)
{
        BrandFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::N1Click(TObject *Sender)
{
        CategoryFormUnit->ShowModal();        
}
//---------------------------------------------------------------------------

void __fastcall TDM::N6Click(TObject *Sender)
{
        TypeFormUnit->ShowModal();        
}
//---------------------------------------------------------------------------

void __fastcall TDM::N2Click(TObject *Sender)
{
        EngineFormUnit->ShowModal();        
}
//---------------------------------------------------------------------------

void __fastcall TDM::N3Click(TObject *Sender)
{
        ManufacturerFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::N4Click(TObject *Sender)
{
        MesureFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::N5Click(TObject *Sender)
{
        PossitionFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::VehicleTBLBeforePost(TDataSet *DataSet)
{
        if(VehicleTBL->State == dsInsert)
        {
                VehicleSP->Prepare();
                VehicleSP->ExecProc();
                VehicleTBL->FieldByName("ID")->AsInteger =
                        VehicleSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::N7Click(TObject *Sender)
{
      VehicleNomFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TDM::RepairTBLBeforePost(TDataSet *DataSet)
{
        if(RepairTBL->State == dsInsert)
        {
                RepairSP->Prepare();
                RepairSP->ExecProc();
                RepairTBL->FieldByName("ID")->AsInteger =
                        RepairSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::N8Click(TObject *Sender)
{
        RepairShopFormUnit->ShowModal();        
}
//---------------------------------------------------------------------------

void __fastcall TDM::RepairServiceTBLBeforePost(TDataSet *DataSet)
{
        if(RepairServiceTBL->State == dsInsert)
        {
                RepairServiceSP->Prepare();
                RepairServiceSP->ExecProc();
                RepairServiceTBL->FieldByName("ID")->AsInteger =
                        RepairServiceSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::ItemTBLBeforePost(TDataSet *DataSet)
{
        if(ItemTBL->State == dsInsert)
        {
                ItemSP->Prepare();
                ItemSP->ExecProc();
                ItemTBL->FieldByName("ID")->AsInteger =
                        ItemSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::About1Click(TObject *Sender)
{
        ShowMessage("Диплома работа 2021");
}
//---------------------------------------------------------------------------

void __fastcall TDM::BrandTBLBeforePost(TDataSet *DataSet)
{
        if(BrandTBL->State == dsInsert)
        {
                BrandSP->Prepare();
                BrandSP->ExecProc();
                BrandTBL->FieldByName("ID")->AsInteger =
                        BrandSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::VehicleNomTBLBeforePost(TDataSet *DataSet)
{
        if(VehicleNomTBL->State == dsInsert)
        {
                VehicleNomSP->Prepare();
                VehicleNomSP->ExecProc();
                VehicleNomTBL->FieldByName("ID")->AsInteger =
                        VehicleNomSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::CategoryTBLBeforePost(TDataSet *DataSet)
{
        if(CategoryTBL->State == dsInsert)
        {
                CategorySP->Prepare();
                CategorySP->ExecProc();
                CategoryTBL->FieldByName("ID")->AsInteger =
                        CategorySP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::VehicleTypeTBLBeforePost(TDataSet *DataSet)
{
        if(VehicleTypeTBL->State == dsInsert)
        {
                VehicleTypeSP->Prepare();
                VehicleTypeSP->ExecProc();
                VehicleTypeTBL->FieldByName("ID")->AsInteger =
                        VehicleTypeSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::EngineTypeTBLBeforePost(TDataSet *DataSet)
{
        if(EngineTypeTBL->State == dsInsert)
        {
                EngineTypeSP->Prepare();
                EngineTypeSP->ExecProc();
                EngineTypeTBL->FieldByName("ID")->AsInteger =
                        EngineTypeSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::OwnerTBLBeforePost(TDataSet *DataSet)
{
        if(OwnerTBL->State == dsInsert)
        {
                OwnerSP->Prepare();
                OwnerSP->ExecProc();
                OwnerTBL->FieldByName("ID")->AsInteger =
                        OwnerSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::AllServiceTBLBeforePost(TDataSet *DataSet)
{
        if(AllServiceTBL->State == dsInsert)
        {
                ServiceSP->Prepare();
                ServiceSP->ExecProc();
                AllServiceTBL->FieldByName("ID")->AsInteger =
                        ServiceSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::MesureTBLBeforePost(TDataSet *DataSet)
{
        if(MesureTBL->State == dsInsert)
        {
                MesureSP->Prepare();
                MesureSP->ExecProc();
                MesureTBL->FieldByName("ID")->AsInteger =
                        MesureSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::ManufacturerTBLBeforePost(TDataSet *DataSet)
{
        if(ManufacturerTBL->State == dsInsert)
        {
                ManufacturerSP->Prepare();
                ManufacturerSP->ExecProc();
                ManufacturerTBL->FieldByName("ID")->AsInteger =
                       ManufacturerSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::ItemNomTBLBeforePost(TDataSet *DataSet)
{
        if(ItemNomTBL->State == dsInsert)
        {
                ItemNomSP->Prepare();
                ItemNomSP->ExecProc();
                ItemNomTBL->FieldByName("ID")->AsInteger =
                       ItemNomSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::PossitionTBLBeforePost(TDataSet *DataSet)
{
        if(PossitionTBL->State == dsInsert)
        {
                PossitionSP->Prepare();
                PossitionSP->ExecProc();
                PossitionTBL->FieldByName("ID")->AsInteger =
                       PossitionSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::EmployeeTBLBeforePost(TDataSet *DataSet)
{
        if(EmployeeTBL->State == dsInsert)
        {
                EmployeeSP->Prepare();
                EmployeeSP->ExecProc();
                EmployeeTBL->FieldByName("ID")->AsInteger =
                       EmployeeSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::RShopTBLBeforePost(TDataSet *DataSet)
{
        if(RShopTBL->State == dsInsert)
        {
                RShopSP->Prepare();
                RShopSP->ExecProc();
                RShopTBL->FieldByName("ID")->AsInteger =
                       RShopSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TDM::ItemTBLAfterPost(TDataSet *DataSet)
{
        DM->SumQuery->Close();
        DM->SumQuery->ParamByName("PSERVICEID")->AsInteger =
           DM->RepairServiceTBL->FieldByName("SERVICE_ID")->AsInteger;
        DM->SumQuery->Open();
        DM->RepairServiceTBL->Edit();
        DM->RepairServiceTBL->FieldByName("TOTAL_PRICE")->AsInteger =
           DM->SumQuery->FieldByName("SUMM")->AsInteger;
        DM->RepairServiceTBL->Post();
}
//---------------------------------------------------------------------------


void __fastcall TDM::N10Click(TObject *Sender)
{
//        if(MainFormUnit->MainStatusBar->Panels->Items[1]->Text == "Online: 0000")
                CreateAccFormUnit->ShowModal();
//        else
//                ShowMessage("Нямате правата да създавате акаунти!");
}
//---------------------------------------------------------------------------

void __fastcall TDM::Export1Click(TObject *Sender)
{
        LogInFormUnit->ShowModal();
        MainFormUnit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TDM::N9Click(TObject *Sender)
{
        AnalysisFormUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TDM::N11Click(TObject *Sender)
{
        ReferenceFromUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TDM::N13Click(TObject *Sender)
{
        AnsiString text,s[13];
        int i,j,lines,column;
        if(MainFormUnit->OpenDialog->Execute())
        {
                MainFormUnit->Memo->Lines->LoadFromFile(MainFormUnit->OpenDialog->FileName);
                lines = MainFormUnit->Memo->Lines->Count;
                for(i=1;i<lines;i++)
                {
                     text = MainFormUnit->Memo->Lines->Strings[i];
                     column = 1;
                     for(j=1;j<=text.Length();j++)
                     {
                        if(text[j]==';')
                        {
                            s[column]=text.SubString(1,j-1);
                            text = text.Delete(1,j);
                            j=1;
                            column++;
                        }
                     }
                DM->VehicleTBL->Append();
                DM->VehicleTBL->FieldByName("REGISTRATION_NUMBER")->AsString = s[1];
                DM->VehicleTBL->FieldByName("REGISTRATION_DATE")->AsDateTime = StrToDateTime(s[2].Delete(10,3));
                DM->VehicleTBL->FieldByName("VEHICLE_BRAND_NAME")->AsString = s[3];
                DM->VehicleTBL->FieldByName("VEHICLE_MODEL_NAME")->AsString = s[4];
                DM->VehicleTBL->FieldByName("PRODUCTION_YEAR")->AsDateTime = StrToDateTime(s[5].Delete(10,3));
                DM->VehicleTBL->FieldByName("VEHICLE_CATEGORY_NAME")->AsString = s[6];
                DM->VehicleTBL->FieldByName("VEHICLE_TYPE_NAME")->AsString = s[7];
                DM->VehicleTBL->FieldByName("VEHICLE_ENGINE_NAME")->AsString = s[8];
                DM->VehicleTBL->FieldByName("CHASSIS_NUMBER")->AsString = s[9];
                DM->VehicleTBL->FieldByName("FRAME_NUMBER")->AsString = s[10];
                DM->VehicleTBL->FieldByName("OWNER_NAME")->AsString = s[11];
                DM->VehicleTBL->FieldByName("OWNER_id")->AsInteger = StrToInt(s[12]);
                DM->VehicleTBL->FieldByName("VEHICLE_NOMENCLATURE_ID")->AsInteger = StrToInt(s[13]);
                DM->VehicleTBL->Post();
                }
        }
        else
                ShowMessage("Има грешка при избирането на файл!");
}
//---------------------------------------------------------------------------

void __fastcall TDM::N14Click(TObject *Sender)
{
        DM->VehicleTBL->First();
        while(!DM->VehicleTBL->Eof)
        {
               MainFormUnit->Memo->Lines->Add(
                   DM->VehicleTBL->FieldByName("REGISTRATION_NUMBER")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("REGISTRATION_DATE")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_BRAND_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_MODEL_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("PRODUCTION_YEAR")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_CATEGORY_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_TYPE_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_ENGINE_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("CHASSIS_NUMBER")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("FRAME_NUMBER")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("OWNER_NAME")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("OWNER_ID")->AsString + ";" +
                   DM->VehicleTBL->FieldByName("VEHICLE_NOMENCLATURE_ID")->AsString);
                DM->VehicleTBL->Next();
        }
        if(MainFormUnit->SaveDialog->Execute())
                MainFormUnit->Memo->Lines->SaveToFile(MainFormUnit->SaveDialog->FileName + ".CSV");
        else
                ShowMessage("Има грешка при избирането на файл!");
}
//---------------------------------------------------------------------------

