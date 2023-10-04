//---------------------------------------------------------------------------

#ifndef EngineFormH
#define EngineFormH
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
class TEngineFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *EngineDBNavigator;
        TDBGrid *EngineGrid;
        TPanel *EnginePanel;
        TButton *EngineButton;
        void __fastcall EngineGridExit(TObject *Sender);
        void __fastcall EngineButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TEngineFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEngineFormUnit *EngineFormUnit;
//---------------------------------------------------------------------------
#endif
