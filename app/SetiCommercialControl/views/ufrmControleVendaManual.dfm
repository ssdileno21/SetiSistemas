object frmControleVendaManual: TfrmControleVendaManual
  Tag = 1
  Left = 0
  Top = 0
  Caption = 'Controle de vendas manuais'
  ClientHeight = 635
  ClientWidth = 1172
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1172
    Height = 31
    Align = alTop
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
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
      Hint = 'Estoque e contagem lan'#231'ados n'#227'o ser'#227'o cancelados!!!'
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
      ParentShowHint = False
      ShowHint = True
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
    object sbCancelarVenda: TSpeedButton
      AlignWithMargins = True
      Left = 803
      Top = 4
      Width = 118
      Height = 23
      Align = alLeft
      Caption = 'Cancelar venda'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666660000006666666000066666660000006666600888800666660000006666
        0780800870666600000066660077077700666600000066660700F07070666600
        0000666070FFF70787066600000066600F0F00707006660000006660FFF0FF8F
        07066600000066800F0F0F007008660000006608F0FFF0FF0F80660000006607
        8000000008F0660000006600078FFFFFF0006600000066077878FFFFF7006600
        000066600878FFFF700666000000666660008FF7066666000000666666666870
        666666000000666666666686666666000000}
      ParentFont = False
      OnClick = sbCancelarVendaClick
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
    Width = 1172
    Height = 240
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
      Left = 644
      Top = 4
      Width = 524
      Height = 232
      Align = alRight
      TabOrder = 0
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 516
        Height = 27
        Align = alTop
        Caption = 'Hist'#243'rico do cliente'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object sbAbrirVenda: TSpeedButton
          AlignWithMargins = True
          Left = 328
          Top = 4
          Width = 184
          Height = 19
          Hint = 'Abrir venda'
          Align = alRight
          Caption = 'Abrir venda'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -13
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
          ParentShowHint = False
          ShowHint = True
          OnClick = sbAbrirVendaClick
        end
      end
      object DBNavigator3: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 37
        Width = 516
        Height = 25
        DataSource = dsHistoricoCliente
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 1
      end
      object dbgHistorico: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 68
        Width = 516
        Height = 160
        Align = alClient
        DataSource = dsHistoricoCliente
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgHistoricoDrawColumnCell
        OnDblClick = dbgHistoricoDblClick
        OnTitleClick = dbgHistoricoTitleClick
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 634
      Height = 232
      Align = alClient
      Color = clWindow
      ParentBackground = False
      TabOrder = 1
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 626
        Height = 110
        Align = alTop
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          626
          110)
        object Label1: TLabel
          Left = 12
          Top = 15
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label20: TLabel
          Left = 12
          Top = 51
          Width = 44
          Height = 16
          Caption = 'Cliente:'
        end
        object Label14: TLabel
          Left = 12
          Top = 83
          Width = 60
          Height = 16
          Caption = 'Vendedor:'
        end
        object sbCliente: TSpeedButton
          Left = 584
          Top = 49
          Width = 32
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
          OnClick = sbClienteClick
          ExplicitLeft = 554
        end
        object sbVendedor: TSpeedButton
          Left = 584
          Top = 79
          Width = 32
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
          OnClick = sbVendedorClick
          ExplicitLeft = 554
        end
        object dbeCodigo: TDBEdit
          Left = 81
          Top = 13
          Width = 109
          Height = 24
          Color = clYellow
          DataField = 'ID'
          DataSource = dsPedido
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object dbeCliente: TDBEdit
          Left = 81
          Top = 49
          Width = 50
          Height = 24
          DataField = 'ID_CLIENTE'
          DataSource = dsPedido
          MaxLength = 8
          TabOrder = 1
          OnChange = dbeClienteChange
          OnKeyPress = dbeClienteKeyPress
        end
        object edtCliente: TEdit
          AlignWithMargins = True
          Left = 134
          Top = 49
          Width = 448
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Color = clInactiveBorder
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object dbeVendedor: TDBEdit
          Left = 81
          Top = 79
          Width = 50
          Height = 24
          DataField = 'ID_FUNCIONARIO'
          DataSource = dsPedido
          MaxLength = 8
          TabOrder = 2
          OnChange = dbeVendedorChange
          OnKeyPress = dbeVendedorKeyPress
        end
        object edtVendedor: TEdit
          AlignWithMargins = True
          Left = 134
          Top = 79
          Width = 448
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Color = clInactiveBorder
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object dbrSituacao: TDBRadioGroup
          Tag = 99
          AlignWithMargins = True
          Left = 198
          Top = 3
          Width = 418
          Height = 38
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Situa'#231#227'o da venda'
          Columns = 3
          DataField = 'STATUS'
          DataSource = dsPedido
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Em aberto'
            'Pago'
            'Cancelado')
          ParentBackground = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Values.Strings = (
            'A'
            'P'
            'C')
        end
      end
      object Panel12: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 120
        Width = 626
        Height = 108
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          626
          108)
        object lbLogradouro: TLabel
          Left = 8
          Top = 28
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
        object lbLogradouroNum: TLabel
          Left = 316
          Top = 28
          Width = 19
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 337
        end
        object lbLogradouroComp: TLabel
          Left = 389
          Top = 27
          Width = 45
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Compl.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 359
        end
        object lbLogradouroBairro: TLabel
          Left = 8
          Top = 48
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
        object lbLogradouroCidade: TLabel
          Left = 225
          Top = 48
          Width = 44
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 246
        end
        object lbLogradouroUf: TLabel
          Left = 485
          Top = 48
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
          ExplicitLeft = 455
        end
        object lbLogradouroCep: TLabel
          Left = 532
          Top = 48
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
          ExplicitLeft = 502
        end
        object Label11: TLabel
          Left = 8
          Top = 68
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
          Top = 68
          Width = 558
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'REGIAO'
          DataSource = dsCliente
          Enabled = False
          ExplicitWidth = 579
        end
        object Label12: TLabel
          Left = -13
          Top = 87
          Width = 31
          Height = 16
          Anchors = [akTop, akRight]
          Caption = 'Rota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 8
        end
        object DBText1: TDBText
          Left = 22
          Top = 87
          Width = 255
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'ROTA'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 43
        end
        object Label13: TLabel
          Left = 304
          Top = 87
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
          Left = 344
          Top = 87
          Width = 266
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SETOR'
          DataSource = dsCliente
          Enabled = False
          ExplicitWidth = 287
        end
        object DBText3: TDBText
          Left = 51
          Top = 48
          Width = 168
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'LOGRADOUROBAIRRO'
          DataSource = dsCliente
          Enabled = False
          ExplicitWidth = 189
        end
        object DBText4: TDBText
          Left = 277
          Top = 48
          Width = 204
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOUROCIDADE'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 298
        end
        object DBText5: TDBText
          Left = 508
          Top = 48
          Width = 20
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOUROUF'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 529
        end
        object DBText6: TDBText
          Left = 561
          Top = 48
          Width = 55
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOUROCEP'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 582
        end
        object DBText7: TDBText
          Left = 440
          Top = 28
          Width = 176
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOUROCOMP'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 461
        end
        object DBText8: TDBText
          Left = 340
          Top = 28
          Width = 41
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOURONUM'
          DataSource = dsCliente
          Enabled = False
          ExplicitLeft = 361
        end
        object DBText9: TDBText
          Left = 83
          Top = 28
          Width = 226
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          DataField = 'LOGRADOURO'
          DataSource = dsCliente
          Enabled = False
          ExplicitWidth = 247
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 626
          Height = 27
          Align = alTop
          Caption = 'Endere'#231'o do cliente'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
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
    Top = 274
    Width = 1166
    Height = 321
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
      Width = 631
      Height = 313
      Align = alClient
      TabOrder = 0
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 623
        Height = 27
        Align = alTop
        Caption = 'Vendas'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Panel14: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 37
        Width = 623
        Height = 29
        Align = alTop
        TabOrder = 1
        object Label5: TLabel
          AlignWithMargins = True
          Left = 153
          Top = 4
          Width = 70
          Height = 16
          Align = alLeft
          Caption = 'Contagem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 57
          Height = 16
          Align = alLeft
          Caption = 'Estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbAtualizaVenda: TSpeedButton
          AlignWithMargins = True
          Left = 482
          Top = 4
          Width = 137
          Height = 21
          Align = alRight
          Caption = 'Atualizar [F12]'
          Flat = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000666666886666666666666666666666666666000066666CC8866666666666
            666888666666666600006666C22C88666666666666888886666666660000666A
            2222C886666666666888888866666666000066A222222C886666666668888888
            86666666000066A222A222C8866666666888688888666666000066A22C8A222C
            866666666888868888866666000066A22C86A22C886666666888866888866666
            0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
            6666666668888666000066666666666A22C88666666666666688886600006666
            66666666A22C8666666666666668888600006666666666666A2C866666666666
            66668886000066666666666666AC666666666666666668660000666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000}
          NumGlyphs = 2
          OnClick = sbAtualizaVendaClick
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 315
          Top = 4
          Width = 51
          Height = 16
          Align = alLeft
          Caption = 'Vlr.Unit.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtContagem: TEdit
          AlignWithMargins = True
          Left = 229
          Top = 4
          Width = 80
          Height = 21
          Align = alLeft
          TabOrder = 1
          OnKeyDown = edtContagemKeyDown
          OnKeyPress = edtContagemKeyPress
          ExplicitHeight = 24
        end
        object edtEstoque: TEdit
          AlignWithMargins = True
          Left = 67
          Top = 4
          Width = 80
          Height = 21
          Hint = 
            'Pressione as teclas de setas para cima e para baixo para mover o' +
            ' grid. A tecla F12 atualiza.'
          Align = alLeft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = edtEstoqueKeyDown
          OnKeyPress = edtEstoqueKeyPress
          ExplicitHeight = 24
        end
        object edtVlrUnitario: TEdit
          AlignWithMargins = True
          Left = 372
          Top = 4
          Width = 104
          Height = 21
          Align = alLeft
          TabOrder = 2
          OnKeyPress = Edit1KeyPress
          ExplicitHeight = 24
        end
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 72
        Width = 623
        Height = 25
        DataSource = dsVendas
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 2
        OnClick = DBNavigator1Click
      end
      object dbgVendas: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 103
        Width = 623
        Height = 206
        Align = alClient
        DataSource = dsVendas
        DrawingStyle = gdsGradient
        FixedColor = clActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgVendasCellClick
        OnDrawColumnCell = dbgVendasDrawColumnCell
        OnTitleClick = dbgVendasTitleClick
      end
    end
    object Panel10: TPanel
      AlignWithMargins = True
      Left = 641
      Top = 4
      Width = 521
      Height = 313
      Align = alRight
      TabOrder = 1
      object Panel11: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 513
        Height = 27
        Align = alTop
        Caption = 'Estoque atual'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object sbGerarNovaVenda: TSpeedButton
          AlignWithMargins = True
          Left = 343
          Top = 4
          Width = 166
          Height = 19
          Hint = 'Abrir venda'
          Align = alRight
          Caption = 'Gerar nova venda'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
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
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = sbGerarNovaVendaClick
          ExplicitHeight = 18
        end
      end
      object Panel15: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 37
        Width = 513
        Height = 29
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 136
          Height = 16
          Align = alLeft
          Caption = 'Quantidade estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sbAtualizaEstoque: TSpeedButton
          AlignWithMargins = True
          Left = 253
          Top = 4
          Width = 84
          Height = 21
          Align = alLeft
          Caption = 'Atualizar'
          Flat = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000666666886666666666666666666666666666000066666CC8866666666666
            666888666666666600006666C22C88666666666666888886666666660000666A
            2222C886666666666888888866666666000066A222222C886666666668888888
            86666666000066A222A222C8866666666888688888666666000066A22C8A222C
            866666666888868888866666000066A22C86A22C886666666888866888866666
            0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
            6666666668888666000066666666666A22C88666666666666688886600006666
            66666666A22C8666666666666668888600006666666666666A2C866666666666
            66668886000066666666666666AC666666666666666668660000666666666666
            6666666666666666666666660000666666666666666666666666666666666666
            0000}
          NumGlyphs = 2
          OnClick = sbAtualizaEstoqueClick
          ExplicitHeight = 18
        end
        object edtQtdEstoque: TEdit
          AlignWithMargins = True
          Left = 146
          Top = 4
          Width = 101
          Height = 21
          Align = alLeft
          TabOrder = 0
          OnKeyDown = edtQtdEstoqueKeyDown
          OnKeyPress = edtQtdEstoqueKeyPress
          ExplicitHeight = 24
        end
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 72
        Width = 513
        Height = 25
        DataSource = dsEstoque
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 2
        OnClick = DBNavigator2Click
      end
      object dbgEstoque: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 103
        Width = 513
        Height = 206
        Align = alClient
        DataSource = dsEstoque
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgEstoqueCellClick
        OnDrawColumnCell = dbgEstoqueDrawColumnCell
        OnTitleClick = dbgEstoqueTitleClick
      end
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 601
    Width = 1166
    Height = 31
    Align = alBottom
    Color = clAppWorkSpace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object sbFormaPagto: TSpeedButton
      Tag = 12
      AlignWithMargins = True
      Left = 766
      Top = 4
      Width = 26
      Height = 25
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
      OnClick = sbFormaPagtoClick
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 203
      Top = 6
      Width = 141
      Height = 16
      Caption = 'Forma de pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 91
      Height = 16
      Caption = 'Total a pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbPagamento: TSpeedButton
      AlignWithMargins = True
      Left = 995
      Top = 4
      Width = 167
      Height = 23
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Efeutar pagamento'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666F6666666666000066666636666666666666666686F666666666
        0000666666306666666666666666886F66666666000066666663066666666666
        66666886F6666666000066666663B066666666666666F8F86F66666600006666
        63000F06666666666668888686F666660000666663FBFBF06666666666686F66
        686F666600006666663FB0333666666666668F688886666600006666663BFB06
        6666666666FF8FF686F66666000066630000BFB06666666668888866686F6666
        00006663FBFBFBFB06666666686F6666668F6666000066663FBFB03336666666
        668F666888866666000066663BFBFB06666666666686F66686F6666600006666
        63BFBFB0666666666668F666686F66660000666663FBFBFB0666666666686F66
        6686F66600006666663FBFBFB066666666668FFFFFF8FF660000666666333333
        3336666666668888888886660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbPagamentoClick
      ExplicitLeft = 997
      ExplicitTop = -8
      ExplicitWidth = 188
      ExplicitHeight = 34
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 800
      Top = 7
      Width = 70
      Height = 16
      Caption = 'Dta.Pagto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbCalendar: TSpeedButton
      AlignWithMargins = True
      Left = 961
      Top = 5
      Width = 28
      Height = 23
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
      OnClick = sbCalendarClick
    end
    object edtFormaPagto: TEdit
      AlignWithMargins = True
      Left = 410
      Top = 4
      Width = 353
      Height = 24
      Color = clInactiveBorder
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object dbeFormaPagto: TDBEdit
      Left = 358
      Top = 4
      Width = 50
      Height = 24
      DataField = 'ID_FORMAPAGTO'
      DataSource = dsPedido
      MaxLength = 8
      TabOrder = 1
      OnChange = dbeFormaPagtoChange
      OnKeyPress = dbeFormaPagtoKeyPress
    end
    object dbeTotalPagar: TDBEdit
      AlignWithMargins = True
      Left = 105
      Top = 4
      Width = 87
      Height = 24
      Color = clYellow
      DataField = 'VLRTOTALVENDA'
      DataSource = dsPedido
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object dbeDtaPagto: TDBEdit
      AlignWithMargins = True
      Left = 876
      Top = 5
      Width = 87
      Height = 24
      Color = clInactiveBorder
      DataField = 'DATPAGTO'
      DataSource = dsPedido
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 1016
    Top = 416
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
      OnClick = sbSearch3Click
    end
    object sbSearch4: TMenuItem
      Tag = 4
      Caption = 'Nome do vendedor'
      OnClick = sbSearch4Click
    end
  end
  object dsPedido: TDataSource
    Left = 1080
    Top = 432
  end
  object dsHistoricoCliente: TDataSource
    Left = 960
    Top = 472
  end
  object dsVendas: TDataSource
    Left = 992
    Top = 528
  end
  object dsCliente: TDataSource
    Left = 1032
    Top = 480
  end
  object dsEstoque: TDataSource
    Left = 1128
    Top = 392
  end
end