//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditPartForm.h"
#include "DataModuleUnit.h"
#include "EmployeeForm.h"
#include "ServiceForm.h"
#include "RepairForm.h"
#include "ItemForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRepairEditFormUnit *RepairEditFormUnit;
//---------------------------------------------------------------------------
__fastcall TRepairEditFormUnit::TRepairEditFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TRepairEditFormUnit::REFUSubmitButtonClick(TObject *Sender)
{
        if(
           REFUAccEdit->Text.IsEmpty() ||
           REFUFirstNameEdit->Text.IsEmpty() ||
           REFUShopNameEdit->Text.IsEmpty()
           )
                ShowMessage("Моля попълнете всички полета");
        else{
                DM->RepairTBL->Edit();

                DM->RepairTBL->FieldByName("ACCPETANCE_DATE")->AsDateTime =
                REFUAccDateTimePicker->DateTime;
                DM->RepairTBL->FieldByName("COMPLETION_DATE")->AsDateTime =
                REFUComplDateTimePicker->DateTime;
                DM->RepairTBL->FieldByName("ACCEPTED_THE_VEHICLE")->AsString =
                REFUAccEdit->Text;
                DM->RepairTBL->FieldByName("NOTE")->AsString =
                RepairEditFormUnit->REFUNoteMemo->Text;

                DM->RepairTBL->FieldByName("Employee_ID")->AsInteger=
                DM->EmployeeTBL->FieldByName("ID")->AsInteger;

                DM->RepairTBL->FieldByName("Repair_Shop_ID")->AsInteger=
                DM->RShopTBL->FieldByName("ID")->AsInteger;

                DM->RepairTBL->Post();
                RepairEditFormUnit->Close();
        }
}
//---------------------------------------------------------------------------

void __fastcall TRepairEditFormUnit::REFUSelectEmployeeButtonClick(
      TObject *Sender)
{
        EmployeeFormUnit->EmployeeButtonSelect->Visible = true;
        EmployeeFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TRepairEditFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        if(DM->RepairTBL->State == dsEdit || DM->RepairTBL->State == dsInsert)
                DM->RepairTBL->Cancel();
        if(
           REFUAccEdit->Text.IsEmpty() ||
           REFUFirstNameEdit->Text.IsEmpty() ||
           REFUShopNameEdit->Text.IsEmpty()
           )
                DM->RepairTBL->Delete();

        REFUFirstNameEdit->Text = "";
        REFUFamNameEdit->Text = "";
        REFUPhNumEdit->Text = "";
        REFUSrPhNumEdit->Text = "";
        REFUEmailEdit->Text = "";
        REFUPossitionEdit->Text = "";
        REFUShopNameEdit->Text = "";
        REFUShopAddressEdit->Text = "";
        REFUAccEdit->Text = "";
        REFUNoteMemo->Text = "";
        REFUAccDateTimePicker->DateTime = Now();
        REFUComplDateTimePicker->DateTime = Now();
}
//---------------------------------------------------------------------------


void __fastcall TRepairEditFormUnit::REFUSelectServiceClick(
      TObject *Sender)
{
        ServiceFormUnit->ServiceButtonSelect->Visible = true;
        ServiceFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TRepairEditFormUnit::REFUSelectShopButtonClick(
      TObject *Sender)
{
        RepairShopFormUnit->RShopButtonSelect->Visible = true;
        RepairShopFormUnit->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TRepairEditFormUnit::REFUSelectItemNomClick(TObject *Sender)
{
        ItemNomFormUnit->ItemNomButtonSelect->Visible = true;
        ItemNomFormUnit->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TRepairEditFormUnit::REFUCloseButtonClick(TObject *Sender)
{
        RepairEditFormUnit->Close();
}
//---------------------------------------------------------------------------


