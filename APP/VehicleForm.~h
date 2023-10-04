//---------------------------------------------------------------------------

#ifndef VehicleFormH
#define VehicleFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <DBCtrls.hpp>
//---------------------------------------------------------------------------
class TVehicleNomFormUnit : public TForm
{
__published:	// IDE-managed Components
        TPanel *VehicleNomPanel;
        TDBGrid *VehicleNomGrid;
        TDBNavigator *VehicleNomDBNavigator;
        TLabel *VehicleNomLabelSort;
        TComboBox *VehicleNomSortCB;
        TLabel *VehicleNomrLabelSearch;
        TComboBox *VehicleNomSearchCB;
        TEdit *VehicleNomEdit;
        TButton *VehicleNomButtonSelect;
        void __fastcall VehicleNomSortCBSelect(TObject *Sender);
        void __fastcall VehicleNomEditChange(TObject *Sender);
        void __fastcall VehicleNomGridExit(TObject *Sender);
        void __fastcall VehicleNomButtonSelectClick(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TVehicleNomFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TVehicleNomFormUnit *VehicleNomFormUnit;
//---------------------------------------------------------------------------
#endif
