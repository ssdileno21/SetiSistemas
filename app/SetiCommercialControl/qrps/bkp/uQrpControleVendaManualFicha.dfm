object qrpControleVendaManualFicha: TqrpControleVendaManualFicha
  Left = -49
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'qrpControleVendaManualFicha'
  ClientHeight = 1045
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 0
    Top = 0
    Width = 794
    Height = 1041
    Frame.Color = clWhite
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Style = psDot
    DataSet = sqlProdutos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Continuous = False
    Page.Values = (
      30.003750000000000000
      2754.312500000000000000
      30.003750000000000000
      2100.791666666667000000
      50.006250000000000000
      50.006250000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 2
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 15
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 2
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 11
      Width = 756
      Height = 94
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.708333333333300000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        AlignWithMargins = True
        Left = 64
        Top = 10
        Width = 637
        Height = 77
        Frame.Style = psDot
        Size.Values = (
          203.729166666666700000
          169.333333333333300000
          26.458333333333330000
          1685.395833333333000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 71
        Top = 67
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          177.270833333333300000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'E-mail:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 227
        Top = 43
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          600.604166666666700000
          113.770833333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fax'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRHRule1: TQRHRule
        Left = 66
        Top = 38
        Width = 635
        Height = 2
        Size.Values = (
          5.291666666666667000
          174.625000000000000000
          100.541666666666700000
          1680.104166666667000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule2: TQRHRule
        Left = 66
        Top = 62
        Width = 635
        Height = 2
        Size.Values = (
          5.291666666666667000
          174.625000000000000000
          164.041666666666700000
          1680.104166666667000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRDBText1: TQRDBText
        Left = 71
        Top = 16
        Width = 622
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          42.333333333333330000
          1645.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlEmpresa
        DataField = 'RAZAOSOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 71
        Top = 43
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          113.770833333333300000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tel.:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 112
        Top = 43
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          113.770833333333300000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlEmpresa
        DataField = 'NUMTELEFONE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 254
        Top = 43
        Width = 439
        Height = 17
        Size.Values = (
          44.979166666666670000
          672.041666666666700000
          113.770833333333300000
          1161.520833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlEmpresa
        DataField = 'FAX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 126
        Top = 67
        Width = 567
        Height = 17
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          177.270833333333300000
          1500.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlEmpresa
        DataField = 'EMAIL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 105
      Width = 756
      Height = 928
      Frame.Style = psClear
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2455.333333333333000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRPShape17: TQRPShape
        Left = 7
        Top = 672
        Width = 738
        Height = 184
        Size.Values = (
          486.833333333333300000
          18.520833333333330000
          1778.000000000000000000
          1952.625000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRShape2: TQRShape
        Left = 7
        Top = 6
        Width = 738
        Height = 147
        Size.Values = (
          388.937500000000000000
          18.520833333333330000
          15.875000000000000000
          1952.625000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRHRule3: TQRHRule
        Left = 7
        Top = 25
        Width = 738
        Height = 2
        Size.Values = (
          5.291666666666667000
          18.520833333333330000
          66.145833333333330000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule4: TQRHRule
        Left = 7
        Top = 66
        Width = 738
        Height = 2
        Size.Values = (
          5.291666666666667000
          18.520833333333330000
          174.625000000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule6: TQRHRule
        Left = 7
        Top = 87
        Width = 738
        Height = 3
        Size.Values = (
          7.937500000000000000
          18.520833333333330000
          230.187500000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule7: TQRHRule
        Left = 7
        Top = 107
        Width = 738
        Height = 3
        Size.Values = (
          7.937500000000000000
          18.520833333333330000
          283.104166666666700000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule8: TQRHRule
        Left = 7
        Top = 128
        Width = 738
        Height = 2
        Size.Values = (
          5.291666666666667000
          18.520833333333330000
          338.666666666666700000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel21: TQRLabel
        Left = 11
        Top = 132
        Width = 155
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          349.250000000000000000
          410.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comprador/Respons'#225'vel:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 170
        Top = 132
        Width = 274
        Height = 17
        Size.Values = (
          44.979166666666670000
          449.791666666666700000
          349.250000000000000000
          724.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'COMPRADORRESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 11
        Top = 110
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          291.041666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UF:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText19: TQRDBText
        Left = 37
        Top = 110
        Width = 48
        Height = 17
        Size.Values = (
          44.979166666666670000
          97.895833333333330000
          291.041666666666700000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOUROUF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 102
        Top = 110
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          269.875000000000000000
          291.041666666666700000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 170
        Top = 110
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          449.791666666666700000
          291.041666666666700000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'NUMTELEFONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 285
        Top = 110
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          754.062500000000000000
          291.041666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 347
        Top = 110
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          291.041666666666700000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'NUMCELULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 11
        Top = 90
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          238.125000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 235
        Top = 90
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          621.770833333333300000
          238.125000000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 270
        Top = 90
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          714.375000000000000000
          238.125000000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 67
        Top = 90
        Width = 150
        Height = 17
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          238.125000000000000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOUROBAIRRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 384
        Top = 90
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          238.125000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 439
        Top = 90
        Width = 299
        Height = 17
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          238.125000000000000000
          791.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 584
        Top = 70
        Width = 153
        Height = 17
        Size.Values = (
          44.979166666666670000
          1545.166666666667000000
          185.208333333333300000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCOMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 533
        Top = 70
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1410.229166666667000000
          185.208333333333300000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comp:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 479
        Top = 70
        Width = 48
        Height = 17
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          185.208333333333300000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOURONUM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 445
        Top = 70
        Width = 22
        Height = 17
        Size.Values = (
          44.979166666666670000
          1177.395833333333000000
          185.208333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186':'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 80
        Top = 70
        Width = 341
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          185.208333333333300000
          902.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'LOGRADOURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 70
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          185.208333333333300000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 11
        Top = 49
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          129.645833333333300000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Regi'#227'o:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 66
        Top = 49
        Width = 672
        Height = 17
        Size.Values = (
          44.979166666666670000
          174.625000000000000000
          129.645833333333300000
          1778.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'REGIAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 595
        Top = 28
        Width = 143
        Height = 17
        Size.Values = (
          44.979166666666670000
          1574.270833333333000000
          74.083333333333330000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'CPFCNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 514
        Top = 28
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          1359.958333333333000000
          74.083333333333330000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 570
        Top = 8
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1508.125000000000000000
          21.166666666666670000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 611
        Top = 8
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          21.166666666666670000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'DTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 212
        Top = 8
        Width = 341
        Height = 17
        Size.Values = (
          44.979166666666670000
          560.916666666666700000
          21.166666666666670000
          902.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'NOMEFANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 107
        Top = 28
        Width = 386
        Height = 17
        Size.Values = (
          44.979166666666670000
          283.104166666666700000
          74.083333333333330000
          1021.291666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 28
        Width = 92
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          74.083333333333330000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Raz'#227'o social:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 109
        Top = 8
        Width = 99
        Height = 17
        Size.Values = (
          44.979166666666670000
          288.395833333333300000
          21.166666666666670000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome fantasia:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRHRule9: TQRHRule
        Left = 7
        Top = 45
        Width = 738
        Height = 2
        Size.Values = (
          5.291666666666667000
          18.520833333333330000
          119.062500000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRShape3: TQRShape
        Left = 7
        Top = 158
        Width = 738
        Height = 458
        Size.Values = (
          1211.791666666667000000
          18.520833333333330000
          418.041666666666700000
          1952.625000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 17
        Top = 166
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          44.979166666666670000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRHRule5: TQRHRule
        Left = 17
        Top = 187
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          494.770833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule10: TQRHRule
        Left = 17
        Top = 207
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          547.687500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule11: TQRHRule
        Left = 17
        Top = 227
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          600.604166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule12: TQRHRule
        Left = 17
        Top = 247
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          653.520833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRShape5: TQRShape
        Left = 17
        Top = 278
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          44.979166666666670000
          735.541666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 17
        Top = 390
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          44.979166666666670000
          1031.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 17
        Top = 502
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          44.979166666666670000
          1328.208333333333000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 197
        Top = 166
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          521.229166666666700000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 384
        Top = 166
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1016.000000000000000000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 565
        Top = 166
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1494.895833333333000000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 197
        Top = 278
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          521.229166666666700000
          735.541666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 197
        Top = 390
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          521.229166666666700000
          1031.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 384
        Top = 390
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1016.000000000000000000
          1031.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 565
        Top = 390
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1494.895833333333000000
          1031.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 197
        Top = 502
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          521.229166666666700000
          1328.208333333333000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 384
        Top = 502
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1016.000000000000000000
          1328.208333333333000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 565
        Top = 502
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1494.895833333333000000
          1328.208333333333000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText23: TQRDBText
        Left = 20
        Top = 169
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          447.145833333333300000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 202
        Top = 169
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          447.145833333333300000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 388
        Top = 169
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          447.145833333333300000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText26: TQRDBText
        Left = 569
        Top = 169
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          447.145833333333300000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText27: TQRDBText
        Left = 20
        Top = 281
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          743.479166666666700000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText28: TQRDBText
        Left = 202
        Top = 281
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          743.479166666666700000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText31: TQRDBText
        Left = 20
        Top = 392
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1037.166666666667000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText32: TQRDBText
        Left = 20
        Top = 504
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1333.500000000000000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText33: TQRDBText
        Left = 202
        Top = 392
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          1037.166666666667000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText34: TQRDBText
        Left = 388
        Top = 392
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1037.166666666667000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText35: TQRDBText
        Left = 569
        Top = 392
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1037.166666666667000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText36: TQRDBText
        Left = 202
        Top = 504
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          1333.500000000000000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText37: TQRDBText
        Left = 388
        Top = 504
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1333.500000000000000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText38: TQRDBText
        Left = 569
        Top = 504
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1333.500000000000000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 20
        Top = 189
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          500.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 20
        Top = 209
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          552.979166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 20
        Top = 229
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          605.895833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 20
        Top = 249
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          658.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 461
        Top = 132
        Width = 127
        Height = 17
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          349.250000000000000000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desconto especial:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object qrdbDescEspe: TQRDBText
        Left = 594
        Top = 132
        Width = 144
        Height = 17
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          349.250000000000000000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRPShape1: TQRPShape
        Left = 96
        Top = 187
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          254.000000000000000000
          494.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape2: TQRPShape
        Left = 278
        Top = 187
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          735.541666666666700000
          494.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule13: TQRHRule
        Left = 197
        Top = 187
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          494.770833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule37: TQRHRule
        Left = 197
        Top = 207
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          547.687500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule38: TQRHRule
        Left = 197
        Top = 227
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          600.604166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule39: TQRHRule
        Left = 197
        Top = 247
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          653.520833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel26: TQRLabel
        Left = 201
        Top = 189
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          500.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 201
        Top = 209
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          552.979166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel29: TQRLabel
        Left = 201
        Top = 229
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          605.895833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 201
        Top = 249
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          658.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRHRule40: TQRHRule
        Left = 384
        Top = 187
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          494.770833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule41: TQRHRule
        Left = 384
        Top = 207
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          547.687500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule42: TQRHRule
        Left = 384
        Top = 227
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          600.604166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule43: TQRHRule
        Left = 384
        Top = 246
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          650.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel31: TQRLabel
        Left = 388
        Top = 189
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          500.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 388
        Top = 209
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          552.979166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 388
        Top = 229
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          605.895833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 388
        Top = 249
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          658.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRHRule44: TQRHRule
        Left = 566
        Top = 187
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          494.770833333333300000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule45: TQRHRule
        Left = 564
        Top = 207
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1492.250000000000000000
          547.687500000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule46: TQRHRule
        Left = 566
        Top = 227
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          600.604166666666700000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule47: TQRHRule
        Left = 566
        Top = 246
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          650.875000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel35: TQRLabel
        Left = 569
        Top = 189
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          500.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel36: TQRLabel
        Left = 569
        Top = 209
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          552.979166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 569
        Top = 229
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          605.895833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 569
        Top = 249
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          658.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape5: TQRPShape
        Left = 96
        Top = 297
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          254.000000000000000000
          785.812500000000000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule15: TQRHRule
        Left = 17
        Top = 299
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          791.104166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule16: TQRHRule
        Left = 17
        Top = 319
        Width = 174
        Height = 1
        Size.Values = (
          2.645833333333333000
          44.979166666666670000
          844.020833333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule17: TQRHRule
        Left = 17
        Top = 338
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          894.291666666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule18: TQRHRule
        Left = 21
        Top = 359
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          55.562500000000000000
          949.854166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel39: TQRLabel
        Left = 20
        Top = 301
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          796.395833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 20
        Top = 321
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          849.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 20
        Top = 341
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          902.229166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 20
        Top = 361
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          955.145833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape6: TQRPShape
        Left = 278
        Top = 299
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          735.541666666666700000
          791.104166666666700000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule19: TQRHRule
        Left = 197
        Top = 299
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          791.104166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule48: TQRHRule
        Left = 197
        Top = 318
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          841.375000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule49: TQRHRule
        Left = 197
        Top = 338
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          894.291666666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule50: TQRHRule
        Left = 197
        Top = 359
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          949.854166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel43: TQRLabel
        Left = 201
        Top = 301
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          796.395833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel44: TQRLabel
        Left = 201
        Top = 321
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          849.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 201
        Top = 341
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          902.229166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 201
        Top = 361
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          955.145833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape13: TQRShape
        Left = 565
        Top = 278
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1494.895833333333000000
          735.541666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText30: TQRDBText
        Left = 569
        Top = 281
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          743.479166666666700000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRHRule32: TQRHRule
        Left = 564
        Top = 297
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1492.250000000000000000
          785.812500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule52: TQRHRule
        Left = 566
        Top = 319
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          844.020833333333300000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule53: TQRHRule
        Left = 566
        Top = 338
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          894.291666666666700000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule54: TQRHRule
        Left = 566
        Top = 359
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          949.854166666666700000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRLabel51: TQRLabel
        Left = 569
        Top = 301
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          796.395833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 569
        Top = 321
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          849.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel53: TQRLabel
        Left = 569
        Top = 341
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          902.229166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel54: TQRLabel
        Left = 569
        Top = 361
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          955.145833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape3: TQRPShape
        Left = 465
        Top = 187
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1230.312500000000000000
          494.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape9: TQRPShape
        Left = 96
        Top = 411
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          254.000000000000000000
          1087.437500000000000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule26: TQRHRule
        Left = 17
        Top = 411
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1087.437500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule27: TQRHRule
        Left = 17
        Top = 431
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1140.354166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule28: TQRHRule
        Left = 17
        Top = 450
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1190.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule29: TQRHRule
        Left = 17
        Top = 470
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1243.541666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel55: TQRLabel
        Left = 20
        Top = 413
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1092.729166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel56: TQRLabel
        Left = 20
        Top = 433
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1145.645833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel57: TQRLabel
        Left = 21
        Top = 453
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          1198.562500000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel58: TQRLabel
        Left = 20
        Top = 473
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape10: TQRPShape
        Left = 278
        Top = 410
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          735.541666666666700000
          1084.791666666667000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule30: TQRHRule
        Left = 197
        Top = 411
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1087.437500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule35: TQRHRule
        Left = 197
        Top = 431
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1140.354166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule36: TQRHRule
        Left = 197
        Top = 450
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1190.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule55: TQRHRule
        Left = 197
        Top = 470
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1243.541666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel59: TQRLabel
        Left = 201
        Top = 413
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1092.729166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel60: TQRLabel
        Left = 201
        Top = 433
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1145.645833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel61: TQRLabel
        Left = 201
        Top = 453
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1198.562500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel62: TQRLabel
        Left = 201
        Top = 473
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape11: TQRPShape
        Left = 465
        Top = 411
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1230.312500000000000000
          1087.437500000000000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule56: TQRHRule
        Left = 384
        Top = 411
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1087.437500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule57: TQRHRule
        Left = 384
        Top = 431
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1140.354166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule58: TQRHRule
        Left = 384
        Top = 450
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1190.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule59: TQRHRule
        Left = 384
        Top = 470
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1243.541666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel63: TQRLabel
        Left = 388
        Top = 413
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1092.729166666667000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel64: TQRLabel
        Left = 388
        Top = 433
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1145.645833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel65: TQRLabel
        Left = 388
        Top = 453
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1198.562500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel66: TQRLabel
        Left = 388
        Top = 473
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRHRule60: TQRHRule
        Left = 565
        Top = 411
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1494.895833333333000000
          1087.437500000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule61: TQRHRule
        Left = 565
        Top = 431
        Width = 174
        Height = 1
        Size.Values = (
          2.645833333333333000
          1494.895833333333000000
          1140.354166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule62: TQRHRule
        Left = 565
        Top = 451
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          1193.270833333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule63: TQRHRule
        Left = 565
        Top = 470
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1494.895833333333000000
          1243.541666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel67: TQRLabel
        Left = 569
        Top = 413
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1092.729166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel68: TQRLabel
        Left = 569
        Top = 433
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1145.645833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel69: TQRLabel
        Left = 569
        Top = 453
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1198.562500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel70: TQRLabel
        Left = 569
        Top = 473
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1251.479166666667000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape13: TQRPShape
        Left = 96
        Top = 523
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          254.000000000000000000
          1383.770833333333000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule64: TQRHRule
        Left = 17
        Top = 522
        Width = 174
        Height = 3
        Size.Values = (
          7.937500000000000000
          44.979166666666670000
          1381.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule65: TQRHRule
        Left = 17
        Top = 542
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1434.041666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule66: TQRHRule
        Left = 17
        Top = 563
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1489.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule67: TQRHRule
        Left = 17
        Top = 583
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          44.979166666666670000
          1542.520833333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel71: TQRLabel
        Left = 20
        Top = 525
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1389.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel72: TQRLabel
        Left = 20
        Top = 545
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1441.979166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel73: TQRLabel
        Left = 20
        Top = 565
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1494.895833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel74: TQRLabel
        Left = 20
        Top = 585
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          1547.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape14: TQRPShape
        Left = 278
        Top = 523
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          735.541666666666700000
          1383.770833333333000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule68: TQRHRule
        Left = 197
        Top = 522
        Width = 174
        Height = 3
        Size.Values = (
          7.937500000000000000
          521.229166666666700000
          1381.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule69: TQRHRule
        Left = 197
        Top = 542
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1434.041666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule70: TQRHRule
        Left = 197
        Top = 563
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1489.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule71: TQRHRule
        Left = 197
        Top = 583
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          521.229166666666700000
          1542.520833333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel75: TQRLabel
        Left = 201
        Top = 525
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1389.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel76: TQRLabel
        Left = 201
        Top = 545
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1441.979166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel77: TQRLabel
        Left = 201
        Top = 565
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1494.895833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel78: TQRLabel
        Left = 201
        Top = 585
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          1547.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRHRule72: TQRHRule
        Left = 384
        Top = 522
        Width = 174
        Height = 1
        Size.Values = (
          2.645833333333333000
          1016.000000000000000000
          1381.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule77: TQRHRule
        Left = 384
        Top = 542
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1434.041666666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule78: TQRHRule
        Left = 384
        Top = 563
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1489.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule79: TQRHRule
        Left = 384
        Top = 583
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          1542.520833333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel83: TQRLabel
        Left = 388
        Top = 525
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1389.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel84: TQRLabel
        Left = 388
        Top = 545
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1441.979166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel85: TQRLabel
        Left = 388
        Top = 565
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1494.895833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel86: TQRLabel
        Left = 388
        Top = 585
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          1547.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRHRule80: TQRHRule
        Left = 566
        Top = 523
        Width = 173
        Height = 1
        Size.Values = (
          2.645833333333333000
          1497.541666666667000000
          1383.770833333333000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule81: TQRHRule
        Left = 566
        Top = 542
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          1434.041666666667000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule82: TQRHRule
        Left = 566
        Top = 563
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          1489.604166666667000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule83: TQRHRule
        Left = 566
        Top = 583
        Width = 173
        Height = 2
        Size.Values = (
          5.291666666666667000
          1497.541666666667000000
          1542.520833333333000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel87: TQRLabel
        Left = 569
        Top = 525
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1389.062500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel88: TQRLabel
        Left = 569
        Top = 545
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1441.979166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel89: TQRLabel
        Left = 569
        Top = 565
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1494.895833333333000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel90: TQRLabel
        Left = 569
        Top = 585
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1547.812500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRPShape18: TQRPShape
        Left = 646
        Top = 187
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1709.208333333333000000
          494.770833333333300000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape4: TQRPShape
        Left = 646
        Top = 302
        Width = 1
        Height = 79
        Size.Values = (
          209.020833333333300000
          1709.208333333333000000
          799.041666666666700000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape8: TQRPShape
        Left = 646
        Top = 411
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1709.208333333333000000
          1087.437500000000000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape12: TQRPShape
        Left = 646
        Top = 523
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1709.208333333333000000
          1383.770833333333000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape16: TQRPShape
        Left = 465
        Top = 523
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1230.312500000000000000
          1383.770833333333000000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape7: TQRPShape
        Left = 384
        Top = 278
        Width = 174
        Height = 102
        Size.Values = (
          269.875000000000000000
          1016.000000000000000000
          735.541666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape15: TQRPShape
        Left = 465
        Top = 299
        Width = 1
        Height = 81
        Size.Values = (
          214.312500000000000000
          1230.312500000000000000
          791.104166666666700000
          2.645833333333333000)
        XLColumn = 0
        Pen.Style = psDot
        Pen.Width = 0
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRHRule31: TQRHRule
        Left = 384
        Top = 299
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          791.104166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule33: TQRHRule
        Left = 384
        Top = 318
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          841.375000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule34: TQRHRule
        Left = 384
        Top = 338
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          894.291666666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
        Pen.Width = 0
      end
      object QRHRule51: TQRHRule
        Left = 384
        Top = 359
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1016.000000000000000000
          949.854166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRDBText29: TQRDBText
        Left = 388
        Top = 281
        Width = 164
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          743.479166666666700000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel47: TQRLabel
        Left = 388
        Top = 301
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          796.395833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 388
        Top = 341
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          902.229166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 388
        Top = 321
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          849.312500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 388
        Top = 361
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1026.583333333333000000
          955.145833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel79: TQRLabel
        Left = 519
        Top = 622
        Width = 124
        Height = 17
        Size.Values = (
          44.979166666666670000
          1373.187500000000000000
          1645.708333333333000000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total '#224' pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText41: TQRDBText
        Left = 100
        Top = 189
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          264.583333333333300000
          500.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText42: TQRDBText
        Left = 101
        Top = 209
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          552.979166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText43: TQRDBText
        Left = 101
        Top = 229
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          605.895833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText45: TQRDBText
        Left = 283
        Top = 189
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          500.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText46: TQRDBText
        Left = 283
        Top = 209
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          552.979166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText47: TQRDBText
        Left = 283
        Top = 229
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          605.895833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText49: TQRDBText
        Left = 469
        Top = 189
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          500.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText50: TQRDBText
        Left = 469
        Top = 209
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          552.979166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText51: TQRDBText
        Left = 469
        Top = 229
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          605.895833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText53: TQRDBText
        Left = 650
        Top = 189
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          500.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText54: TQRDBText
        Left = 650
        Top = 209
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          552.979166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText55: TQRDBText
        Left = 650
        Top = 229
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          605.895833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText57: TQRDBText
        Left = 101
        Top = 301
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          796.395833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText58: TQRDBText
        Left = 101
        Top = 321
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          849.312500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText59: TQRDBText
        Left = 101
        Top = 341
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          902.229166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText65: TQRDBText
        Left = 470
        Top = 301
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          796.395833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText66: TQRDBText
        Left = 470
        Top = 321
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          849.312500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText67: TQRDBText
        Left = 470
        Top = 341
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          902.229166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText69: TQRDBText
        Left = 650
        Top = 301
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          796.395833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText70: TQRDBText
        Left = 650
        Top = 321
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          849.312500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText71: TQRDBText
        Left = 650
        Top = 341
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          902.229166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText73: TQRDBText
        Left = 101
        Top = 413
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1092.729166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText74: TQRDBText
        Left = 101
        Top = 433
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1145.645833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText75: TQRDBText
        Left = 101
        Top = 453
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1198.562500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText77: TQRDBText
        Left = 283
        Top = 413
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1092.729166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText78: TQRDBText
        Left = 283
        Top = 433
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1145.645833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText79: TQRDBText
        Left = 283
        Top = 453
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1198.562500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText81: TQRDBText
        Left = 470
        Top = 413
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1092.729166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText82: TQRDBText
        Left = 470
        Top = 433
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1145.645833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText83: TQRDBText
        Left = 470
        Top = 453
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1198.562500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText85: TQRDBText
        Left = 650
        Top = 413
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1092.729166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText86: TQRDBText
        Left = 650
        Top = 433
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1145.645833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText87: TQRDBText
        Left = 650
        Top = 453
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1198.562500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText89: TQRDBText
        Left = 101
        Top = 525
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1389.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText90: TQRDBText
        Left = 101
        Top = 545
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1441.979166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText91: TQRDBText
        Left = 101
        Top = 565
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          1494.895833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText93: TQRDBText
        Left = 283
        Top = 525
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1389.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText94: TQRDBText
        Left = 283
        Top = 545
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1441.979166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText95: TQRDBText
        Left = 283
        Top = 565
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          1494.895833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText97: TQRDBText
        Left = 470
        Top = 525
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1389.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText98: TQRDBText
        Left = 470
        Top = 545
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1441.979166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText99: TQRDBText
        Left = 470
        Top = 565
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          1494.895833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText101: TQRDBText
        Left = 650
        Top = 525
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1389.062500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText102: TQRDBText
        Left = 650
        Top = 545
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1441.979166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText103: TQRDBText
        Left = 650
        Top = 565
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1719.791666666667000000
          1494.895833333333000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRPGrid2: TQRPGrid
        Left = 9
        Top = 675
        Width = 735
        Height = 180
        Size.Values = (
          476.250000000000000000
          23.812500000000000000
          1785.937500000000000000
          1944.687500000000000000)
        XLColumn = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
        CellHorizAlignment = haNone
        CellVertAlignment = vaNone
        Columns = 8
        Rows = 9
        DrawFirstRowLine = True
        FirstRowColor = clWhite
        FirstColumnColor = clWhite
        FirstCellColor = clWhite
        FirstColumnJoined = False
        FirstRowJoined = False
        Transparent = False
        Pen.Style = psDot
      end
      object QRLabel81: TQRLabel
        Left = 11
        Top = 677
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1791.229166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel82: TQRLabel
        Left = 103
        Top = 677
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          272.520833333333300000
          1791.229166666667000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel91: TQRLabel
        Left = 196
        Top = 677
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          1791.229166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel92: TQRLabel
        Left = 287
        Top = 677
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          759.354166666666700000
          1791.229166666667000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel93: TQRLabel
        Left = 378
        Top = 677
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          1791.229166666667000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel94: TQRLabel
        Left = 472
        Top = 677
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          1791.229166666667000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel95: TQRLabel
        Left = 561
        Top = 677
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          1484.312500000000000000
          1791.229166666667000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel96: TQRLabel
        Left = 651
        Top = 677
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          1791.229166666667000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel80: TQRLabel
        Left = 17
        Top = 649
        Width = 261
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          1717.145833333333000000
          690.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque atual consignado'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 131
        Top = 896
        Width = 114
        Height = 17
        Size.Values = (
          44.979166666666670000
          346.604166666666700000
          2370.666666666667000000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Assinatura:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape12: TQRShape
        Left = 10
        Top = 889
        Width = 410
        Height = 1
        Size.Values = (
          2.645833333333333000
          26.458333333333330000
          2352.145833333333000000
          1084.791666666667000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel98: TQRLabel
        Left = 441
        Top = 874
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          2312.458333333333000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel99: TQRLabel
        Left = 485
        Top = 874
        Width = 104
        Height = 17
        Size.Values = (
          44.979166666666670000
          1283.229166666667000000
          2312.458333333333000000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___/___/______'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel100: TQRLabel
        Left = 593
        Top = 874
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1568.979166666667000000
          2312.458333333333000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel101: TQRLabel
        Left = 651
        Top = 874
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          2312.458333333333000000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 11
        Top = 8
        Width = 45
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          21.166666666666670000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Ficha:'
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 59
        Top = 8
        Width = 44
        Height = 17
        Size.Values = (
          44.979166666666670000
          156.104166666666700000
          21.166666666666670000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlCliente
        DataField = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel102: TQRLabel
        Left = 651
        Top = 622
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          1645.708333333333000000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText105: TQRDBText
        Left = 11
        Top = 717
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1897.062500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText106: TQRDBText
        Left = 11
        Top = 737
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1949.979166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText107: TQRDBText
        Left = 11
        Top = 757
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2002.895833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText108: TQRDBText
        Left = 11
        Top = 777
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2055.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText109: TQRDBText
        Left = 11
        Top = 797
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2108.729166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText110: TQRDBText
        Left = 11
        Top = 817
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2161.645833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText111: TQRDBText
        Left = 11
        Top = 837
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2214.562500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText112: TQRDBText
        Left = 378
        Top = 697
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          1844.145833333333000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText113: TQRDBText
        Left = 378
        Top = 717
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          1897.062500000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText114: TQRDBText
        Left = 378
        Top = 737
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          1949.979166666667000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText115: TQRDBText
        Left = 378
        Top = 756
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          2000.250000000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText116: TQRDBText
        Left = 378
        Top = 777
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          2055.812500000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText117: TQRDBText
        Left = 378
        Top = 797
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          2108.729166666667000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText118: TQRDBText
        Left = 378
        Top = 817
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          2161.645833333333000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText119: TQRDBText
        Left = 378
        Top = 837
        Width = 84
        Height = 17
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          2214.562500000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText137: TQRDBText
        Left = 10
        Top = 697
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          1844.145833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'NOME1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRHRule14: TQRHRule
        Left = 565
        Top = 450
        Width = 174
        Height = 2
        Size.Values = (
          5.291666666666667000
          1494.895833333333000000
          1190.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRDBText61: TQRDBText
        Left = 283
        Top = 301
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          796.395833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText62: TQRDBText
        Left = 283
        Top = 321
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          849.312500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'CONTAGEM6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText63: TQRDBText
        Left = 283
        Top = 341
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          748.770833333333300000
          902.229166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWindow
        DataSet = sqlProdutos
        DataField = 'QTDVENDA6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
  end
  object sqlEmpresa: TSQLQuery
    Params = <>
    Left = 536
    Top = 1019
  end
  object sqlCliente: TSQLQuery
    Params = <>
    Left = 464
    Top = 1035
  end
  object sqlProdutos: TSQLQuery
    Params = <>
    Left = 621
    Top = 1019
  end
  object SqlAux: TSQLQuery
    Params = <>
    Left = 32
    Top = 24
  end
end