//---------------------------------------------------------------------------

#ifndef PossitionFormH
#define PossitionFormH
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
class TPossitionFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *PossitionDBNavigator;
        TDBGrid *PossitionGrid;
        TPanel *PossitionPanel;
        TButton *PossitionButton;
        void __fastcall PossitionGridExit(TObject *Sender);
        void __fastcall PossitionButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TPossitionFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TPossitionFormUnit *PossitionFormUnit;
//---------------------------------------------------------------------------
#endif
