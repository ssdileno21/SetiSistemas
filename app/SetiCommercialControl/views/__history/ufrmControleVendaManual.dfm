object frmControleVendaManual: TfrmControleVendaManual
  Left = 0
  Top = 0
  Caption = 'Controle de vendas manuais'
  ClientHeight = 573
  ClientWidth = 1039
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 31
    Align = alTop
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object sbInsert: TSpeedButton
      AlignWithMargins = True
      Left = 185
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Novo'
      Flat = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666660000000000666666668888888888666
        00006666687777777706666666687777777786660000666668FFFFFFF7066666
        6668F7F7F7F786660000666668FFFFFFF706666666687F7F7F77866600006666
        68FFFFFFF70666666668F7F7F7F786660000666668FFFFFFF706666666687F7F
        7F7786660000666668FFFFFFF70666666668F7F7F7F786660000666668FFFFFF
        F706666666687F7F7F778666000066F668FFFFFFF7066666F668F7F7F7F78666
        0000668F88FF8FF0000666668F887F8F7888866600006668B8F8FFF7F8666666
        6878F8F7F7F86666000066FF8FBFFFF786666666FF8F7F7F7786666600006668
        8BFF8888666666666887FF888866666600006668B8B8F66666666666687878F6
        666666660000668F68F66666666666668F68F66666666666000066F668F668F6
        66666666F668F668F66666660000666668F66666666666666668F66666666666
        0000}
      NumGlyphs = 2
      OnClick = sbInsertClick
      ExplicitLeft = 5
      ExplicitTop = 2
    end
    object sbUpdate: TSpeedButton
      AlignWithMargins = True
      Left = 288
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Alterar'
      Flat = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666666666666666666666666666666666000066666666666666666666
        6666666666666666000066666666666666666666666666666666666600006666
        6666666666666666666666666666666600006666FFFFFFFFFFF6666666FFFFFF
        FFFFF666000066684444444444F66666688888888888F6660000666844444444
        44F66666688888888888F66600006666844444444F66666666888888888F6666
        0000666668444444F66666666668888888F66666000066666684444F66666666
        666688888F66666600006666666844F66666666666666888F666666600006666
        6666886666666666666666886666666600006666666666666666666666666666
        6666666600006666666666666666666666666666666666660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      OnClick = sbUpdateClick
      ExplicitLeft = 225
      ExplicitTop = 2
    end
    object sbDel: TSpeedButton
      AlignWithMargins = True
      Left = 391
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Deletar'
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
      ExplicitLeft = 332
      ExplicitTop = 8
    end
    object sbSave: TSpeedButton
      AlignWithMargins = True
      Left = 494
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Gravar'
      Flat = True
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
      OnClick = sbSaveClick
      ExplicitLeft = 449
      ExplicitTop = 2
    end
    object sbCancel: TSpeedButton
      AlignWithMargins = True
      Left = 597
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666111116666666666666888886666666000066661199999116666666
        6688888888866666000066619999999991666666688888888888666600006619
        99999999991666668888888888888666000066199FF999FF9916666688866888
        66888666000061999FFF9FFF9991666888866686668888660000619999FFFFF9
        99916668888866666888886600006199999FFF99999166688888866688888866
        0000619999FFFFF9999166688888666668888866000061999FFF9FFF99916668
        8886668666888866000066199FF999FF99166666888668886688866600006619
        9999999999166666888888888888866600006661999999999166666668888888
        8888666600006666119999911666666666888888888666660000666666111116
        6666666666668888866666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbCancelClick
      ExplicitLeft = 552
      ExplicitTop = 2
    end
    object sbPrint: TSpeedButton
      AlignWithMargins = True
      Left = 700
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        66666666666666FFF66666660000666666600066666666666666F888FFF66666
        00006666600788006666666666F8866888FFF666000066600778008800666666
        688668888888FFF60000660778878800880066668F688688888888F600006688
        877788880080666688866688888888F600006887777788888800666886666688
        888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
        88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
        000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
        88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
        6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
        F666F88600006666666668FFF8866666666666686FF886660000666666666688
        8666666666666666888666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbPrintClick
      ExplicitLeft = 552
      ExplicitTop = 2
    end
    object sbClear: TSpeedButton
      AlignWithMargins = True
      Left = 803
      Top = 4
      Width = 97
      Height = 23
      Align = alLeft
      Caption = 'Limpar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666688888
        86666666666666666666666600006666680000008886666666666FFFFFF66666
        000066660011111100886666666F8888886FF666000066601119999111088666
        6688666666886F66000066911196666911108666686666666F6686F600006691
        19666611911088668F666666F86668F60000691106666119191108668666666F
        866F686F000069108666119116910868F66666F866F8668F0000691086611911
        66910868F6666F866F86668F000069108611911666910868F666F866F866668F
        000069108119116666910868F66F866F8666668F000069110191166669110668
        6F6866F8666666860000669119116666911086668F666F86666668F600006691
        110888801110666686F6686666666866000066691110000111066666686FF666
        666F866600006666991111119966666666886FFFFF8866660000666666999999
        6666666666668888886666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      ParentFont = False
      ExplicitLeft = 552
      ExplicitTop = 2
    end
    object sbSearch: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 175
      Height = 23
      Align = alLeft
      Caption = 'Pesquisar'
      DropDownMenu = PopupMenu1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      Style = bsSplitButton
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 31
    Width = 1039
    Height = 217
    Align = alTop
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 740
      Top = 4
      Width = 295
      Height = 209
      Align = alRight
      TabOrder = 0
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 287
        Height = 25
        Align = alTop
        Caption = 'Hist'#243'rico do cliente'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 35
        Width = 287
        Height = 170
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 730
      Height = 209
      Align = alClient
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 722
        Height = 101
        Align = alTop
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          722
          101)
        object Label1: TLabel
          Left = 12
          Top = 8
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label20: TLabel
          Left = 12
          Top = 35
          Width = 44
          Height = 16
          Caption = 'Cliente:'
        end
        object Label14: TLabel
          Left = 12
          Top = 67
          Width = 60
          Height = 16
          Caption = 'Vendedor:'
        end
        object sbCliente: TSpeedButton
          Left = 681
          Top = 33
          Width = 32
          Height = 24
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
        end
        object SpeedButton3: TSpeedButton
          Left = 681
          Top = 63
          Width = 32
          Height = 24
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
        end
        object dbeCodigo: TDBEdit
          Left = 81
          Top = 6
          Width = 109
          Height = 24
          Color = clInfoBk
          DataField = 'ID'
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbeCliente: TDBEdit
          Left = 81
          Top = 33
          Width = 50
          Height = 24
          MaxLength = 8
          TabOrder = 1
        end
        object edtCliente: TEdit
          AlignWithMargins = True
          Left = 134
          Top = 33
          Width = 544
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          Enabled = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 81
          Top = 63
          Width = 50
          Height = 24
          MaxLength = 8
          TabOrder = 3
        end
        object Edit4: TEdit
          AlignWithMargins = True
          Left = 134
          Top = 63
          Width = 544
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          Enabled = False
          TabOrder = 4
        end
      end
      object Panel12: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 111
        Width = 722
        Height = 94
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          722
          94)
        object lbLogradouro: TLabel
          Left = 8
          Top = 29
          Width = 70
          Height = 16
          Caption = 'Logradouro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouro: TDBText
          Left = 84
          Top = 29
          Width = 321
          Height = 17
          Anchors = [akLeft, akTop, akRight]
        end
        object lbLogradouroNum: TLabel
          Left = 412
          Top = 31
          Width = 19
          Height = 16
          Anchors = [akLeft, akRight]
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroNum: TDBText
          Left = 437
          Top = 31
          Width = 40
          Height = 17
          Anchors = [akLeft, akRight]
        end
        object lbLogradouroComp: TLabel
          Left = 485
          Top = 31
          Width = 45
          Height = 16
          Anchors = [akLeft, akRight]
          Caption = 'Compl.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroComp: TDBText
          Left = 536
          Top = 29
          Width = 175
          Height = 17
          Anchors = [akTop, akRight]
        end
        object lbLogradouroBairro: TLabel
          Left = 8
          Top = 51
          Width = 39
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroBairro: TDBText
          Left = 54
          Top = 51
          Width = 135
          Height = 17
        end
        object lbLogradouroCidade: TLabel
          Left = 198
          Top = 51
          Width = 44
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroCidade: TDBText
          Left = 248
          Top = 51
          Width = 253
          Height = 17
          Anchors = [akLeft, akTop, akRight]
        end
        object lbLogradouroUf: TLabel
          Left = 507
          Top = 51
          Width = 20
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroUf: TDBText
          Left = 533
          Top = 51
          Width = 33
          Height = 17
          Anchors = [akTop, akRight]
        end
        object lbLogradouroCep: TLabel
          Left = 571
          Top = 51
          Width = 27
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbLogradouroCep: TDBText
          Left = 606
          Top = 51
          Width = 108
          Height = 17
          Anchors = [akTop, akRight]
        end
        object Label11: TLabel
          Left = 8
          Top = 73
          Width = 44
          Height = 16
          Caption = 'Regi'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dbRegiao: TDBText
          Left = 58
          Top = 73
          Width = 169
          Height = 17
        end
        object Label12: TLabel
          Left = 234
          Top = 73
          Width = 31
          Height = 16
          Caption = 'Rota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 276
          Top = 73
          Width = 169
          Height = 17
        end
        object Label13: TLabel
          Left = 453
          Top = 73
          Width = 36
          Height = 16
          Caption = 'Setor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 488
          Top = 73
          Width = 226
          Height = 17
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 722
          Height = 25
          Align = alTop
          Caption = 'Endere'#231'o do cliente'
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 251
    Width = 1033
    Height = 271
    Align = alClient
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 728
      Height = 263
      Align = alClient
      TabOrder = 0
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 720
        Height = 25
        Align = alTop
        Caption = 'Vendas'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 35
        Width = 720
        Height = 224
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel10: TPanel
      AlignWithMargins = True
      Left = 738
      Top = 4
      Width = 291
      Height = 263
      Align = alRight
      TabOrder = 1
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 283
        Height = 25
        Align = alTop
        Caption = 'Estoque atual'
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 35
        Width = 283
        Height = 224
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 528
    Width = 1033
    Height = 42
    Align = alBottom
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      1033
      42)
    object sbFormaPagto: TSpeedButton
      Tag = 12
      Left = 966
      Top = 8
      Width = 26
      Height = 25
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
    end
    object Label3: TLabel
      Left = 243
      Top = 12
      Width = 141
      Height = 16
      Caption = 'Forma de pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 12
      Width = 91
      Height = 16
      Caption = 'Total '#224' pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtFormaPagto: TEdit
      AlignWithMargins = True
      Left = 471
      Top = 10
      Width = 490
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Color = clInfoBk
      Enabled = False
      TabOrder = 0
    end
    object dbeFormaPagto: TDBEdit
      Left = 390
      Top = 10
      Width = 77
      Height = 24
      MaxLength = 8
      TabOrder = 1
    end
    object dbeTotalPagar: TDBEdit
      Left = 108
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 400
    object sbSearch0: TMenuItem
      Caption = 'C'#243'digo da venda'
      OnClick = sbSearch0Click
    end
    object sbSearch1: TMenuItem
      Tag = 1
      Caption = 'C'#243'digo do cliente'
      OnClick = sbSearch1Click
    end
    object sbSearch2: TMenuItem
      Tag = 2
      Caption = 'Nome do cliente'
      OnClick = sbSearch2Click
    end
    object sbSearch3: TMenuItem
      Tag = 3
      Caption = 'C'#243'digo do vendedor'
    end
    object sbSearch4: TMenuItem
      Tag = 4
      Caption = 'Nome do vendedor'
    end
  end
end
