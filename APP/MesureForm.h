//---------------------------------------------------------------------------

#ifndef MesureFormH
#define MesureFormH
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
class TMesureFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *MesureDBNavigator;
        TDBGrid *MesureGrid;
        TPanel *MesurePanel;
        TButton *MesureButton;
        void __fastcall MesureGridExit(TObject *Sender);
        void __fastcall MesureButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMesureFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMesureFormUnit *MesureFormUnit;
//---------------------------------------------------------------------------
#endif
