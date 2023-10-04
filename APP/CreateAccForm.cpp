//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "CreateAccForm.h"
#include "EmployeeForm.h"
#include "DataModuleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TCreateAccFormUnit *CreateAccFormUnit;
//---------------------------------------------------------------------------
__fastcall TCreateAccFormUnit::TCreateAccFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TCreateAccFormUnit::SelectEmployeeButtonClick(
      TObject *Sender)
{
        EmployeeFormUnit->EmpolyeeButtonSelectAcc->Visible = true;
        EmployeeFormUnit->ShowModal();        
}
//---------------------------------------------------------------------------
void __fastcall TCreateAccFormUnit::Button1Click(TObject *Sender)
{
        AnsiString key = "j8bKDwVgVgMGXkFRGkJ3KKk8kNHu7S";
        AnsiString user;
        AnsiString pass;
        user = UsernameEdit->Text.SetLength(30).c_str();
        pass = PasswordEdit->Text.SetLength(30).c_str();
        int i;
        for(i=1;i<user.Length() + 1;i++)
                user[i] = user[i] + key[i];
        for(i=1;i<pass.Length() + 1;i++)
                pass[i] = pass[i] + key[i];

        DM->EmployeeTBL->Edit();
        DM->EmployeeTBL->FieldByName("USERNAME")->AsString = user;
        DM->EmployeeTBL->FieldByName("USER_PASSWORD")->AsString = pass;
        DM->EmployeeTBL->Post();

        CreateAccFormUnit->Close();
}
//---------------------------------------------------------------------------
void __fastcall TCreateAccFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        UsernameEdit->Text="";
        PasswordEdit->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TCreateAccFormUnit::Button2Click(TObject *Sender)
{
        CreateAccFormUnit->Close();        
}
//---------------------------------------------------------------------------
