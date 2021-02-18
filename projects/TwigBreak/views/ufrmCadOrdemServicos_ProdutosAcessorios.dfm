object frmCadOrdemServicos_ProdutosAcessorios: TfrmCadOrdemServicos_ProdutosAcessorios
  Left = 0
  Top = 0
  Caption = 'Ordem Servi'#231'os - Produtos/Acess'#243'rios'
  ClientHeight = 495
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 659
    Height = 230
    Align = alTop
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 77
      Width = 26
      Height = 16
      Caption = 'C'#243'd.'
    end
    object Label2: TLabel
      Left = 137
      Top = 77
      Width = 55
      Height = 16
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 262
      Top = 125
      Width = 65
      Height = 16
      Caption = 'Quantidade'
    end
    object Label5: TLabel
      Left = 7
      Top = 47
      Width = 22
      Height = 16
      Caption = 'OS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 389
      Top = 125
      Width = 47
      Height = 16
      Caption = 'Vlr.Final'
    end
    object Label3: TLabel
      Left = 135
      Top = 125
      Width = 56
      Height = 16
      Caption = 'Vlr.Venda'
    end
    object Label7: TLabel
      Left = 6
      Top = 125
      Width = 45
      Height = 16
      Caption = 'Estoque'
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 651
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 6
      object sbIncluirItem: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 101
        Height = 27
        Align = alLeft
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000066666666FFF666666666
          666666FFF666666600006666666844F66666666666666888F666666600006666
          666844F66666666666666888F666666600006666666844F66666666666666888
          F666666600006666FFF644FFFFF6666666FFF888FFFFF6660000666844444444
          44F66666688888888888F666000066684444444444F66666688888888888F666
          000066688888446888666666688888888888666600006666666844F666666666
          66666888F666666600006666666844F66666666666666888F666666600006666
          666844F66666666666666888F666666600006666666888666666666666666888
          6666666600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbIncluirItemClick
        ExplicitLeft = 11
      end
      object sbDelItem: TSpeedButton
        AlignWithMargins = True
        Left = 110
        Top = 3
        Width = 98
        Height = 27
        Align = alLeft
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000066666666666666666666
          6666666666666666000066666666666666666666666666666666666600006666
          6666666666666666666666666666666600006666666666666666666666666666
          6666666600006666FFFFFFFFFFF6666666FFFFFFFFFFF6660000666800000000
          00F66666687777777777F666000066680000000000F66666687777777777F666
          0000666888888888886666666888888888886666000066666666666666666666
          6666666666666666000066666666666666666666666666666666666600006666
          6666666666666666666666666666666600006666666666666666666666666666
          6666666600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbDelItemClick
        ExplicitLeft = 118
      end
      object lbAvisoModo: TLabel
        Left = 462
        Top = 2
        Width = 172
        Height = 23
        Caption = 'Modo de pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 193
      Width = 651
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      object sbGravarItem: TSpeedButton
        AlignWithMargins = True
        Left = 443
        Top = 3
        Width = 101
        Height = 27
        Align = alRight
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666000000000000066666888888888888866000066044074477704406666
          88887FF77788886600006604407447770440666688887FF77788886600006604
          407447770440666688887FF77788886600006604447777774440666688887777
          7788886600006604444444444440666688888888888888660000660440000000
          044066668888888888888866000066040FFFFFFFF0406666888FFFFFFFF88866
          000066040FFFFFFFF0406666888FFFFFFFF88866000066040F888888F0406666
          888F888888F88866000066040FFFFFFFF0406666888FFFFFFFF8886600006607
          0F888888F0006666878F888888F88866000066040FFFFFFFF0406666888FFFFF
          FFF8886600006600000000000000666688888888888888660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbGravarItemClick
        ExplicitTop = 2
      end
      object sbCancelar: TSpeedButton
        AlignWithMargins = True
        Left = 550
        Top = 3
        Width = 98
        Height = 27
        Align = alRight
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666668666666666666666666666666666666
          0000666608866666666666666686666666666666000066691086666688666666
          6888666666666666000066691088666008866666688866666886666600006669
          1108869110866666688886668888666600006666911089111066666666888868
          8888666600006666911191110666666666888888888666660000666669111110
          6666666666688888886666660000666666911108866666666666888886666666
          0000666666911110866666666666888888666666000066666911011088666666
          6668888888666666000066666910691108866666666888688886666600006666
          9106669110886666668886668888666600006666910666691108666666888666
          6888866600006666696666669106666666686666668886660000666666666666
          6966666666666666666866660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbCancelarClick
        ExplicitTop = 2
      end
    end
    object edtNomeProduto: TEdit
      Left = 135
      Top = 94
      Width = 515
      Height = 24
      Color = clInfoBk
      Enabled = False
      TabOrder = 2
    end
    object edtOs: TEdit
      Left = 35
      Top = 43
      Width = 123
      Height = 24
      Color = clInfoBk
      Enabled = False
      TabOrder = 0
    end
    object edtCodProduto: TEdit
      Left = 6
      Top = 94
      Width = 123
      Height = 24
      TabOrder = 1
      OnChange = edtCodProdutoChange
      OnExit = edtCodProdutoExit
      OnKeyPress = edtCodProdutoKeyPress
    end
    object edtQtdProduto: TEdit
      Left = 262
      Top = 144
      Width = 121
      Height = 24
      TabOrder = 4
      OnExit = edtQtdProdutoExit
      OnKeyPress = edtQtdProdutoKeyPress
    end
    object edtVlrFinal: TEdit
      Left = 389
      Top = 144
      Width = 121
      Height = 24
      Color = clInfoBk
      Enabled = False
      TabOrder = 5
    end
    object edtVlrVenda: TEdit
      Left = 135
      Top = 144
      Width = 121
      Height = 24
      Color = clInfoBk
      Enabled = False
      TabOrder = 3
    end
    object edtEstoque: TEdit
      Left = 6
      Top = 144
      Width = 123
      Height = 24
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 236
    Width = 665
    Height = 259
    Align = alClient
    TabOrder = 1
    object dbgProdutos: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 657
      Height = 251
      Align = alClient
      DataSource = dsItens
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgProdutosCellClick
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 240
    Top = 416
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 200
    Top = 376
  end
  object dspItens: TDataSetProvider
    DataSet = sqlItens
    Left = 160
    Top = 336
  end
  object sqlItens: TSQLQuery
    Params = <>
    Left = 120
    Top = 296
  end
  object SetiSqlStoredProc: TSQLStoredProc
    Params = <>
    Left = 520
    Top = 272
  end
end
