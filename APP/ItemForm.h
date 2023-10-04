//---------------------------------------------------------------------------

#ifndef ItemFormH
#define ItemFormH
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
class TItemNomFormUnit : public TForm
{
__published:	// IDE-managed Components
        TPanel *ItemNomPanel;
        TLabel *ServiceLabelSort;
        TLabel *ItemNomLabelSearch;
        TEdit *ItemNomEdit;
        TComboBox *ItemNomSortCB;
        TButton *ItemNomButtonSelect;
        TDBGrid *ItemNomGrid;
        TDBNavigator *ItemNomDBNavigator;
        void __fastcall ItemNomSortCBSelect(TObject *Sender);
        void __fastcall ItemNomEditChange(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall ItemNomButtonSelectClick(TObject *Sender);
        void __fastcall ItemNomGridExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TItemNomFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TItemNomFormUnit *ItemNomFormUnit;
//---------------------------------------------------------------------------
#endif
