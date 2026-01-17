object FormDashboard: TFormDashboard
  Left = 0
  Top = 0
  Caption = 'Dashboard Financeiro - Gest'#227'o de Dados Financeiros'
  ClientHeight = 861
  ClientWidth = 1424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTopo: TPanel
    Left = 0
    Top = 0
    Width = 1424
    Height = 89
    Align = alTop
    Color = 2893824
    ParentBackground = False
    TabOrder = 0
    object LabelTitulo: TLabel
      Left = 24
      Top = 16
      Width = 420
      Height = 33
      Caption = 'Dashboard Financeiro Empresarial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelPeriodo: TLabel
      Left = 24
      Top = 55
      Width = 128
      Height = 15
      Caption = 'Per'#237'odo de An'#225'lise:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAtualizar: TBitBtn
      Left = 480
      Top = 48
      Width = 145
      Height = 33
      Caption = 'Atualizar Dashboard'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DE0732
        DE0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732
        DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF0732
        DE0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DE0732DEFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DE0732DE0732DEFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732
        DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAtualizarClick
    end
    object DateTimePickerInicio: TDateTimePicker
      Left = 168
      Top = 52
      Width = 137
      Height = 23
      Date = 45234.000000000000000000
      Time = 0.672928564814814800
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DateTimePickerFim: TDateTimePicker
      Left = 320
      Top = 52
      Width = 137
      Height = 23
      Date = 45234.000000000000000000
      Time = 0.673321886574074000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object PanelIndicadores: TPanel
    Left = 0
    Top = 89
    Width = 1424
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object PanelReceitaTotal: TPanel
      Left = 24
      Top = 16
      Width = 417
      Height = 89
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15134702
      ParentBackground = False
      TabOrder = 0
      object LabelReceita: TLabel
        Left = 16
        Top = 8
        Width = 128
        Height = 19
        Caption = 'RECEITA TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelReceitaValor: TLabel
        Left = 16
        Top = 40
        Width = 122
        Height = 37
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelDespesaTotal: TPanel
      Left = 464
      Top = 16
      Width = 417
      Height = 89
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15134702
      ParentBackground = False
      TabOrder = 1
      object LabelDespesa: TLabel
        Left = 16
        Top = 8
        Width = 130
        Height = 19
        Caption = 'DESPESA TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDespesaValor: TLabel
        Left = 16
        Top = 40
        Width = 122
        Height = 37
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelLucroTotal: TPanel
      Left = 904
      Top = 16
      Width = 417
      Height = 89
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15134702
      ParentBackground = False
      TabOrder = 2
      object LabelLucro: TLabel
        Left = 16
        Top = 8
        Width = 127
        Height = 19
        Caption = 'LUCRO L'#205'QUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelLucroValor: TLabel
        Left = 16
        Top = 40
        Width = 122
        Height = 37
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object PanelFiltros: TPanel
    Left = 0
    Top = 210
    Width = 1424
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Color = 15790320
    ParentBackground = False
    TabOrder = 2
    object LabelCategoria: TLabel
      Left = 24
      Top = 16
      Width = 132
      Height = 15
      Caption = 'Filtrar por Categoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboCategoria: TComboBox
      Left = 168
      Top = 13
      Width = 209
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Todas'
    end
  end
  object PanelGraficos: TPanel
    Left = 0
    Top = 267
    Width = 1424
    Height = 345
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object ChartReceitas: TChart
      Left = 24
      Top = 8
      Width = 425
      Height = 329
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Segoe UI'
      Legend.Shadow.Transparency = 0
      Legend.Visible = True
      MarginBottom = 2
      MarginLeft = 2
      MarginRight = 2
      MarginTop = 2
      RightWall.Color = 14745599
      SubFoot.Font.Name = 'Verdana'
      SubTitle.Font.Name = 'Verdana'
      Title.Font.Color = clNavy
      Title.Font.Height = -15
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Receitas x Despesas por M'#234's')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Segoe UI'
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Segoe UI'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object SeriesReceitas: TBarSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Font.Name = 'Segoe UI'
        Marks.Visible = True
        SeriesColor = clGreen
        Title = 'Receitas'
        BarPen.Visible = False
        BarWidthPercent = 60
        Gradient.Direction = gdTopBottom
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
      object SeriesDespesas: TBarSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Font.Name = 'Segoe UI'
        Marks.Visible = True
        SeriesColor = clRed
        Title = 'Despesas'
        BarPen.Visible = False
        BarWidthPercent = 60
        Gradient.Direction = gdTopBottom
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
    object ChartFluxoCaixa: TChart
      Left = 464
      Top = 8
      Width = 425
      Height = 329
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Segoe UI'
      Legend.Shadow.Transparency = 0
      Legend.Visible = True
      MarginBottom = 2
      MarginLeft = 2
      MarginRight = 2
      MarginTop = 2
      RightWall.Color = 14745599
      SubFoot.Font.Name = 'Verdana'
      SubTitle.Font.Name = 'Verdana'
      Title.Font.Color = clNavy
      Title.Font.Height = -15
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Fluxo de Caixa Mensal')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Name = 'Segoe UI'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Segoe UI'
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Segoe UI'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Segoe UI'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object SeriesFluxo: TLineSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Font.Name = 'Segoe UI'
        Marks.Visible = True
        SeriesColor = clBlue
        Title = 'Saldo'
        Brush.BackColor = clDefault
        LinePen.Width = 3
        Pointer.Brush.Gradient.EndColor = 10708548
        Pointer.Gradient.EndColor = 10708548
        Pointer.HorizSize = 4
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 4
        Pointer.Visible = True
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object ChartCategorias: TChart
      Left = 904
      Top = 8
      Width = 425
      Height = 329
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Segoe UI'
      Legend.Shadow.Transparency = 0
      Legend.Visible = True
      MarginBottom = 2
      MarginLeft = 2
      MarginRight = 2
      MarginTop = 2
      RightWall.Color = 14745599
      SubFoot.Font.Name = 'Verdana'
      SubTitle.Font.Name = 'Verdana'
      Title.Font.Color = clNavy
      Title.Font.Height = -15
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'Despesas por Categoria')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Verdana'
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Verdana'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = True
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 15
      View3DOptions.Rotation = 360
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object SeriesCategorias: TPieSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Font.Name = 'Segoe UI'
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        Title = 'Categorias'
        ExplodeBiggest = 15
        OtherSlice.Legend.Visible = False
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Order = loNone
      end
    end
  end
  object PanelDados: TPanel
    Left = 0
    Top = 612
    Width = 1424
    Height = 230
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object GridDados: TStringGrid
      Left = 24
      Top = 16
      Width = 1305
      Height = 201
      ColCount = 5
      DefaultRowHeight = 24
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing]
      ParentFont = False
      TabOrder = 0
      ColWidths = (
        80
        120
        250
        80
        100)
      RowHeights = (
        24
        24
        24
        24
        24
        24)
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 842
    Width = 1424
    Height = 19
    Panels = <
      item
        Text = 'Total de Transa'#231#245'es: 0'
        Width = 250
      end
      item
        Text = 'Per'#237'odo: '
        Width = 300
      end
      item
        Text = 'Dashboard Financeiro v1.0 - '#169' 2024'
        Width = 50
      end>
    ParentFont = True
    UseSystemFont = False
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1088
    Top = 24
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 1152
    Top = 24
  end
end
