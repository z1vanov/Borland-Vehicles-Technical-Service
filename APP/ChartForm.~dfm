object ChartFormUnit: TChartFormUnit
  Left = 415
  Top = 76
  BorderStyle = bsDialog
  Caption = #1043#1088#1072#1092#1080#1082#1072
  ClientHeight = 671
  ClientWidth = 989
  Color = clBtnFace
  Constraints.MaxHeight = 710
  Constraints.MaxWidth = 1005
  Constraints.MinHeight = 710
  Constraints.MinWidth = 1005
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QRChart: TQRChart
    Left = 0
    Top = 0
    Width = 985
    Height = 665
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      1759.47916666667
      0
      0
      2606.14583333333)
    object QRDBChart1: TQRDBChart
      Left = -1
      Top = -1
      Width = 1
      Height = 1
      BackWall.Brush.Color = clWhite
      MarginBottom = 0
      MarginLeft = 0
      MarginRight = 0
      MarginTop = 0
      Title.Font.Charset = RUSSIAN_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -19
      Title.Font.Name = '@Arial Unicode MS'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        #1043#1088#1072#1092#1080#1082#1072)
      Title.Visible = False
      LeftAxis.Axis.Visible = False
      LeftAxis.Grid.Visible = False
      LeftAxis.LabelsFont.Charset = RUSSIAN_CHARSET
      LeftAxis.LabelsFont.Color = clBlack
      LeftAxis.LabelsFont.Height = -16
      LeftAxis.LabelsFont.Name = '@Arial Unicode MS'
      LeftAxis.LabelsFont.Style = [fsBold]
      Legend.Alignment = laTop
      Legend.ColorWidth = 40
      Legend.Font.Charset = RUSSIAN_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -16
      Legend.Font.Name = '@Arial Unicode MS'
      Legend.Font.Style = [fsBold]
      MaxPointsPerPage = 1
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      object Series1: TPieSeries
        Marks.ArrowLength = 8
        Marks.Font.Charset = RUSSIAN_CHARSET
        Marks.Font.Color = clBlack
        Marks.Font.Height = -16
        Marks.Font.Name = '@Arial Unicode MS'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        DataSource = DM.RepairCountQuery
        SeriesColor = clRed
        XLabelsSource = 'NAME'
        Circled = True
        OtherSlice.Text = 'Other'
        PiePen.Visible = False
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1
        PieValues.Order = loAscending
        PieValues.ValueSource = 'CNT'
      end
      object Series2: TPieSeries
        Active = False
        Marks.ArrowLength = 8
        Marks.Font.Charset = RUSSIAN_CHARSET
        Marks.Font.Color = clBlack
        Marks.Font.Height = -16
        Marks.Font.Name = '@Arial Unicode MS'
        Marks.Font.Style = [fsBold]
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        DataSource = DM.ServiceCountQuery
        SeriesColor = clGreen
        XLabelsSource = 'NAME'
        Circled = True
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1
        PieValues.Order = loNone
        PieValues.ValueSource = 'CNT'
      end
      object Series3: TPieSeries
        Active = False
        Marks.ArrowLength = 8
        Marks.Font.Charset = RUSSIAN_CHARSET
        Marks.Font.Color = clBlack
        Marks.Font.Height = -16
        Marks.Font.Name = '@Arial Unicode MS'
        Marks.Font.Style = [fsBold]
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        DataSource = DM.PriceQuery
        SeriesColor = clYellow
        XLabelsSource = 'NAME'
        Circled = True
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1
        PieValues.Order = loNone
        PieValues.ValueSource = 'MAXI'
      end
    end
  end
end
