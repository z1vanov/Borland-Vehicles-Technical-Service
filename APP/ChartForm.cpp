//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ChartForm.h"
#include "DataModuleUnit.h"
#include "AnalysisForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TChartFormUnit *ChartFormUnit;
//---------------------------------------------------------------------------
__fastcall TChartFormUnit::TChartFormUnit(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TChartFormUnit::FormClose(TObject *Sender,
      TCloseAction &Action)
{
        AnalysisFormUnit->Show();        
}
//---------------------------------------------------------------------------

