//---------------------------------------------------------------------------

#ifndef PartFormH
#define PartFormH
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
class TPartFormUnit : public TForm
{
__published:	// IDE-managed Components
        TPanel *PartPanel;
        TLabel *PartLabelSort;
        TLabel *PartSearch;
        TEdit *PartEdit;
        TComboBox *PartSortCB;
        TDBNavigator *PartDBNavigator;
        TDBGrid *DBGrid1;
        void __fastcall PartGridExit(TObject *Sender);
        void __fastcall PartSortCBSelect(TObject *Sender);
        void __fastcall PartEditChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TPartFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TPartFormUnit *PartFormUnit;
//---------------------------------------------------------------------------
#endif
