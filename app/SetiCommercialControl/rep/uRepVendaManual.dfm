object RepVendaManual: TRepVendaManual
  Tag = 2
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de vendas manuais'
  ClientHeight = 363
  ClientWidth = 551
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 363
    Align = alClient
    AutoSize = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object sbGerarRelatorio: TSpeedButton
      Left = 295
      Top = 269
      Width = 242
      Height = 22
      Caption = 'Gerar relat'#243'rio'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777FFFFFFFFFFF000077777700000000000777777788888888888F
        00007777778777777777077777778F777777778F00007777778FFFFFFFF70777
        77778F7FFFFFF78F00007777718F777777F707777778FF888888778F00007777
        711FFFFFFFF7077777F88F7FFFFFF78F000077711111777777F70777F8888888
        8888778F00007887711FFFFFFFF7077787788F7FFFFFF78F00007177718F7777
        77F70778F7788F888888778F00007177778FFFFFFFF70778F7778F7FFFFFF78F
        00007177778F777777F70778F7778F888888778F00007887778FFFFFFFF70778
        7F778F7FFFF7778F00007717778F7777FFF7077787F78F888877FF8F00007771
        778FFFFFF000077778778F777778888700007777778FFFFFF7F8777777778F77
        7778F87700007777778FFFFFF787777777778FFFFFF887770000777777888888
        8877777777778888888877770000777777777777777777777777777777777777
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbGerarRelatorioClick
    end
    object sbClear: TSpeedButton
      Left = 415
      Top = 326
      Width = 122
      Height = 22
      Caption = 'Limpar filtro'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        00006FF6FF6666666666666666666666666666660000FFFFFFFF666666666666
        66666666666666660000FFFFFF8111666666666666666888666666660000FFFF
        F89111166666666666668888866666660000FFFFF91911116666666666688888
        886666660000FF6F619991110666666666687888888666660000F66669191910
        8066666666688788888866660000666666919103780666666666887888788666
        00006666666910BB3780666666666888778788660000666666663BF7B3780666
        66666687F778788600006666666663BF7B303066666666687F77888800006666
        6666663BFB0333666666666687F788880000666666666663B37B336666666666
        68787788000066666666666637BBB36666666666668777780000666666666666
        63FBBB66666666666668F7770000666666666666663FBB666666666666668F77
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbClearClick
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 521
      Height = 65
      Caption = 'Filtrar regi'#227'o'
      TabOrder = 0
      DesignSize = (
        521
        65)
      object sbRegiao: TSpeedButton
        Left = 473
        Top = 24
        Width = 27
        Height = 24
        Anchors = [akTop, akRight]
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0066666666FFFF
          FFFFFF666666666666666666000066666666FBFBFBFBFB666666666666666666
          000066666666FFFFFFFFFF666666666666666666000066666666FBFBFBFBFB66
          66666666666666660000666666698FFFFFFFFF66666668866666666600006666
          669118FBFBFBFB666666888866666666000066666691518FFFFFFF6666668888
          866666660000666666911518FBFBFB666666888888666666000066666F811191
          8FFFFF666668888878866666000066666F77199918FBFB666668778777886666
          00006666F77FF9999166666666877FF7777866660000666F77FFFF1116666666
          6877FFFF88866666000066F77FFF886666666666877FFF886666666600006F77
          FFF866666666666877FFF866666666660000F77FFF896666666666877FFF8866
          66666666000087FFF896666666666687FFF8866666666666000068FF86666666
          66666668FF866666666666660000668866666666666666668866666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbRegiaoClick
      end
      object edtCodRegiao: TEdit
        Left = 10
        Top = 24
        Width = 63
        Height = 24
        TabOrder = 0
        OnChange = edtCodRegiaoChange
        OnKeyPress = edtCodRegiaoKeyPress
      end
      object edtRegiaoDesc: TEdit
        Left = 79
        Top = 24
        Width = 388
        Height = 24
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 87
      Width = 521
      Height = 65
      Caption = 'Filtrar rota'
      TabOrder = 1
      DesignSize = (
        521
        65)
      object sbRotas: TSpeedButton
        Left = 473
        Top = 24
        Width = 27
        Height = 24
        Anchors = [akTop, akRight]
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0066666666FFFF
          FFFFFF666666666666666666000066666666FBFBFBFBFB666666666666666666
          000066666666FFFFFFFFFF666666666666666666000066666666FBFBFBFBFB66
          66666666666666660000666666698FFFFFFFFF66666668866666666600006666
          669118FBFBFBFB666666888866666666000066666691518FFFFFFF6666668888
          866666660000666666911518FBFBFB666666888888666666000066666F811191
          8FFFFF666668888878866666000066666F77199918FBFB666668778777886666
          00006666F77FF9999166666666877FF7777866660000666F77FFFF1116666666
          6877FFFF88866666000066F77FFF886666666666877FFF886666666600006F77
          FFF866666666666877FFF866666666660000F77FFF896666666666877FFF8866
          66666666000087FFF896666666666687FFF8866666666666000068FF86666666
          66666668FF866666666666660000668866666666666666668866666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbRotasClick
      end
      object edtCodRota: TEdit
        Left = 10
        Top = 24
        Width = 63
        Height = 24
        TabOrder = 0
        OnChange = edtCodRotaChange
        OnKeyPress = edtCodRotaKeyPress
      end
      object edtRotaDesc: TEdit
        Left = 79
        Top = 24
        Width = 388
        Height = 24
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 16
      Top = 158
      Width = 521
      Height = 65
      Caption = 'Filtrar setor'
      TabOrder = 2
      DesignSize = (
        521
        65)
      object sbSetor: TSpeedButton
        Left = 473
        Top = 24
        Width = 27
        Height = 24
        Anchors = [akTop, akRight]
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0066666666FFFF
          FFFFFF666666666666666666000066666666FBFBFBFBFB666666666666666666
          000066666666FFFFFFFFFF666666666666666666000066666666FBFBFBFBFB66
          66666666666666660000666666698FFFFFFFFF66666668866666666600006666
          669118FBFBFBFB666666888866666666000066666691518FFFFFFF6666668888
          866666660000666666911518FBFBFB666666888888666666000066666F811191
          8FFFFF666668888878866666000066666F77199918FBFB666668778777886666
          00006666F77FF9999166666666877FF7777866660000666F77FFFF1116666666
          6877FFFF88866666000066F77FFF886666666666877FFF886666666600006F77
          FFF866666666666877FFF866666666660000F77FFF896666666666877FFF8866
          66666666000087FFF896666666666687FFF8866666666666000068FF86666666
          66666668FF866666666666660000668866666666666666668866666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbSetorClick
      end
      object edtCodSetor: TEdit
        Left = 10
        Top = 24
        Width = 63
        Height = 24
        TabOrder = 0
        OnChange = edtCodSetorChange
        OnKeyPress = edtCodSetorKeyPress
      end
      object edtSetorDesc: TEdit
        Left = 79
        Top = 24
        Width = 388
        Height = 24
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 229
      Width = 273
      Height = 119
      Caption = 'Per'#237'odo'
      TabOrder = 3
      object sbGetDtIni: TSpeedButton
        Left = 242
        Top = 23
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
          777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
          79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
          777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
          79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
          CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
        NumGlyphs = 2
        OnClick = sbGetDtIniClick
      end
      object Label1: TLabel
        Left = 10
        Top = 29
        Width = 67
        Height = 16
        Caption = 'Data inicial:'
      end
      object sbGetDtFim: TSpeedButton
        Left = 242
        Top = 71
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
          777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
          79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
          7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
          777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
          79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
          CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
        NumGlyphs = 2
        OnClick = sbGetDtFimClick
      end
      object Label2: TLabel
        Left = 10
        Top = 74
        Width = 59
        Height = 16
        Caption = 'Data final:'
      end
      object sbDtIni: TSpeedButton
        Left = 200
        Top = 46
        Width = 41
        Height = 16
        Caption = 'Limpar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = sbDtIniClick
      end
      object sbDtFim: TSpeedButton
        Left = 200
        Top = 96
        Width = 41
        Height = 14
        Caption = 'Limpar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = sbDtFimClick
      end
      object edtDtIni: TEdit
        Left = 90
        Top = 23
        Width = 151
        Height = 24
        Color = clBtnFace
        Enabled = False
        TabOrder = 0
      end
      object edtDtFim: TEdit
        Left = 90
        Top = 71
        Width = 151
        Height = 24
        Color = clBtnFace
        Enabled = False
        TabOrder = 1
      end
    end
  end
end
