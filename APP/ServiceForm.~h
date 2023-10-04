//---------------------------------------------------------------------------

#ifndef ServiceFormH
#define ServiceFormH
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
class TServiceFormUnit : public TForm
{
__published:	// IDE-managed Components
        TPanel *ServicePanel;
        TLabel *ServiceLabelSort;
        TLabel *ServiceLabelSearch;
        TEdit *ServiceEdit;
        TComboBox *ServiceSortCB;
        TDBNavigator *ServiceDBNavigator;
        TDBGrid *ServiceGrid;
        TButton *ServiceButtonSelect;
        void __fastcall ServiceSortCBSelect(TObject *Sender);
        void __fastcall ServiceGridExit(TObject *Sender);
        void __fastcall ServiceEditChange(TObject *Sender);
        void __fastcall ServiceButtonSelectClick(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TServiceFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TServiceFormUnit *ServiceFormUnit;
//---------------------------------------------------------------------------
#endif
