//---------------------------------------------------------------------------

#ifndef LogInFormH
#define LogInFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TLogInFormUnit : public TForm
{
__published:	// IDE-managed Components
        TEdit *UsernameEdit;
        TLabel *UsernameLabel;
        TLabel *PasswordLabel;
        TEdit *PasswordEdit;
        TLabel *MessageLabel;
        TButton *LogInButton;
        TButton *CanselButton;
        void __fastcall LogInButtonClick(TObject *Sender);
        void __fastcall CanselButtonClick(TObject *Sender);
        void __fastcall PasswordEditClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);
private:
        bool flag;	// User declarations
public:		// User declarations
        __fastcall TLogInFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TLogInFormUnit *LogInFormUnit;
//---------------------------------------------------------------------------
#endif
