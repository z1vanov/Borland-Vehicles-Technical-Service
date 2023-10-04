//---------------------------------------------------------------------------

#ifndef TypeFormH
#define TypeFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TTypeFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *TypeDBNavigator;
        TDBGrid *TypeGrid;
        TPanel *TypePanel;
        TButton *TypeButton;
        void __fastcall TypeButtonClick(TObject *Sender);
        void __fastcall TypeGridExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TTypeFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTypeFormUnit *TypeFormUnit;
//---------------------------------------------------------------------------
#endif
