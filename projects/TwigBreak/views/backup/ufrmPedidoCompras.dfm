object frmPedidoCompras: TfrmPedidoCompras
  Left = 0
  Top = 0
  Caption = 'Compras'
  ClientHeight = 579
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 579
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 376
      Width = 987
      Height = 167
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 0
      object dbgPadrao: TDBGrid
        Left = 1
        Top = 1
        Width = 981
        Height = 161
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbgPadraoTitleClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 987
      Height = 31
      Align = alTop
      TabOrder = 1
      object sbAbrir: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 97
        Height = 23
        Align = alLeft
        Caption = 'Listar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888888
          8888880000008FFFFFFFFFF87777780000008FF777777FF87787780000008FFF
          FFFFFFF87888780000008FF777777FF87777780000008FFFFFFFFFF888888800
          00008FF777777FF8F7F7780000008FFFFFFFFFF87F7F780000008FF777777FF8
          F7F7780000008FFFFFFFFFF87F7F780000008FF777777FF8F7F7780000008FFF
          FFFFFFF87F7F780000008FF777777FF88888880000008FFFFFFFFFF877777800
          00008FF777777FF87888780000008FFFFFFFFFF87787780000008FFFFFFFFFF8
          777778000000888888888888888888000000}
        ParentFont = False
        OnClick = sbAbrirClick
        ExplicitLeft = -21
        ExplicitTop = 2
      end
      object sbInsert: TSpeedButton
        AlignWithMargins = True
        Left = 107
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
        Left = 210
        Top = 4
        Width = 97
        Height = 23
        Align = alLeft
        Caption = 'Alterar'
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
        Left = 313
        Top = 4
        Width = 97
        Height = 23
        Align = alLeft
        Caption = 'Deletar'
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
        ExplicitLeft = 332
        ExplicitTop = 8
      end
      object sbSave: TSpeedButton
        AlignWithMargins = True
        Left = 416
        Top = 4
        Width = 97
        Height = 23
        Align = alLeft
        Caption = 'Gravar'
        Enabled = False
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
        Left = 519
        Top = 4
        Width = 97
        Height = 23
        Align = alLeft
        Caption = 'Cancelar'
        Enabled = False
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
    end
    object Panel5: TPanel
      Left = 1
      Top = 32
      Width = 987
      Height = 262
      Align = alClient
      TabOrder = 2
      ExplicitHeight = 206
      object PageControl1: TPageControl
        Left = 1
        Top = 41
        Width = 985
        Height = 220
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        ExplicitTop = 1
        ExplicitHeight = 204
        object TabSheet1: TTabSheet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitHeight = 272
          DesignSize = (
            977
            189)
          object Label1: TLabel
            Left = 15
            Top = 10
            Width = 39
            Height = 16
            Caption = 'C'#243'digo'
          end
          object Label5: TLabel
            Left = 14
            Top = 112
            Width = 67
            Height = 16
            Caption = 'Observa'#231#227'o'
          end
          object Label16: TLabel
            Left = 15
            Top = 65
            Width = 99
            Height = 16
            Caption = 'Data do Cadastro'
          end
          object SpeedButton1: TSpeedButton
            Left = 917
            Top = 40
            Width = 23
            Height = 22
          end
          object Label2: TLabel
            Left = 143
            Top = 10
            Width = 65
            Height = 16
            Caption = 'Fornecedor'
          end
          object Label4: TLabel
            Left = 271
            Top = 65
            Width = 49
            Height = 16
            Caption = 'Vlr.Total'
          end
          object Label3: TLabel
            Left = 143
            Top = 65
            Width = 51
            Height = 16
            Caption = 'N'#186' da NF'
          end
          object Label6: TLabel
            Left = 399
            Top = 65
            Width = 78
            Height = 16
            Caption = 'Total de itens'
          end
          object dbeCodigo: TDBEdit
            Left = 14
            Top = 32
            Width = 123
            Height = 24
            Color = clInfoBk
            DataField = 'ID'
            DataSource = dsPadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbcbxAtivo: TDBCheckBox
            Left = 896
            Top = 16
            Width = 57
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Ativo'
            DataField = 'STATUS'
            DataSource = dsPadrao
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbeObservacao: TDBMemo
            Left = 15
            Top = 134
            Width = 938
            Height = 45
            Anchors = [akLeft, akTop, akRight]
            DataField = 'OBSERVACAO'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 14
            Top = 84
            Width = 123
            Height = 24
            Color = clInfoBk
            DataField = 'DATCADASTRO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 143
            Top = 40
            Width = 770
            Height = 24
            TabOrder = 4
          end
          object DBEdit3: TDBEdit
            Left = 271
            Top = 84
            Width = 121
            Height = 24
            TabOrder = 5
          end
          object DBEdit2: TDBEdit
            Left = 143
            Top = 84
            Width = 121
            Height = 24
            TabOrder = 6
          end
          object DBEdit4: TDBEdit
            Left = 399
            Top = 92
            Width = 121
            Height = 24
            TabOrder = 7
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 536
            Top = 62
            Width = 404
            Height = 46
            Caption = 'Status do pedido'
            Columns = 2
            Items.Strings = (
              'Aberto'
              'Fechado')
            ParentBackground = True
            TabOrder = 8
          end
        end
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 979
        Height = 34
        DataSource = dsPadrao
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 1
        ExplicitWidth = 975
        ExplicitHeight = 25
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 294
      Width = 987
      Height = 82
      Align = alBottom
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 3
      ExplicitTop = 255
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 979
        Height = 37
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbRefresh]
        Align = alClient
        Kind = dbnHorizontal
        TabOrder = 0
        ExplicitWidth = 975
        ExplicitHeight = 25
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 47
        Width = 979
        Height = 31
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 49
          Height = 23
          Align = alLeft
          Alignment = taCenter
          Caption = 'Produto:'
          ExplicitLeft = 32
          ExplicitTop = 16
          ExplicitHeight = 16
        end
        object SpeedButton2: TSpeedButton
          AlignWithMargins = True
          Left = 791
          Top = 4
          Width = 23
          Height = 23
          Align = alLeft
          ExplicitLeft = 917
          ExplicitTop = 9
          ExplicitHeight = 22
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 820
          Top = 4
          Width = 25
          Height = 23
          Align = alLeft
          Caption = 'Qtd:'
          ExplicitLeft = 513
          ExplicitHeight = 16
        end
        object DBLookupComboBox2: TDBLookupComboBox
          AlignWithMargins = True
          Left = 59
          Top = 4
          Width = 726
          Height = 24
          Align = alLeft
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 851
          Top = 4
          Width = 121
          Height = 23
          Align = alLeft
          TabOrder = 1
          ExplicitLeft = 544
          ExplicitTop = 0
          ExplicitHeight = 24
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 543
      Width = 987
      Height = 35
      Align = alBottom
      TabOrder = 4
      object Image1: TImage
        AlignWithMargins = True
        Left = 898
        Top = 4
        Width = 85
        Height = 27
        Align = alRight
        Picture.Data = {
          07544269746D6170F6210000424DF62100000000000036000000280000005A00
          0000180000000100200000000000C0210000120B0000120B0000000000000000
          0000D9CCBF00B3998000B3998000B3998000B3998000B3998000B3998000B399
          8000B3998000FFFFFF00FFFFFF00D9CCBF00B3998000B3998000B3998000B399
          8000B3998000B3998000B3998000B3998000B3998000D9CCBF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B3998000663300006633000066330000663300006633
          000066330000663300006633000066330000D9CCBF00B3998000663300006633
          000066330000663300006633000066330000663300006633000066330000B399
          8000FFFFFF00FF996600FF996600FF996600FF996600FF996600FFFFFF00FF99
          6600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFFFF00FFFFFF008C66
          40006633000066330000663300008C664000D9CCBF00B399800066330000FFFF
          FF00B399800066330000663300006633000066330000D9CCBF00FFFFFF00FFFF
          FF00B3998000B3998000FFFFFF00FFFFFF00FFFFFF0066330000663300006633
          00006633000066330000B399800066330000B3998000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00B3998000B39980008C664000B3998000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00B399800066330000D9CCBF008C6640006633
          000066330000663300008C664000FFFFFF00B399800066330000663300006633
          0000663300006633000066330000663300006633000066330000B3998000B399
          8000663300006633000066330000663300006633000066330000663300006633
          000066330000B3998000FFFFFF00FF996600FF996600FF996600FF996600FF99
          6600FFFFFF00FF996600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFF
          FF00B399800066330000D9CCBF00FFFFFF00FFFFFF008C6640008C664000B399
          800066330000D9CCBF0066330000B3998000FFFFFF00FFFFFF008C6640006633
          0000FFFFFF00FFFFFF00B3998000B3998000FFFFFF00FFFFFF00FFFFFF006633
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066330000B3998000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3998000B3998000B399
          800066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF008C664000B39980008C66
          40008C664000FFFFFF00FFFFFF00D9CCBF0066330000B3998000B39980006633
          0000663300006633000066330000663300006633000066330000663300006633
          0000B3998000B399800066330000663300006633000066330000663300006633
          0000663300006633000066330000B3998000FFFFFF00FF996600FF996600FF99
          6600FF996600FF996600FFFFFF00FF996600FF996600FF996600FF996600FFFF
          FF00FFFFFF00FFFFFF00D9CCBF00D9CCBF00FFFFFF00FFFFFF00FFFFFF00D9CC
          BF0066330000B399800066330000D9CCBF00B3998000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066330000FFFFFF00FFFFFF00B3998000B3998000FFFFFF00FFFF
          FF00FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633
          0000B3998000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B399
          8000B3998000FFFFFF0066330000D9CCBF00FFFFFF00FFFFFF00FFFFFF006633
          0000D9CCBF00B3998000D9CCBF00FFFFFF00FFFFFF00FFFFFF00B3998000B399
          8000B39980006633000066330000663300006633000066330000663300006633
          00006633000066330000B3998000B39980006633000066330000663300006633
          00006633000066330000663300006633000066330000B3998000FFFFFF00FF99
          6600FF996600FF996600FF996600FF996600FFFFFF00FF996600FF996600FF99
          6600FF996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008C6640008C664000B399800066330000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B399800066330000FFFFFF00FFFFFF00B3998000B399
          8000FFFFFF00FFFFFF00FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066330000B3998000FFFFFF00FFFFFF00B3998000D9CCBF00FFFF
          FF00FFFFFF00B3998000B3998000FFFFFF008C6640008C664000B3998000B399
          80008C66400066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9CC
          BF0066330000B3998000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C66
          400066330000663300006633000066330000B3998000B3998000663300006633
          00006633000066330000B3998000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FF996600FF996600FF996600FF996600FF996600FFFFFF00FF99
          6600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9CC
          BF006633000066330000663300008C664000D9CCBF00B399800066330000FFFF
          FF00D9CCBF008C664000663300006633000066330000D9CCBF00FFFFFF00FFFF
          FF00B3998000B3998000FFFFFF00FFFFFF00FFFFFF0066330000663300006633
          000066330000FFFFFF00FFFFFF0066330000B3998000FFFFFF008C6640006633
          000066330000D9CCBF00FFFFFF00B3998000B3998000FFFFFF00B39980006633
          0000B3998000B399800066330000B3998000FFFFFF00FFFFFF00B39980006633
          000066330000663300008C664000FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9CC
          BF008C6640006633000066330000663300006633000066330000B3998000B399
          8000663300006633000066330000663300008C664000B3998000B3998000B399
          8000B3998000FFFFFF00FFFFFF00FF996600FF996600FF996600FF996600FF99
          6600FFFFFF00FF996600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFF
          FF00D9CCBF0066330000B3998000D9CCBF00FFFFFF00FFFFFF00FFFFFF00B399
          800066330000FFFFFF00663300008C664000D9CCBF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B3998000B3998000FFFFFF00FFFFFF00FFFFFF006633
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0066330000B3998000D9CC
          BF0066330000D9CCBF008C6640008C664000FFFFFF00B3998000B3998000FFFF
          FF00FFFFFF0066330000D9CCBF00FFFFFF0066330000D9CCBF00FFFFFF00B399
          800066330000B3998000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00B39980006633000066330000663300006633000066330000663300006633
          0000B3998000B399800066330000663300006633000066330000663300006633
          0000663300006633000066330000FFFFFF00FFFFFF00FF996600FF996600FF99
          6600FF996600FF996600FFFFFF00FF996600FF996600FF996600FF996600FFFF
          FF00FFFFFF00FFFFFF00B399800066330000FFFFFF00FFFFFF00FFFFFF00D9CC
          BF00B3998000B399800066330000FFFFFF0066330000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B3998000FFFFFF00FFFFFF00B3998000B3998000FFFFFF00FFFF
          FF00FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006633
          0000B3998000663300008C664000FFFFFF00FFFFFF0066330000B3998000B399
          8000B3998000FFFFFF00FFFFFF008C664000B3998000B399800066330000FFFF
          FF00FFFFFF00B3998000B3998000FFFFFF00FFFFFF00FFFFFF00D9CCBF00D9CC
          BF00FFFFFF008C66400066330000663300006633000066330000663300006633
          0000663300008C664000FFFFFF00B39980006633000066330000663300006633
          00006633000066330000663300006633000066330000FFFFFF00FFFFFF00FF99
          6600FF996600FF996600FF996600FF996600FFFFFF00FF996600FF996600FF99
          6600FF996600FFFFFF00FFFFFF00FFFFFF00B399800066330000FFFFFF00FFFF
          FF00FFFFFF008C6640008C664000B399800066330000FFFFFF0066330000B399
          8000FFFFFF00FFFFFF00B399800066330000FFFFFF00FFFFFF00B3998000B399
          8000FFFFFF00FFFFFF00FFFFFF0066330000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066330000663300008C664000FFFFFF00FFFFFF00FFFFFF00D9CC
          BF00663300008C664000B3998000FFFFFF00FFFFFF00D9CCBF00663300008C66
          4000B3998000FFFFFF00FFFFFF00B39980008C664000FFFFFF00FFFFFF00FFFF
          FF0066330000B3998000B3998000663300006633000066330000663300006633
          00006633000066330000B3998000FFFFFF00FFFFFF00B3998000663300006633
          000066330000663300006633000066330000663300006633000066330000FFFF
          FF00FFFFFF00FF996600FF996600FF996600FF996600FF996600FFFFFF00FF99
          6600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFFFF00FFFFFF008C66
          400066330000B39980006633000066330000D9CCBF00B399800066330000FFFF
          FF008C664000663300008C6640006633000066330000D9CCBF00B3998000B399
          80008C6640008C664000B3998000B3998000FFFFFF0066330000B3998000B399
          8000B3998000B3998000D9CCBF006633000066330000D9CCBF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008C66400066330000B3998000FFFFFF00FFFFFF00FFFF
          FF006633000066330000FFFFFF00FFFFFF00FFFFFF00D9CCBF00663300006633
          00008C664000663300008C664000FFFFFF00B399800066330000663300006633
          000066330000663300008C664000D9CCBF00FFFFFF00FFFFFF00FFFFFF00B399
          8000663300006633000066330000663300008C664000B3998000B3998000B399
          8000B3998000FFFFFF00FFFFFF00FF996600FF996600FF996600FF996600FF99
          6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B3998000B3998000B3998000FFFFFF00FFFFFF00D9CC
          BF00B3998000FFFFFF00FFFFFF00D9CCBF00B3998000B3998000D9CCBF00FFFF
          FF00B3998000B3998000B3998000B3998000B3998000B3998000FFFFFF00B399
          8000B3998000B3998000B3998000B3998000D9CCBF00B3998000D9CCBF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3998000D9CCBF00FFFF
          FF00FFFFFF00FFFFFF00D9CCBF00B3998000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B3998000B3998000B3998000FFFFFF00FFFFFF00B39980006633
          000066330000663300006633000066330000B3998000B3998000B3998000B399
          8000FFFFFF00B3998000663300006633000066330000663300008C664000B399
          8000B3998000B3998000B3998000FFFFFF00FFFFFF00FF996600FF996600FF99
          6600FF996600FF996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00B39980006633000066330000663300006633000066330000663300006633
          00006633000066330000D9CCBF00B39980006633000066330000663300006633
          00006633000066330000663300006633000066330000D9CCBF00FFFFFF00FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FF996600FF996600FF996600FFB38C00FFE6D900FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B3998000663300006633000066330000663300006633
          000066330000663300006633000066330000B3998000B3998000663300006633
          000066330000663300006633000066330000663300006633000066330000B399
          8000FFFFFF00FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FFCCB300FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B399800066330000663300006633
          0000663300006633000066330000663300006633000066330000B3998000B399
          8000663300006633000066330000663300006633000066330000663300006633
          000066330000B3998000FFB38C00FF996600FF996600FF996600FF996600FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B399
          8000663300006633000066330000663300006633000066330000663300006633
          0000B3998000B399800066330000663300006633000066330000663300006633
          0000663300006633000066330000D9804D00FF996600FF996600FF996600FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FFB38C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB38C00FF996600FF996600FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FF996600FFE6D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB38C00FF996600FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FF996600FFCCB300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB38C00FF99
          6600FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FFB38C00FFCCB300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC
          B300FF996600FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FFB38C00FFE6D900FFFFFF00FFE6D900FFB38C00FF996600FFB38C00FFE6
          D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FF996600FF996600FF996600FF996600FF996600FF996600FF99
          6600FFCCB300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFB38C00FF996600FF99
          6600FF996600FFB38C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FF996600FF996600FF996600FF996600FFCC
          B300FFE6D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF99
          6600FF996600FF996600FF996600FF996600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFB38C00FF996600FF996600FF996600FFB38C00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFE6D900FFB38C00FF996600FFB38C00FFE6
          D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00}
        Stretch = True
        ExplicitLeft = 760
        ExplicitTop = 10
        ExplicitHeight = 25
      end
      object sbExcel: TSpeedButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 125
        Height = 27
        Align = alLeft
        Caption = 'Gerar planilha'
        Flat = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          666666666666666666666666000066666666666666666666FFFFFFFFFFFFFFFF
          000068000000000000000668888888888888888F000068778777778787770668
          F68F66668F8F668F000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF
          8FFFFF8F8FF70668F68FFFFF8F8FFF8F00006888888888888888066888888888
          8888888F000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F
          8FF70668FF8FFFFF8F8FFF8F000068888888888888880668888888888888888F
          000068AA8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F8FF70668
          FF8FFFFF8F8FFF8F000068888888888888880668888888888888888F000068AA
          8AAAAA8A8AA70668F68F66668F8F668F000068FF8FFFFF8F8FF70668F68F6666
          8F8F668F000068FF8FFFFF8F8FF70668FF8FFFFF8F8FFF8F0000688888888888
          8888866888888888888888860000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sbExcelClick
      end
    end
  end
  object dsPadrao: TDataSource
    Left = 736
    Top = 520
  end
  object dsItens: TDataSource
    Left = 600
    Top = 464
  end
end