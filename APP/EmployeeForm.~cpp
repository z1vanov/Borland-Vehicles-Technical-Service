 //---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EmployeeForm.h"
#include "DataModuleUnit.h"
#include "EditPartForm.h"
#include "CreateAccForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEmployeeFormUnit *EmployeeFormUnit;
//---------------------------------------------------------------------------
__fastcall TEmployeeFormUnit::TEmployeeFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TEmployeeFormUnit::EmployeeSortCBSelect(TObject *Sender)
{
        switch(EmployeeSortCB->ItemIndex)
        {
                case 0: DM->EmployeeTBL->IndexName ="RDB$PRIMARY16";break;
                case 1: DM->EmployeeTBL->IndexName ="EMPLOYEETBLFNNDX";break;
                case 2: DM->EmployeeTBL->IndexName ="EMPLOYEETBLFAMNNDX";break;
                case 3: DM->EmployeeTBL->IndexName ="EMPLOYEETBLPNNDX";break;
                case 4: DM->EmployeeTBL->IndexName ="EMPLOYEETBLSPNNDX";break;
                case 5: DM->EmployeeTBL->IndexName ="EMPLOYEETBLEMNDX";break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TEmployeeFormUnit::EmployeeGridExit(TObject *Sender)
{
        if(DM->EmployeeTBL->State==dsInsert || DM->EmployeeTBL->State==dsEdit)
               DM->EmployeeTBL->Post();
}
//---------------------------------------------------------------------------


void __fastcall TEmployeeFormUnit::EmployeeEditChange(TObject *Sender)
{
        AnsiString FieldName ="FIRST_NAME";
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;
        Opts << loCaseInsensitive;
        switch(EmployeeSearchCB->ItemIndex)
        {
                case 0: FieldName ="FIRST_NAME";break;
                case 1: FieldName ="FAM_NAME";break;
                case 2: FieldName ="PHONE_NUMBER";break;
                case 3: FieldName ="SERVICE_PHONE_NUMBER";break;
                case 4: FieldName ="E_MAIL";break;
        }
        DM->EmployeeTBL->Locate(FieldName, EmployeeEdit->Text, Opts);
}
//---------------------------------------------------------------------------



void __fastcall TEmployeeFormUnit::EmployeeButtonSelectClick(
      TObject *Sender)
{
        RepairEditFormUnit->REFUFirstNameEdit->Text =
        DM->EmployeeTBL->FieldByName("FIRST_NAME")->AsString;
        RepairEditFormUnit->REFUFamNameEdit->Text =
        DM->EmployeeTBL->FieldByName("FAM_NAME")->AsString;
        RepairEditFormUnit->REFUPhNumEdit->Text =
        DM->EmployeeTBL->FieldByName("PHONE_NUMBER")->AsString;
        RepairEditFormUnit->REFUSrPhNumEdit->Text =
        DM->EmployeeTBL->FieldByName("SERVICE_PHONE_NUMBER")->AsString;
        RepairEditFormUnit->REFUEmailEdit->Text =
        DM->EmployeeTBL->FieldByName("E_MAIL")->AsString;
        RepairEditFormUnit->REFUPossitionEdit->Text =
        DM->EmployeeTBL->FieldByName("POSSITION")->AsString;

        EmployeeFormUnit->Close();
}
//---------------------------------------------------------------------------

void __fastcall TEmployeeFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(EmployeeButtonSelect->Visible == true)
                EmployeeButtonSelect->Visible = false;
        if(EmpolyeeButtonSelectAcc->Visible == true)
                EmpolyeeButtonSelectAcc->Visible = false;
}
//---------------------------------------------------------------------------

void __fastcall TEmployeeFormUnit::EmpolyeeButtonSelectAccClick(
      TObject *Sender)
{
        CreateAccFormUnit->EmployeeNameEdit->Text =
        DM->EmployeeTBL->FieldByName("FIRST_NAME")->AsString;
        CreateAccFormUnit->EmployeeFamEdit->Text =
        DM->EmployeeTBL->FieldByName("FAM_NAME")->AsString;

        EmployeeFormUnit->Close();
}
//---------------------------------------------------------------------------

