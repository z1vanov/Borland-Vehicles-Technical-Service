//---------------------------------------------------------------------------

#ifndef EmployeeFormH
#define EmployeeFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <DBCtrls.hpp>
//---------------------------------------------------------------------------
class TEmployeeFormUnit : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *EmployeeGrid;
        TPanel *EmployeePanel;
        TEdit *EmployeeEdit;
        TComboBox *EmployeeSortCB;
        TLabel *EmployeeLabelSort;
        TLabel *EmployeeLabelSearch;
        TComboBox *EmployeeSearchCB;
        TDBNavigator *EmployeeDBNavigator;
        TButton *EmployeeButtonSelect;
        TButton *EmpolyeeButtonSelectAcc;
        void __fastcall EmployeeSortCBSelect(TObject *Sender);
        void __fastcall EmployeeGridExit(TObject *Sender);
        void __fastcall EmployeeEditChange(TObject *Sender);
        void __fastcall EmployeeButtonSelectClick(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall EmpolyeeButtonSelectAccClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TEmployeeFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEmployeeFormUnit *EmployeeFormUnit;
//---------------------------------------------------------------------------
#endif
