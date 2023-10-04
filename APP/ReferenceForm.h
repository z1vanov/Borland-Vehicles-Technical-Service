//---------------------------------------------------------------------------

#ifndef ReferenceFormH
#define ReferenceFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TReferenceFromUnit : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *ReferenceGrid;
        TPanel *Panel1;
        TDateTimePicker *AcceptanceToDateTimePicker;
        TDateTimePicker *AcceptanceFromDateTimePicker;
        TDateTimePicker *CompletionFromDateTimePicker;
        TDateTimePicker *CompletionToDateTimePicker;
        TEdit *BrandEdit;
        TEdit *RegNumEdit;
        TEdit *RShopEdit;
        TLabel *AcceptanceDateToLabel;
        TLabel *AcceptanceDateFromLabel;
        TLabel *CompltionDateFromLabel;
        TLabel *CompletionDateToLabel;
        TLabel *BrandLabel;
        TLabel *RShopLabel;
        TLabel *RegNumLabel;
        TLabel *MessageLabel1;
        TLabel *MessageLabel2;
        TLabel *MessageLabel3;
        TLabel *MessageLabel4;
        TButton *ShowButton;
        TButton *ExportButton;
        TMemo *ExportMemo;
        TSaveDialog *SaveDialog;
        TRadioGroup *RadioGroup;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall ShowButtonClick(TObject *Sender);
        void __fastcall ExportButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TReferenceFromUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TReferenceFromUnit *ReferenceFromUnit;
//---------------------------------------------------------------------------
#endif
