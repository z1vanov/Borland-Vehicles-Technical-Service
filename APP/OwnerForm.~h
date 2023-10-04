//---------------------------------------------------------------------------

#ifndef OwnerFormH
#define OwnerFormH
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
class TOwnerFormUnit : public TForm
{
__published:	// IDE-managed Components
        TPanel *OwnerPanel;
        TLabel *OwnerLabelSort;
        TLabel *OwnerLabelSearch;
        TEdit *OwnerEdit;
        TComboBox *OwnerSortCB;
        TComboBox *OwnerSearchCB;
        TDBNavigator *OwnerDBNavigator;
        TDBGrid *DBGrid1;
        TButton *OwnerButtonSelect;
        void __fastcall OwnerSortCBSelect(TObject *Sender);
        void __fastcall OwnerEditChange(TObject *Sender);
        void __fastcall DBGrid1Exit(TObject *Sender);
        void __fastcall OwnerButtonSelectClick(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TOwnerFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TOwnerFormUnit *OwnerFormUnit;
//---------------------------------------------------------------------------
#endif
