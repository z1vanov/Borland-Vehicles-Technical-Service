//---------------------------------------------------------------------------

#ifndef ChartFormH
#define ChartFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Chart.hpp>
#include <DbChart.hpp>
#include <ExtCtrls.hpp>
#include <QRTEE.hpp>
#include <QuickRpt.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
//---------------------------------------------------------------------------
class TChartFormUnit : public TForm
{
__published:	// IDE-managed Components
        TQRDBChart *QRDBChart1;
        TQRChart *QRChart;
        TPieSeries *Series1;
        TPieSeries *Series2;
        TPieSeries *Series3;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TChartFormUnit(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TChartFormUnit *ChartFormUnit;
//---------------------------------------------------------------------------
#endif
