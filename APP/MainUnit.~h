//---------------------------------------------------------------------------

#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <Buttons.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TMainFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *MainVehicleGrid;
        TDBGrid *MainRepairGrid;
        TPanel *MainVehiclePanel;
        TLabel *MainLabelSort;
        TLabel *MainLabelSearch;
        TEdit *MainEdit;
        TComboBox *MainSortCB;
        TComboBox *MainSearchCB;
        TButton *MainAddVehicleButton;
        TButton *MainEditVehicleButton;
        TButton *MainDeleteVehicle;
        TPanel *MainRepairPanel;
        TButton *MainRepairAddButton;
        TButton *MainEditRepirButton;
        TButton *MainDeleteRepair;
        TStatusBar *MainStatusBar;
        TMemo *Memo;
        TSaveDialog *SaveDialog;
        TOpenDialog *OpenDialog;
        void __fastcall MainSortCBSelect(TObject *Sender);
        void __fastcall MainEditChange(TObject *Sender);
        void __fastcall MainAddVehicleButtonClick(TObject *Sender);
        void __fastcall MainRepairAddButtonClick(TObject *Sender);
        void __fastcall MainEditVehicleButtonClick(TObject *Sender);
        void __fastcall MainEditRepirButtonClick(TObject *Sender);
        void __fastcall MainDeleteRepairClick(TObject *Sender);
        void __fastcall MainDeleteVehicleClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMainFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainFormUnit *MainFormUnit;
//---------------------------------------------------------------------------
#endif
