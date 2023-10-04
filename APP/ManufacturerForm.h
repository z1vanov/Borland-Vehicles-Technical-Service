//---------------------------------------------------------------------------

#ifndef ManufacturerFormH
#define ManufacturerFormH
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
class TManufacturerFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *ManufacturerDBNavigator;
        TDBGrid *ManufacturerGrid;
        TPanel *ManufacturerPanel;
        TButton *ManufacturerButton;
        void __fastcall ManufacturerGridExit(TObject *Sender);
        void __fastcall ManufacturerButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TManufacturerFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TManufacturerFormUnit *ManufacturerFormUnit;
//---------------------------------------------------------------------------
#endif
