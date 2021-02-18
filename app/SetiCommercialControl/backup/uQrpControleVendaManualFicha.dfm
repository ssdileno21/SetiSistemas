object qrpControleVendaManualFicha: TqrpControleVendaManualFicha
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'qrpControleVendaManualFicha'
  ClientHeight = 1110
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Style = psDot
    DataSet = sqlProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
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
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      30.000000000000000000
      2970.000000000000000000
      30.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
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
      Height = 128
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        338.666666666666700000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        AlignWithMargins = True
        Left = 64
        Top = 34
        Width = 637
        Height = 73
        Frame.Style = psDot
        Size.Values = (
          193.145833333333300000
          169.333333333333300000
          89.958333333333330000
          1685.395833333333000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 71
        Top = 86
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          227.541666666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'E-mail:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 236
        Top = 62
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          624.416666666666700000
          164.041666666666700000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fax'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule1: TQRHRule
        Left = 66
        Top = 56
        Width = 635
        Height = 8
        Size.Values = (
          21.166666666666670000
          174.625000000000000000
          148.166666666666700000
          1680.104166666667000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule2: TQRHRule
        Left = 66
        Top = 79
        Width = 635
        Height = 8
        Size.Values = (
          21.166666666666670000
          174.625000000000000000
          209.020833333333300000
          1680.104166666667000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRDBText1: TQRDBText
        Left = 71
        Top = 39
        Width = 622
        Height = 18
        Size.Values = (
          47.625000000000000000
          187.854166666666700000
          103.187500000000000000
          1645.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlEmpresa
        DataField = 'RAZAOSOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 71
        Top = 62
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          187.854166666666700000
          164.041666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Tel.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 122
        Top = 63
        Width = 97
        Height = 17
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          166.687500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlEmpresa
        DataField = 'NUMTELEFONE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 275
        Top = 63
        Width = 418
        Height = 17
        Size.Values = (
          44.979166666666670000
          727.604166666666700000
          166.687500000000000000
          1105.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlEmpresa
        DataField = 'FAX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 144
        Top = 87
        Width = 546
        Height = 17
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          230.187500000000000000
          1444.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlEmpresa
        DataField = 'EMAIL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 635
        Top = 6
        Width = 62
        Height = 19
        Size.Values = (
          50.270833333333330000
          1680.104166666667000000
          15.875000000000000000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Ficha:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRDBText10: TQRDBText
        Left = 703
        Top = 6
        Width = 50
        Height = 17
        Size.Values = (
          44.979166666666670000
          1860.020833333333000000
          15.875000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
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
      Top = 139
      Width = 756
      Height = 982
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2598.208333333333000000
        2000.250000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
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
        Top = 22
        Width = 738
        Height = 8
        Size.Values = (
          21.166666666666670000
          18.520833333333330000
          58.208333333333330000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule4: TQRHRule
        Left = 7
        Top = 64
        Width = 738
        Height = 7
        Size.Values = (
          18.520833333333330000
          18.520833333333330000
          169.333333333333300000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule6: TQRHRule
        Left = 7
        Top = 85
        Width = 738
        Height = 7
        Size.Values = (
          18.520833333333330000
          18.520833333333330000
          224.895833333333300000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule7: TQRHRule
        Left = 7
        Top = 105
        Width = 738
        Height = 7
        Size.Values = (
          18.520833333333330000
          18.520833333333330000
          277.812500000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule8: TQRHRule
        Left = 7
        Top = 125
        Width = 738
        Height = 7
        Size.Values = (
          18.520833333333330000
          18.520833333333330000
          330.729166666666700000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel21: TQRLabel
        Left = 11
        Top = 131
        Width = 199
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          346.604166666666700000
          526.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comprador/Respons'#225'vel:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 217
        Top = 132
        Width = 247
        Height = 16
        Size.Values = (
          42.333333333333330000
          574.145833333333300000
          349.250000000000000000
          653.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'COMPRADORRESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 11
        Top = 110
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          291.041666666666700000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'UF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 44
        Top = 111
        Width = 48
        Height = 16
        Size.Values = (
          42.333333333333330000
          116.416666666666700000
          293.687500000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOUROUF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 101
        Top = 110
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          291.041666666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 181
        Top = 111
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333330000
          478.895833333333300000
          293.687500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'NUMTELEFONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 287
        Top = 110
        Width = 74
        Height = 17
        Size.Values = (
          44.979166666666670000
          759.354166666666700000
          291.041666666666700000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Celular:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 367
        Top = 111
        Width = 97
        Height = 16
        Size.Values = (
          42.333333333333330000
          971.020833333333300000
          293.687500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'NUMCELULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
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
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          238.125000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 235
        Top = 90
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          621.770833333333300000
          238.125000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 275
        Top = 90
        Width = 97
        Height = 14
        Size.Values = (
          37.041666666666670000
          727.604166666666700000
          238.125000000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 80
        Top = 90
        Width = 150
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          238.125000000000000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOUROBAIRRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 381
        Top = 90
        Width = 65
        Height = 17
        Size.Values = (
          44.979166666666670000
          1008.062500000000000000
          238.125000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 446
        Top = 90
        Width = 291
        Height = 14
        Size.Values = (
          37.041666666666670000
          1180.041666666667000000
          238.125000000000000000
          769.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
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
        Top = 71
        Width = 153
        Height = 16
        Size.Values = (
          42.333333333333330000
          1545.166666666667000000
          187.854166666666700000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOUROCOMP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
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
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          1410.229166666667000000
          185.208333333333300000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comp:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 479
        Top = 71
        Width = 48
        Height = 16
        Size.Values = (
          42.333333333333330000
          1267.354166666667000000
          187.854166666666700000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOURONUM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier'
        Font.Style = []
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
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1177.395833333333000000
          185.208333333333300000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 98
        Top = 71
        Width = 341
        Height = 16
        Size.Values = (
          42.333333333333330000
          259.291666666666700000
          187.854166666666700000
          902.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'LOGRADOURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 70
        Width = 82
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          185.208333333333300000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 11
        Top = 48
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          127.000000000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Regi'#227'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 79
        Top = 48
        Width = 175
        Height = 17
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          127.000000000000000000
          463.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'REGIAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 260
        Top = 48
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          687.916666666666700000
          127.000000000000000000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Rota:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 308
        Top = 48
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          814.916666666666700000
          127.000000000000000000
          452.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'ROTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 484
        Top = 48
        Width = 56
        Height = 17
        Size.Values = (
          44.979166666666670000
          1280.583333333333000000
          127.000000000000000000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Setor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 540
        Top = 48
        Width = 197
        Height = 17
        Size.Values = (
          44.979166666666670000
          1428.750000000000000000
          127.000000000000000000
          521.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'ROTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 617
        Top = 28
        Width = 120
        Height = 14
        Size.Values = (
          37.041666666666670000
          1632.479166666667000000
          74.083333333333330000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'CPFCNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 525
        Top = 28
        Width = 83
        Height = 14
        Size.Values = (
          37.041666666666670000
          1389.062500000000000000
          74.083333333333330000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ/CPF:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 563
        Top = 8
        Width = 47
        Height = 17
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          21.166666666666670000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 617
        Top = 8
        Width = 120
        Height = 17
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          21.166666666666670000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'DTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 139
        Top = 8
        Width = 418
        Height = 17
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          21.166666666666670000
          1105.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'NOMEFANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 134
        Top = 28
        Width = 385
        Height = 14
        Size.Values = (
          37.041666666666670000
          354.541666666666700000
          74.083333333333330000
          1018.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 28
        Width = 118
        Height = 14
        Size.Values = (
          37.041666666666670000
          29.104166666666670000
          74.083333333333330000
          312.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Raz'#227'o social:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 11
        Top = 8
        Width = 128
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          21.166666666666670000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome fantasia:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule9: TQRHRule
        Left = 7
        Top = 42
        Width = 738
        Height = 8
        Size.Values = (
          21.166666666666670000
          18.520833333333330000
          111.125000000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRShape3: TQRShape
        Left = 7
        Top = 159
        Width = 738
        Height = 482
        Size.Values = (
          1275.291666666667000000
          18.520833333333330000
          420.687500000000000000
          1952.625000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 13
        Top = 166
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          34.395833333333330000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRHRule5: TQRHRule
        Left = 13
        Top = 191
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          505.354166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule10: TQRHRule
        Left = 13
        Top = 210
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          555.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule11: TQRHRule
        Left = 13
        Top = 228
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          603.250000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule12: TQRHRule
        Left = 13
        Top = 246
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          650.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule14: TQRHRule
        Left = 7
        Top = 271
        Width = 738
        Size.Values = (
          26.458333333333330000
          18.520833333333330000
          717.020833333333300000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRShape5: TQRShape
        Left = 13
        Top = 284
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          34.395833333333330000
          751.416666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRHRule20: TQRHRule
        Left = 7
        Top = 390
        Width = 738
        Size.Values = (
          26.458333333333330000
          18.520833333333330000
          1031.875000000000000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule21: TQRHRule
        Left = 7
        Top = 511
        Width = 738
        Size.Values = (
          26.458333333333330000
          18.520833333333330000
          1352.020833333333000000
          1952.625000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRShape6: TQRShape
        Left = 13
        Top = 404
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          34.395833333333330000
          1068.916666666667000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 13
        Top = 525
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          34.395833333333330000
          1389.062500000000000000
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
        Height = 104
        Size.Values = (
          275.166666666666700000
          521.229166666666700000
          439.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 381
        Top = 166
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1008.062500000000000000
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
        Height = 104
        Size.Values = (
          275.166666666666700000
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
        Top = 284
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          521.229166666666700000
          751.416666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 197
        Top = 404
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          521.229166666666700000
          1068.916666666667000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 381
        Top = 404
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1008.062500000000000000
          1068.916666666667000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 565
        Top = 404
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1494.895833333333000000
          1068.916666666667000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 197
        Top = 525
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          521.229166666666700000
          1389.062500000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 381
        Top = 525
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1008.062500000000000000
          1389.062500000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 565
        Top = 525
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1494.895833333333000000
          1389.062500000000000000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText23: TQRDBText
        Left = 17
        Top = 174
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          460.375000000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText24: TQRDBText
        Left = 202
        Top = 174
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          460.375000000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText25: TQRDBText
        Left = 385
        Top = 174
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          460.375000000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText26: TQRDBText
        Left = 569
        Top = 174
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          460.375000000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText27: TQRDBText
        Left = 17
        Top = 291
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          769.937500000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText28: TQRDBText
        Left = 202
        Top = 291
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          769.937500000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText31: TQRDBText
        Left = 17
        Top = 412
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          1090.083333333333000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText32: TQRDBText
        Left = 17
        Top = 533
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          1410.229166666667000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText33: TQRDBText
        Left = 202
        Top = 412
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          1090.083333333333000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText34: TQRDBText
        Left = 385
        Top = 412
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          1090.083333333333000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText35: TQRDBText
        Left = 569
        Top = 412
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1090.083333333333000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText36: TQRDBText
        Left = 202
        Top = 533
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          1410.229166666667000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText37: TQRDBText
        Left = 385
        Top = 533
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          1410.229166666667000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText38: TQRDBText
        Left = 569
        Top = 533
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          1410.229166666667000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel22: TQRLabel
        Left = 17
        Top = 198
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          523.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 17
        Top = 216
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          571.500000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 17
        Top = 234
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          619.125000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 17
        Top = 252
        Width = 75
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          666.750000000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 466
        Top = 132
        Width = 164
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          349.250000000000000000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desconto especial:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrdbDescEspe: TQRDBText
        Left = 637
        Top = 132
        Width = 100
        Height = 16
        Size.Values = (
          42.333333333333330000
          1685.395833333333000000
          349.250000000000000000
          264.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlCliente
        DataField = 'VLRDESCESPECIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRPShape1: TQRPShape
        Left = 94
        Top = 197
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          248.708333333333300000
          521.229166666666700000
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
        Left = 280
        Top = 197
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          740.833333333333300000
          521.229166666666700000
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
        Top = 191
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          505.354166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule37: TQRHRule
        Left = 197
        Top = 210
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          555.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule38: TQRHRule
        Left = 197
        Top = 228
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          603.250000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule39: TQRHRule
        Left = 197
        Top = 246
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          650.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel26: TQRLabel
        Left = 201
        Top = 198
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          523.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 201
        Top = 216
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          571.500000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 201
        Top = 234
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          619.125000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 201
        Top = 252
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          666.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule40: TQRHRule
        Left = 381
        Top = 191
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          505.354166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule41: TQRHRule
        Left = 381
        Top = 210
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          555.625000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule42: TQRHRule
        Left = 381
        Top = 228
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          603.250000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule43: TQRHRule
        Left = 381
        Top = 246
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          650.875000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel31: TQRLabel
        Left = 384
        Top = 198
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          523.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 384
        Top = 216
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          571.500000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 384
        Top = 234
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          619.125000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 384
        Top = 252
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          666.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule44: TQRHRule
        Left = 566
        Top = 191
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          505.354166666666700000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule45: TQRHRule
        Left = 566
        Top = 210
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          555.625000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule46: TQRHRule
        Left = 566
        Top = 228
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          603.250000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule47: TQRHRule
        Left = 566
        Top = 246
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          650.875000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel35: TQRLabel
        Left = 570
        Top = 198
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          523.875000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 570
        Top = 216
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          571.500000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 570
        Top = 234
        Width = 72
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          619.125000000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 570
        Top = 252
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1508.125000000000000000
          666.750000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape5: TQRPShape
        Left = 94
        Top = 316
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          248.708333333333300000
          836.083333333333300000
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
        Left = 13
        Top = 310
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          820.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule16: TQRHRule
        Left = 13
        Top = 329
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          870.479166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule17: TQRHRule
        Left = 13
        Top = 347
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          918.104166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule18: TQRHRule
        Left = 13
        Top = 365
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          965.729166666666700000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel39: TQRLabel
        Left = 17
        Top = 317
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          838.729166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 17
        Top = 335
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          886.354166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 17
        Top = 353
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          933.979166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 17
        Top = 371
        Width = 75
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          981.604166666666700000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape6: TQRPShape
        Left = 280
        Top = 315
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          740.833333333333300000
          833.437500000000000000
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
        Top = 310
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          820.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule48: TQRHRule
        Left = 197
        Top = 328
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          867.833333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule49: TQRHRule
        Left = 197
        Top = 346
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          915.458333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule50: TQRHRule
        Left = 197
        Top = 364
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          963.083333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel43: TQRLabel
        Left = 201
        Top = 316
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          836.083333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 201
        Top = 334
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          883.708333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 201
        Top = 352
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          931.333333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 201
        Top = 370
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          978.958333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 565
        Top = 284
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1494.895833333333000000
          751.416666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText30: TQRDBText
        Left = 569
        Top = 291
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1505.479166666667000000
          769.937500000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRHRule32: TQRHRule
        Left = 565
        Top = 310
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          820.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule52: TQRHRule
        Left = 566
        Top = 328
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          867.833333333333300000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule53: TQRHRule
        Left = 566
        Top = 346
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          915.458333333333300000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule54: TQRHRule
        Left = 566
        Top = 364
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          963.083333333333300000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel51: TQRLabel
        Left = 570
        Top = 316
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          836.083333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 570
        Top = 334
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          883.708333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 570
        Top = 352
        Width = 72
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          931.333333333333300000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 570
        Top = 370
        Width = 72
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          978.958333333333300000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape3: TQRPShape
        Left = 463
        Top = 197
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1225.020833333333000000
          521.229166666666700000
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
        Left = 94
        Top = 436
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          248.708333333333300000
          1153.583333333333000000
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
        Left = 13
        Top = 430
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1137.708333333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule27: TQRHRule
        Left = 13
        Top = 449
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1187.979166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule28: TQRHRule
        Left = 13
        Top = 467
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1235.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule29: TQRHRule
        Left = 13
        Top = 485
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1283.229166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel55: TQRLabel
        Left = 17
        Top = 437
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1156.229166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 17
        Top = 455
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1203.854166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 17
        Top = 473
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 17
        Top = 491
        Width = 75
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1299.104166666667000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape10: TQRPShape
        Left = 280
        Top = 436
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          740.833333333333300000
          1153.583333333333000000
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
        Top = 430
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1137.708333333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule35: TQRHRule
        Left = 197
        Top = 449
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1187.979166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule36: TQRHRule
        Left = 197
        Top = 467
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1235.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule55: TQRHRule
        Left = 197
        Top = 485
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1283.229166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel59: TQRLabel
        Left = 201
        Top = 437
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1156.229166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel60: TQRLabel
        Left = 201
        Top = 455
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1203.854166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 201
        Top = 473
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 201
        Top = 491
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1299.104166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape11: TQRPShape
        Left = 463
        Top = 436
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1225.020833333333000000
          1153.583333333333000000
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
        Left = 381
        Top = 430
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          1137.708333333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule57: TQRHRule
        Left = 381
        Top = 449
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          1187.979166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule58: TQRHRule
        Left = 381
        Top = 467
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          1235.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule59: TQRHRule
        Left = 381
        Top = 485
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          1283.229166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel63: TQRLabel
        Left = 384
        Top = 437
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          1156.229166666667000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel64: TQRLabel
        Left = 385
        Top = 455
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1018.645833333333000000
          1203.854166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel65: TQRLabel
        Left = 385
        Top = 473
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1018.645833333333000000
          1251.479166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 385
        Top = 491
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1018.645833333333000000
          1299.104166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule60: TQRHRule
        Left = 565
        Top = 430
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          1137.708333333333000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule61: TQRHRule
        Left = 565
        Top = 449
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          1187.979166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule62: TQRHRule
        Left = 565
        Top = 467
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          1235.604166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule63: TQRHRule
        Left = 565
        Top = 485
        Width = 174
        Size.Values = (
          26.458333333333330000
          1494.895833333333000000
          1283.229166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel67: TQRLabel
        Left = 569
        Top = 437
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1505.479166666667000000
          1156.229166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel68: TQRLabel
        Left = 569
        Top = 455
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1505.479166666667000000
          1203.854166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel69: TQRLabel
        Left = 569
        Top = 473
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1505.479166666667000000
          1251.479166666667000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 569
        Top = 491
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1505.479166666667000000
          1299.104166666667000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape13: TQRPShape
        Left = 94
        Top = 557
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          248.708333333333300000
          1473.729166666667000000
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
        Left = 13
        Top = 551
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1457.854166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule65: TQRHRule
        Left = 13
        Top = 570
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1508.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule66: TQRHRule
        Left = 13
        Top = 588
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1555.750000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule67: TQRHRule
        Left = 13
        Top = 606
        Width = 174
        Size.Values = (
          26.458333333333330000
          34.395833333333330000
          1603.375000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel71: TQRLabel
        Left = 17
        Top = 558
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1476.375000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel72: TQRLabel
        Left = 17
        Top = 576
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1524.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 17
        Top = 594
        Width = 49
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1571.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel74: TQRLabel
        Left = 17
        Top = 612
        Width = 65
        Height = 16
        Size.Values = (
          42.333333333333330000
          44.979166666666670000
          1619.250000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape14: TQRPShape
        Left = 280
        Top = 557
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          740.833333333333300000
          1473.729166666667000000
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
        Top = 551
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1457.854166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule69: TQRHRule
        Left = 197
        Top = 570
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1508.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule70: TQRHRule
        Left = 197
        Top = 588
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1555.750000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule71: TQRHRule
        Left = 197
        Top = 606
        Width = 174
        Size.Values = (
          26.458333333333330000
          521.229166666666700000
          1603.375000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel75: TQRLabel
        Left = 201
        Top = 558
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1476.375000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 201
        Top = 576
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1524.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel77: TQRLabel
        Left = 201
        Top = 594
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1571.625000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel78: TQRLabel
        Left = 201
        Top = 612
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          531.812500000000000000
          1619.250000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule72: TQRHRule
        Left = 380
        Top = 551
        Width = 174
        Size.Values = (
          26.458333333333330000
          1005.416666666667000000
          1457.854166666667000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule77: TQRHRule
        Left = 380
        Top = 570
        Width = 174
        Size.Values = (
          26.458333333333330000
          1005.416666666667000000
          1508.125000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule78: TQRHRule
        Left = 380
        Top = 588
        Width = 174
        Size.Values = (
          26.458333333333330000
          1005.416666666667000000
          1555.750000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule79: TQRHRule
        Left = 380
        Top = 606
        Width = 174
        Size.Values = (
          26.458333333333330000
          1005.416666666667000000
          1603.375000000000000000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel83: TQRLabel
        Left = 384
        Top = 558
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          1476.375000000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel84: TQRLabel
        Left = 384
        Top = 576
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          1524.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel85: TQRLabel
        Left = 384
        Top = 594
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          1571.625000000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 384
        Top = 612
        Width = 74
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          1619.250000000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRHRule80: TQRHRule
        Left = 566
        Top = 551
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          1457.854166666667000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule81: TQRHRule
        Left = 566
        Top = 570
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          1508.125000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule82: TQRHRule
        Left = 566
        Top = 588
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          1555.750000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule83: TQRHRule
        Left = 566
        Top = 606
        Width = 173
        Size.Values = (
          26.458333333333330000
          1497.541666666667000000
          1603.375000000000000000
          457.729166666666700000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRLabel87: TQRLabel
        Left = 570
        Top = 558
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          1476.375000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 570
        Top = 576
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          1524.000000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel89: TQRLabel
        Left = 570
        Top = 594
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          1571.625000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel90: TQRLabel
        Left = 570
        Top = 612
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1508.125000000000000000
          1619.250000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRPShape18: TQRPShape
        Left = 648
        Top = 195
        Width = 1
        Height = 75
        Size.Values = (
          198.437500000000000000
          1714.500000000000000000
          515.937500000000000000
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
        Left = 648
        Top = 315
        Width = 1
        Height = 73
        Size.Values = (
          193.145833333333300000
          1714.500000000000000000
          833.437500000000000000
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
        Left = 648
        Top = 436
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1714.500000000000000000
          1153.583333333333000000
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
        Left = 648
        Top = 557
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1714.500000000000000000
          1473.729166666667000000
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
        Left = 463
        Top = 557
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1225.020833333333000000
          1473.729166666667000000
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
        Left = 381
        Top = 284
        Width = 174
        Height = 104
        Size.Values = (
          275.166666666666700000
          1008.062500000000000000
          751.416666666666700000
          460.375000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPShape15: TQRPShape
        Left = 463
        Top = 315
        Width = 1
        Height = 72
        Size.Values = (
          190.500000000000000000
          1225.020833333333000000
          833.437500000000000000
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
        Left = 381
        Top = 310
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          820.208333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule33: TQRHRule
        Left = 381
        Top = 328
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          867.833333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule34: TQRHRule
        Left = 381
        Top = 346
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          915.458333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRHRule51: TQRHRule
        Left = 381
        Top = 364
        Width = 174
        Size.Values = (
          26.458333333333330000
          1008.062500000000000000
          963.083333333333300000
          460.375000000000000000)
        XLColumn = 0
        VertAdjust = 0
        Pen.Style = psDot
      end
      object QRDBText29: TQRDBText
        Left = 385
        Top = 291
        Width = 166
        Height = 17
        Size.Values = (
          44.979166666666670000
          1018.645833333333000000
          769.937500000000000000
          439.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel47: TQRLabel
        Left = 384
        Top = 316
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          836.083333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 384
        Top = 334
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          883.708333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Contagem:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 384
        Top = 352
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          931.333333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Venda:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 384
        Top = 370
        Width = 73
        Height = 16
        Size.Values = (
          42.333333333333330000
          1016.000000000000000000
          978.958333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'A Pagar:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 407
        Top = 647
        Width = 148
        Height = 17
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          1711.854166666667000000
          391.583333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total '#224' pagar:'
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
      object QRDBText39: TQRDBText
        Left = 566
        Top = 647
        Width = 179
        Height = 17
        Size.Values = (
          44.979166666666670000
          1497.541666666667000000
          1711.854166666667000000
          473.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRTOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText41: TQRDBText
        Left = 97
        Top = 198
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          523.875000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText42: TQRDBText
        Left = 97
        Top = 216
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          571.500000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText43: TQRDBText
        Left = 97
        Top = 234
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          619.125000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText44: TQRDBText
        Left = 97
        Top = 252
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          666.750000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText45: TQRDBText
        Left = 283
        Top = 198
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          523.875000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText46: TQRDBText
        Left = 283
        Top = 216
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          571.500000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText47: TQRDBText
        Left = 283
        Top = 234
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          619.125000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText48: TQRDBText
        Left = 283
        Top = 252
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          666.750000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText49: TQRDBText
        Left = 466
        Top = 198
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          523.875000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText50: TQRDBText
        Left = 466
        Top = 216
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          571.500000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText51: TQRDBText
        Left = 466
        Top = 234
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          619.125000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText52: TQRDBText
        Left = 466
        Top = 252
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          666.750000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText53: TQRDBText
        Left = 651
        Top = 198
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          523.875000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText54: TQRDBText
        Left = 651
        Top = 216
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          571.500000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText55: TQRDBText
        Left = 651
        Top = 234
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          619.125000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText56: TQRDBText
        Left = 651
        Top = 252
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          666.750000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText57: TQRDBText
        Left = 97
        Top = 317
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          838.729166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText58: TQRDBText
        Left = 97
        Top = 335
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          886.354166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText59: TQRDBText
        Left = 97
        Top = 353
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          933.979166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText60: TQRDBText
        Left = 97
        Top = 371
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          981.604166666666700000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText65: TQRDBText
        Left = 466
        Top = 316
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          836.083333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText66: TQRDBText
        Left = 466
        Top = 334
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          883.708333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText67: TQRDBText
        Left = 466
        Top = 352
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          931.333333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText68: TQRDBText
        Left = 466
        Top = 370
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          978.958333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText69: TQRDBText
        Left = 651
        Top = 316
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          836.083333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText70: TQRDBText
        Left = 651
        Top = 334
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          883.708333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText71: TQRDBText
        Left = 651
        Top = 352
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          931.333333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText72: TQRDBText
        Left = 651
        Top = 370
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          978.958333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText73: TQRDBText
        Left = 97
        Top = 437
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1156.229166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText74: TQRDBText
        Left = 97
        Top = 455
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1203.854166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText75: TQRDBText
        Left = 97
        Top = 473
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1251.479166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText76: TQRDBText
        Left = 97
        Top = 491
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1299.104166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText77: TQRDBText
        Left = 283
        Top = 437
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1156.229166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText78: TQRDBText
        Left = 283
        Top = 455
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1203.854166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText79: TQRDBText
        Left = 283
        Top = 473
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1251.479166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText80: TQRDBText
        Left = 283
        Top = 491
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1299.104166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText81: TQRDBText
        Left = 466
        Top = 437
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1156.229166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText82: TQRDBText
        Left = 466
        Top = 455
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1203.854166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText83: TQRDBText
        Left = 466
        Top = 473
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1251.479166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText84: TQRDBText
        Left = 466
        Top = 491
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1299.104166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText85: TQRDBText
        Left = 651
        Top = 437
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1156.229166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText86: TQRDBText
        Left = 651
        Top = 455
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1203.854166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText87: TQRDBText
        Left = 651
        Top = 473
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1251.479166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText88: TQRDBText
        Left = 651
        Top = 491
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1299.104166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText89: TQRDBText
        Left = 97
        Top = 558
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1476.375000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText90: TQRDBText
        Left = 97
        Top = 576
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1524.000000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText91: TQRDBText
        Left = 97
        Top = 594
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1571.625000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText92: TQRDBText
        Left = 97
        Top = 612
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          1619.250000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText93: TQRDBText
        Left = 283
        Top = 558
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1476.375000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText94: TQRDBText
        Left = 283
        Top = 576
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1524.000000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText95: TQRDBText
        Left = 283
        Top = 594
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1571.625000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText96: TQRDBText
        Left = 283
        Top = 612
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          748.770833333333300000
          1619.250000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText97: TQRDBText
        Left = 466
        Top = 558
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1476.375000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText98: TQRDBText
        Left = 466
        Top = 576
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1524.000000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText99: TQRDBText
        Left = 466
        Top = 594
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1571.625000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText100: TQRDBText
        Left = 466
        Top = 612
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1232.958333333333000000
          1619.250000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText101: TQRDBText
        Left = 651
        Top = 558
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1476.375000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDESTOQUE16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText102: TQRDBText
        Left = 651
        Top = 576
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1524.000000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'CONTAGEM16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText103: TQRDBText
        Left = 651
        Top = 594
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1571.625000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'QTDVENDA16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText104: TQRDBText
        Left = 651
        Top = 612
        Width = 83
        Height = 16
        Size.Values = (
          42.333333333333330000
          1722.437500000000000000
          1619.250000000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'VLRVENDA16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Mask = 'R$ #,,0.00'
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRPShape17: TQRPShape
        Left = 7
        Top = 696
        Width = 738
        Height = 182
        Size.Values = (
          481.541666666666700000
          18.520833333333330000
          1841.500000000000000000
          1952.625000000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrpsRectangle
        VertAdjust = 0
        FixBottomPosition = False
        StretchHeightWithBand = False
      end
      object QRPGrid2: TQRPGrid
        Left = 9
        Top = 697
        Width = 735
        Height = 180
        Size.Values = (
          476.250000000000000000
          23.812500000000000000
          1844.145833333333000000
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
        Top = 699
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1849.437500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
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
      object QRLabel82: TQRLabel
        Left = 103
        Top = 699
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          272.520833333333300000
          1849.437500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QUANT.'
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
      object QRLabel91: TQRLabel
        Left = 196
        Top = 699
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          1849.437500000000000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VR.UNIT.'
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
      object QRLabel92: TQRLabel
        Left = 287
        Top = 699
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          759.354166666666700000
          1849.437500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL'
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
      object QRLabel93: TQRLabel
        Left = 377
        Top = 699
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          1849.437500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'V.CAPA'
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
      object QRLabel94: TQRLabel
        Left = 472
        Top = 699
        Width = 79
        Height = 17
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          1849.437500000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'QUANT.'
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
      object QRLabel95: TQRLabel
        Left = 561
        Top = 699
        Width = 77
        Height = 17
        Size.Values = (
          44.979166666666670000
          1484.312500000000000000
          1849.437500000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VR.UNIT.'
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
      object QRLabel96: TQRLabel
        Left = 653
        Top = 699
        Width = 85
        Height = 17
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          1849.437500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL'
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
      object QRLabel80: TQRLabel
        Left = 231
        Top = 674
        Width = 261
        Height = 17
        Size.Values = (
          44.979166666666670000
          611.187500000000000000
          1783.291666666667000000
          690.562500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Estoque atual consignado'
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
      object QRDBText137: TQRDBText
        Left = 11
        Top = 719
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1902.354166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText105: TQRDBText
        Left = 11
        Top = 739
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          1955.270833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText106: TQRDBText
        Left = 11
        Top = 759
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2008.187500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText107: TQRDBText
        Left = 11
        Top = 779
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2061.104166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText108: TQRDBText
        Left = 11
        Top = 799
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2114.020833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText109: TQRDBText
        Left = 11
        Top = 819
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2166.937500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText110: TQRDBText
        Left = 11
        Top = 839
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2219.854166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText111: TQRDBText
        Left = 11
        Top = 859
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          2272.770833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME8'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText112: TQRDBText
        Left = 377
        Top = 719
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          1902.354166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText113: TQRDBText
        Left = 377
        Top = 739
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          1955.270833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText114: TQRDBText
        Left = 377
        Top = 759
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2008.187500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME11'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText115: TQRDBText
        Left = 377
        Top = 778
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2058.458333333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText116: TQRDBText
        Left = 377
        Top = 799
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2114.020833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText117: TQRDBText
        Left = 377
        Top = 819
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2166.937500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME14'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText118: TQRDBText
        Left = 377
        Top = 839
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2219.854166666667000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRDBText119: TQRDBText
        Left = 377
        Top = 859
        Width = 86
        Height = 17
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          2272.770833333333000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sqlProdutos
        DataField = 'NOME16'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 12
      end
      object QRLabel97: TQRLabel
        Left = 310
        Top = 954
        Width = 114
        Height = 17
        Size.Values = (
          44.979166666666670000
          820.208333333333300000
          2524.125000000000000000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Assinatura:'
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
      object QRShape12: TQRShape
        Left = 57
        Top = 952
        Width = 651
        Height = 1
        Size.Values = (
          2.645833333333333000
          150.812500000000000000
          2518.833333333333000000
          1722.437500000000000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel98: TQRLabel
        Left = 55
        Top = 896
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          145.520833333333300000
          2370.666666666667000000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Data:'
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
      object QRLabel99: TQRLabel
        Left = 120
        Top = 896
        Width = 137
        Height = 17
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          2370.666666666667000000
          362.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '___/___/______'
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
      object QRLabel100: TQRLabel
        Left = 290
        Top = 896
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          767.291666666666700000
          2370.666666666667000000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Total:'
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
      object QRLabel101: TQRLabel
        Left = 355
        Top = 896
        Width = 202
        Height = 17
        Size.Values = (
          44.979166666666670000
          939.270833333333300000
          2370.666666666667000000
          534.458333333333300000)
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
    end
  end
  object QRDBText61: TQRDBText
    Left = 301
    Top = 456
    Width = 83
    Height = 16
    Size.Values = (
      42.333333333333330000
      796.395833333333300000
      1206.500000000000000000
      219.604166666666700000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = False
    Color = clWhite
    DataSet = sqlProdutos
    DataField = 'QTDESTOQUE6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 10
  end
  object QRDBText62: TQRDBText
    Left = 301
    Top = 474
    Width = 83
    Height = 16
    Size.Values = (
      42.333333333333330000
      796.395833333333300000
      1254.125000000000000000
      219.604166666666700000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = False
    Color = clWhite
    DataSet = sqlProdutos
    DataField = 'CONTAGEM6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 10
  end
  object QRDBText63: TQRDBText
    Left = 301
    Top = 492
    Width = 83
    Height = 16
    Size.Values = (
      42.333333333333330000
      796.395833333333300000
      1301.750000000000000000
      219.604166666666700000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = False
    Color = clWhite
    DataSet = sqlProdutos
    DataField = 'QTDVENDA6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 10
  end
  object QRDBText64: TQRDBText
    Left = 301
    Top = 510
    Width = 83
    Height = 16
    Size.Values = (
      42.333333333333330000
      796.395833333333300000
      1349.375000000000000000
      219.604166666666700000)
    XLColumn = 0
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = False
    Color = clWhite
    DataSet = sqlProdutos
    DataField = 'VLRVENDA6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = []
    Mask = 'R$ #,,0.00'
    ParentFont = False
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 10
  end
  object sqlEmpresa: TSQLQuery
    Params = <>
    Left = 120
    Top = 715
  end
  object sqlCliente: TSQLQuery
    Params = <>
    Left = 64
    Top = 715
  end
  object sqlProdutos: TSQLQuery
    Params = <>
    Left = 197
    Top = 715
  end
  object SqlAux: TSQLQuery
    Params = <>
    Left = 32
    Top = 24
  end
end
