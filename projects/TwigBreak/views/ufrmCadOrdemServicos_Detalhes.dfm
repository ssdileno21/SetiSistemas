object frmOrdemServicos_Detalhes: TfrmOrdemServicos_Detalhes
  Left = 0
  Top = 0
  Caption = 'Ordem Servi'#231'os - Detalhes'
  ClientHeight = 629
  ClientWidth = 907
  Color = clWindow
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
  object Panel8: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 901
    Height = 387
    Align = alTop
    TabOrder = 0
    object Panel9: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 34
      Width = 893
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object sbDel: TSpeedButton
        AlignWithMargins = True
        Left = 199
        Top = 3
        Width = 25
        Height = 21
        Align = alLeft
        Enabled = False
        Flat = True
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
        OnClick = sbDelClick
        ExplicitLeft = 3
      end
      object sbIncluir: TSpeedButton
        AlignWithMargins = True
        Left = 168
        Top = 3
        Width = 25
        Height = 21
        Align = alLeft
        Enabled = False
        Flat = True
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
        OnClick = sbIncluirClick
        ExplicitLeft = 687
        ExplicitTop = 6
      end
      object lbAvisoModo: TLabel
        AlignWithMargins = True
        Left = 718
        Top = 3
        Width = 172
        Height = 21
        Align = alRight
        Caption = 'Modo de pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        ExplicitHeight = 23
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 22
        Height = 21
        Align = alLeft
        Caption = 'OS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 16
      end
      object edtOs: TEdit
        Tag = 99
        AlignWithMargins = True
        Left = 31
        Top = 3
        Width = 121
        Height = 21
        Align = alLeft
        Color = clInfoBk
        Enabled = False
        TabOrder = 0
        Text = 'edtOs'
        ExplicitHeight = 24
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 158
        Top = 3
        Width = 4
        Height = 21
        Align = alLeft
        Color = clBlack
        Enabled = False
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 893
      Height = 24
      Align = alTop
      Caption = 'Descri'#231#227'o do servi'#231'o'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 67
      Width = 893
      Height = 316
      Align = alClient
      TabOrder = 2
      DesignSize = (
        893
        316)
      object Label7: TLabel
        Left = 4
        Top = 1
        Width = 82
        Height = 13
        Caption = 'Aparelho - Marca'
      end
      object Label10: TLabel
        Left = 4
        Top = 45
        Width = 87
        Height = 13
        Caption = 'Aparelho - Modelo'
      end
      object Label2: TLabel
        Left = 4
        Top = 87
        Width = 35
        Height = 13
        Caption = 'Defeito'
      end
      object Label1: TLabel
        Left = 4
        Top = 172
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object Label3: TLabel
        Left = 4
        Top = 128
        Width = 36
        Height = 13
        Caption = 'T'#233'cnico'
      end
      object sbProdutosMarcas: TSpeedButton
        Tag = 99
        Left = 864
        Top = 241
        Width = 23
        Height = 21
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666666666666666666666666666000060000066666000006668
          8888666668888866000060800066666080006668788866666878886600006080
          00666660800066687888666668788866000060000000F00000006668888888F8
          8888886600006080000000800000666878888888788888660000608000006080
          0000666878888868788888660000608000006080000066687888886878888866
          0000660000000000000666668888888888888666000066608000F08000666666
          687888F878886666000066600000600000666666688888688888666600006666
          00066600066666666688866688866666000066668F06668F06666666668F8666
          8F86666600006666000666000666666666888666888666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        Visible = False
        OnClick = sbProdutosMarcasClick
      end
      object sbGravar: TSpeedButton
        AlignWithMargins = True
        Left = 738
        Top = 270
        Width = 70
        Height = 25
        Caption = 'Gravar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666600000000
          0000066666688888888888880000666044074477704406666688887FF7778888
          0000666044074477704406666688887FF7778888000066604407447770440666
          6688887FF7778888000060004447777774440668888888777777888800000440
          4444444444440688888888888888888800000440440000000044068888888888
          888888880000044040FFFFFFFF04068888888FFFFFFFF8880000044040FFFFFF
          FF04068888888FFFFFFFF8880000044040F888888F04068888888F888888F888
          0000044040FFFFFFFF04068888888FFFFFFFF8880000040070F888888F000688
          8F878F888888F8880000040040FFFFFFFF0406888F888FFFFFFFF88800000400
          00000000000006888F888888888888880000040FFFFFFFF0406666888FFFFFFF
          F88866660000070F888888F0006666878F888888F88866660000040FFFFFFFF0
          C06666888FFFFFFFF88866660000000000000000006666888888888888886666
          0000}
        NumGlyphs = 2
        ParentFont = False
        OnClick = sbGravarClick
      end
      object sbCancelar: TSpeedButton
        AlignWithMargins = True
        Left = 813
        Top = 270
        Width = 69
        Height = 25
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666666666661F66666666666666668F66000066661F66666666666666
          668F6666666666660000666111F6666661F666666888F6666668F66600006661
          11F666661F6666666888F666668F666600006666111F66611F66666666888F66
          688F6666000066666111F611F6666666666888F688F66666000066666611111F
          66666666666688888F66666600006666666111F66666666666666888F6666666
          000066666611111F66666666666688888F666666000066666111F61F66666666
          666888F68F66666600006661111F66611F66666668888F66688F666600006611
          11F6666611F666668888F6666688F66600006611F6666666611F666688F66666
          66688F6600006666666666666666666666666666666666660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        ParentFont = False
        OnClick = sbCancelarClick
      end
      object Label4: TLabel
        Left = 4
        Top = 249
        Width = 80
        Height = 13
        Caption = 'Valor do servi'#231'o:'
      end
      object edtCodProdutoMarca: TEdit
        Left = 4
        Top = 18
        Width = 67
        Height = 21
        Enabled = False
        TabOrder = 0
        OnExit = edtCodProdutoMarcaExit
      end
      object edtCodProdutoModelo: TEdit
        Left = 4
        Top = 62
        Width = 67
        Height = 21
        Enabled = False
        TabOrder = 1
        OnExit = edtCodProdutoModeloExit
      end
      object edtCodProdutoDefeito: TEdit
        Left = 4
        Top = 104
        Width = 67
        Height = 21
        Enabled = False
        TabOrder = 2
        OnExit = edtCodProdutoDefeitoExit
      end
      object mObservacao: TMemo
        Left = 4
        Top = 189
        Width = 883
        Height = 50
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 4
      end
      object edtProdutoMarca: TEdit
        AlignWithMargins = True
        Left = 75
        Top = 18
        Width = 812
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 6
      end
      object edtProdutoModelo: TEdit
        AlignWithMargins = True
        Left = 75
        Top = 62
        Width = 812
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 7
      end
      object edtProdutoDefeito: TEdit
        AlignWithMargins = True
        Left = 75
        Top = 104
        Width = 812
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 8
      end
      object edtCodTecnico: TEdit
        Left = 4
        Top = 145
        Width = 67
        Height = 21
        Enabled = False
        TabOrder = 3
        OnExit = edtCodTecnicoExit
      end
      object edtTecnico: TEdit
        AlignWithMargins = True
        Left = 75
        Top = 145
        Width = 812
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clInfoBk
        Enabled = False
        TabOrder = 9
      end
      object edtVlrServico: TEdit
        Left = 4
        Top = 268
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 5
        OnKeyPress = edtVlrServicoKeyPress
      end
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 396
    Width = 901
    Height = 230
    Align = alClient
    DataSource = dsItens
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object sqlItens: TSQLQuery
    Params = <>
    Left = 136
    Top = 432
  end
  object dspItens: TDataSetProvider
    DataSet = sqlItens
    Left = 176
    Top = 472
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItens'
    Left = 216
    Top = 512
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 256
    Top = 552
  end
  object SetiSqlStoredProc: TSQLStoredProc
    Params = <>
    Left = 616
    Top = 472
  end
end