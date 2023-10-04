//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "LogInForm.h"
#include "DataModuleUnit.h"
#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TLogInFormUnit *LogInFormUnit;
//---------------------------------------------------------------------------
__fastcall TLogInFormUnit::TLogInFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TLogInFormUnit::LogInButtonClick(TObject *Sender)
{
        flag = true;

        AnsiString key = "j8bKDwVgVgMGXkFRGkJ3KKk8kNHu7S";
        AnsiString user;
        AnsiString pass;
        AnsiString statusbar;
        user = UsernameEdit->Text.SetLength(30).c_str();
        statusbar = UsernameEdit->Text.SetLength(30).c_str();
        pass = PasswordEdit->Text.SetLength(30).c_str();
        int i;
        for(i=1;i<user.Length() + 1;i++)
                user[i] = user[i] + key[i];
        for(i=1;i<pass.Length() + 1;i++)
                pass[i] = pass[i] + key[i];

        DM->LogInQuery->Close();
        DM->LogInQuery->ParamByName("PUSER")->AsString = user;
        DM->LogInQuery->ParamByName("PPASS")->AsString = pass;
        DM->LogInQuery->Open();
        if(DM->LogInQuery->FieldByName("ID")->IsNull)
        {
                MessageLabel->Caption = "������ ������������\n��� ��� ������!";
                return;
        }
        MainFormUnit->MainStatusBar->Panels->Items[0]->Text = "Service App running";
        MainFormUnit->MainStatusBar->Panels->Items[1]->Text = "Online: " + statusbar;
        MainFormUnit->MainStatusBar->Panels->Items[2]->Text =
           DM->LogInQuery->FieldByName("FIRST_NAME")->AsString + " " +
           DM->LogInQuery->FieldByName("FAM_NAME")->AsString + " ";
        Close();
        UsernameEdit->Text="";
        PasswordEdit->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TLogInFormUnit::CanselButtonClick(TObject *Sender)
{
        Application->Terminate();
}
//---------------------------------------------------------------------------
void __fastcall TLogInFormUnit::PasswordEditClick(TObject *Sender)
{
        MessageLabel->Caption = "";
}
//---------------------------------------------------------------------------

void __fastcall TLogInFormUnit::FormShow(TObject *Sender)
{
        bool flag = false;        
}
//---------------------------------------------------------------------------

void __fastcall TLogInFormUnit::FormCloseQuery(TObject *Sender,
      bool &CanClose)
{
        if(!flag)
                CanClose = false;
}
//---------------------------------------------------------------------------

