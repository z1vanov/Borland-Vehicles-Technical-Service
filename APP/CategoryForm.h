//---------------------------------------------------------------------------

#ifndef CategoryFormH
#define CategoryFormH
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
class TCategoryFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBNavigator *CategoriesDBNavigator;
        TDBGrid *CategoriesGrid;
        TPanel *CategoriesPanel;
        TButton *CategoriesButton;
        void __fastcall CategoriesButtonClick(TObject *Sender);
        void __fastcall CategoriesGridExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TCategoryFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TCategoryFormUnit *CategoryFormUnit;
//---------------------------------------------------------------------------
#endif
