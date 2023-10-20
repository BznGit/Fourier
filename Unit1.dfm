object Form1: TForm1
  AlignWithMargins = True
  Left = 440
  Top = 124
  Caption = 'Spectrum'
  ClientHeight = 744
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 1114
    Height = 299
    Legend.Color = clBlue
    Legend.DividingLines.Color = clBlue
    Legend.DividingLines.Visible = True
    Legend.Visible = False
    SubTitle.Font.Color = clLime
    SubTitle.Font.Height = -25
    Title.Color = clBlue
    Title.Font.Color = clLime
    Title.Font.Height = -24
    Title.Font.Shadow.Visible = False
    Title.Frame.Color = clWhite
    Title.Frame.Visible = False
    Title.Shadow.Visible = False
    Title.Text.Strings = (
      #1048#1089#1093#1086#1076#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103)
    BottomAxis.Axis.Color = clBlue
    BottomAxis.Grid.Color = clWhite
    BottomAxis.Grid.Style = psDot
    BottomAxis.LabelsFormat.Font.Color = clBlue
    BottomAxis.MinorTickCount = 1
    BottomAxis.Ticks.Color = clBlue
    BottomAxis.Ticks.Visible = False
    Chart3DPercent = 1
    DepthAxis.Grid.Style = psDot
    DepthAxis.TickLength = 1
    DepthAxis.Ticks.Visible = False
    DepthTopAxis.Grid.Color = clBlack
    DepthTopAxis.Grid.Style = psDot
    Emboss.Color = clBlue
    LeftAxis.Axis.Color = clBlue
    LeftAxis.Grid.Color = clWhite
    LeftAxis.Grid.Style = psDot
    LeftAxis.Grid.ZPosition = 1.000000000000000000
    LeftAxis.LabelsFormat.Font.Color = clBlue
    LeftAxis.MinorGrid.Color = clDefault
    LeftAxis.MinorGrid.Style = psDot
    LeftAxis.MinorGrid.Visible = True
    LeftAxis.MinorTickCount = 1
    LeftAxis.Ticks.Color = clBlue
    LeftAxis.Ticks.Style = psDot
    RightAxis.Grid.Color = clWhite
    RightAxis.Grid.Style = psDot
    RightAxis.Ticks.Color = -1
    RightAxis.Ticks.Style = psDot
    RightAxis.Ticks.Visible = False
    RightAxis.Visible = False
    Shadow.Color = clBlack
    TopAxis.Grid.Color = clWhite
    TopAxis.Grid.Style = psDot
    TopAxis.Grid.Visible = False
    TopAxis.Visible = False
    View3D = False
    Zoom.Pen.Color = clBlack
    Zoom.Pen.Style = psDot
    Color = clBlack
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      SeriesColor = clRed
      Brush.BackColor = clDefault
      LinePen.Width = 0
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      Transparency = 32
    end
    object Series2: TLineSeries
      SeriesColor = clLime
      Brush.Color = clBlack
      Brush.BackColor = clDefault
      LinePen.Width = 0
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      SeriesColor = clBlue
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 296
    Width = 1111
    Height = 65
    Color = clBackground
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 281
      Top = 9
      Width = 7
      Height = 16
      Caption = '0'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 370
      Top = 9
      Width = 23
      Height = 16
      Caption = #1089#1077#1082'.'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 112
      Top = 9
      Width = 163
      Height = 16
      Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103':'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 308
      Top = 9
      Width = 26
      Height = 16
      Caption = #1084#1080#1085'.'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 340
      Top = 9
      Width = 24
      Height = 16
      Caption = '0'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 39
      Width = 546
      Height = 17
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 560
      Top = 9
      Width = 545
      Height = 48
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 29
        Top = 20
        Width = 120
        Height = 13
        Caption = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1089#1080#1075#1085#1072#1083#1072':'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 219
        Top = 18
        Width = 126
        Height = 13
        Caption = #1063#1072#1089#1090#1086#1090#1072' '#1076#1080#1089#1082#1088#1080#1090#1080#1079#1072#1094#1080#1080':'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 1
        Width = 93
        Height = 13
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1090#1077#1089#1090#1072':'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 351
        Top = 15
        Width = 58
        Height = 21
        TabOrder = 0
        Text = '100'
      end
      object Edit1: TEdit
        Left = 155
        Top = 15
        Width = 58
        Height = 21
        TabOrder = 1
        Text = '5'
      end
      object Button2: TButton
        Left = 425
        Top = 15
        Width = 117
        Height = 21
        Caption = #1058#1077#1089#1090
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object Chart2: TChart
    AlignWithMargins = True
    Left = 0
    Top = 359
    Width = 1111
    Height = 387
    Legend.Color = clBlue
    Legend.DividingLines.Color = clBlue
    Legend.DividingLines.Visible = True
    Legend.Visible = False
    SubTitle.Font.Color = clLime
    SubTitle.Font.Height = -25
    Title.Color = clRed
    Title.Font.Color = clRed
    Title.Font.Height = -24
    Title.Font.Shadow.Visible = False
    Title.Frame.Color = clWhite
    Title.Frame.Visible = False
    Title.Shadow.Visible = False
    Title.Text.Strings = (
      #1063#1072#1089#1090#1086#1090#1085#1099#1081' '#1089#1087#1077#1082#1090#1088)
    BottomAxis.Axis.Color = clBlue
    BottomAxis.Grid.Color = clWhite
    BottomAxis.Grid.Style = psDot
    BottomAxis.LabelsFormat.Font.Color = clBlue
    BottomAxis.MinorTickCount = 1
    BottomAxis.Ticks.Color = clBlue
    BottomAxis.Ticks.Visible = False
    Chart3DPercent = 1
    DepthAxis.Grid.Style = psDot
    DepthAxis.TickLength = 1
    DepthAxis.Ticks.Visible = False
    DepthTopAxis.Grid.Color = clBlack
    DepthTopAxis.Grid.Style = psDot
    Emboss.Color = clBlue
    LeftAxis.Axis.Color = clBlue
    LeftAxis.Grid.Color = clWhite
    LeftAxis.Grid.Style = psDot
    LeftAxis.Grid.ZPosition = 1.000000000000000000
    LeftAxis.LabelsFormat.Font.Color = clBlue
    LeftAxis.MinorGrid.Color = clDefault
    LeftAxis.MinorGrid.Style = psDot
    LeftAxis.MinorGrid.Visible = True
    LeftAxis.MinorTickCount = 1
    LeftAxis.Ticks.Color = clBlue
    LeftAxis.Ticks.Style = psDot
    RightAxis.Grid.Color = clWhite
    RightAxis.Grid.Style = psDot
    RightAxis.Ticks.Color = -1
    RightAxis.Ticks.Style = psDot
    RightAxis.Ticks.Visible = False
    RightAxis.Visible = False
    Shadow.Color = clBlack
    TopAxis.Grid.Color = clWhite
    TopAxis.Grid.Style = psDot
    TopAxis.Grid.Visible = False
    TopAxis.Visible = False
    View3D = False
    Zoom.Pen.Color = clBlack
    Zoom.Pen.Style = psDot
    Color = clBlack
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series3: TLineSeries
      Marks.Callout.Length = 20
      SeriesColor = 65408
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      SeriesColor = clRed
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      SeriesColor = clYellow
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N2Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 72
    Top = 16
  end
end
