inherited frmCadClientes: TfrmCadClientes
  Caption = 'frmCadClientes'
  ExplicitWidth = 967
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited PageControl1: TPageControl
        ActivePage = TabSheet2
        inherited TabSheet1: TTabSheet
          Caption = 'Dados b'#225'sicos'
          ExplicitLeft = 4
          ExplicitTop = 27
          ExplicitWidth = 939
          ExplicitHeight = 234
          object Label2: TLabel [1]
            Left = 535
            Top = 18
            Width = 85
            Height = 16
            Caption = 'Nome Fantasia'
          end
          object Label3: TLabel [2]
            Left = 143
            Top = 87
            Width = 83
            Height = 16
            Caption = 'C'#243'digo interno'
          end
          object Label16: TLabel [3]
            Left = 272
            Top = 87
            Width = 99
            Height = 16
            Caption = 'Data do Cadastro'
          end
          object Label18: TLabel [4]
            Left = 391
            Top = 87
            Width = 113
            Height = 16
            Caption = 'Data movimenta'#231#227'o'
          end
          object Label5: TLabel [5]
            Left = 15
            Top = 139
            Width = 67
            Height = 16
            Caption = 'Observa'#231#227'o'
          end
          object Label19: TLabel [6]
            Left = 144
            Top = 18
            Width = 71
            Height = 16
            Caption = 'Raz'#227'o social'
          end
          object dbeNome: TDBEdit
            Left = 535
            Top = 40
            Width = 380
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NOMEFANTASIA'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object dbeCodInterno: TDBEdit
            Left = 144
            Top = 106
            Width = 122
            Height = 24
            DataField = 'CODIGOINTERNO'
            DataSource = dsPadrao
            TabOrder = 4
          end
          object DBEdit1: TDBEdit
            Left = 272
            Top = 106
            Width = 111
            Height = 24
            Color = clInfoBk
            DataField = 'DATCADASTRO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 5
          end
          object DBEdit3: TDBEdit
            Left = 391
            Top = 106
            Width = 149
            Height = 24
            Color = clInfoBk
            DataField = 'DATULTMOVIMENTACAO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 6
          end
          object dbeObservacao: TDBMemo
            Left = 14
            Top = 157
            Width = 901
            Height = 59
            DataField = 'OBSERVACAO'
            DataSource = dsPadrao
            TabOrder = 7
          end
          object dbrTipoCliente: TDBRadioGroup
            Left = 14
            Top = 93
            Width = 123
            Height = 37
            Caption = 'Tipo do cliente'
            Columns = 2
            DataField = 'TIPOPESSOA'
            DataSource = dsPadrao
            Items.Strings = (
              'PF'
              'PJ')
            ParentBackground = True
            TabOrder = 3
            Values.Strings = (
              'F'
              'J')
          end
          object dbcStatus: TDBCheckBox
            Left = 858
            Top = 3
            Width = 57
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Ativo'
            DataField = 'STATUS'
            DataSource = dsPadrao
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit2: TDBEdit
            Left = 144
            Top = 40
            Width = 381
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NOME'
            DataSource = dsPadrao
            TabOrder = 1
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Dados pessoais'
          ImageIndex = 4
          DesignSize = (
            939
            234)
          object Label13: TLabel
            Left = 14
            Top = 65
            Width = 55
            Height = 16
            Caption = 'CPF/CNPJ'
          end
          object Label14: TLabel
            Left = 312
            Top = 65
            Width = 50
            Height = 16
            Caption = 'Telefone'
          end
          object Label15: TLabel
            Left = 431
            Top = 65
            Width = 40
            Height = 16
            Caption = 'Celular'
          end
          object Label17: TLabel
            Left = 548
            Top = 63
            Width = 93
            Height = 16
            Caption = 'Data anivers'#225'rio'
          end
          object Label4: TLabel
            Left = 14
            Top = 13
            Width = 31
            Height = 16
            Caption = 'Email'
          end
          object Label25: TLabel
            Left = 132
            Top = 65
            Width = 75
            Height = 16
            Caption = 'Insc.Estadual'
          end
          object dbeCpfCnpj: TDBEdit
            Left = 14
            Top = 84
            Width = 110
            Height = 24
            DataField = 'CPFCNPJ'
            DataSource = dsPadrao
            MaxLength = 14
            TabOrder = 1
            OnKeyPress = dbeCpfCnpjKeyPress
          end
          object dbeTelefone: TDBEdit
            Left = 313
            Top = 84
            Width = 110
            Height = 24
            DataField = 'NUMTELEFONE'
            DataSource = dsPadrao
            MaxLength = 11
            TabOrder = 3
            OnKeyPress = dbeTelefoneKeyPress
          end
          object dbeCelular: TDBEdit
            Left = 432
            Top = 84
            Width = 110
            Height = 24
            DataField = 'NUMCELULAR'
            DataSource = dsPadrao
            MaxLength = 11
            TabOrder = 4
            OnKeyPress = dbeCelularKeyPress
          end
          object dbeEmail: TDBEdit
            Left = 14
            Top = 33
            Width = 899
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'EMAIL'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object dbeAniversario: TDBEdit
            Left = 550
            Top = 84
            Width = 97
            Height = 24
            Hint = 'Deixar a data neste formato: ex: 01/01/2001'
            DataField = 'DATANIVERSARIO'
            DataSource = dsPadrao
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 132
            Top = 84
            Width = 173
            Height = 24
            DataField = 'INSESTADUAL'
            DataSource = dsPadrao
            MaxLength = 14
            TabOrder = 2
            OnKeyPress = dbeCpfCnpjKeyPress
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 2
          DesignSize = (
            939
            234)
          object Label6: TLabel
            Left = 11
            Top = 15
            Width = 22
            Height = 16
            Caption = 'CEP'
          end
          object Label7: TLabel
            Left = 161
            Top = 15
            Width = 65
            Height = 16
            Caption = 'Logradouro'
          end
          object Label8: TLabel
            Left = 809
            Top = 15
            Width = 14
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'N'#186
          end
          object Label9: TLabel
            Left = 11
            Top = 71
            Width = 79
            Height = 16
            Caption = 'Complemento'
          end
          object Label10: TLabel
            Left = 336
            Top = 71
            Width = 34
            Height = 16
            Caption = 'Bairro'
          end
          object Label11: TLabel
            Left = 11
            Top = 127
            Width = 39
            Height = 16
            Caption = 'Cidade'
          end
          object Label12: TLabel
            Left = 450
            Top = 127
            Width = 15
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'UF'
          end
          object Label20: TLabel
            Left = 11
            Top = 180
            Width = 39
            Height = 16
            Caption = 'Regi'#227'o'
          end
          object Label21: TLabel
            Left = 491
            Top = 180
            Width = 31
            Height = 16
            Caption = 'Setor'
          end
          object sbRegiao: TSpeedButton
            Left = 462
            Top = 202
            Width = 23
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
          object sbSetor: TSpeedButton
            Left = 897
            Top = 202
            Width = 23
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
          object Label22: TLabel
            Left = 493
            Top = 122
            Width = 26
            Height = 16
            Caption = 'Rota'
          end
          object SpeedButton1: TSpeedButton
            Left = 942
            Top = 144
            Width = 23
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
            OnClick = sbSetorClick
          end
          object sbRota: TSpeedButton
            Left = 897
            Top = 144
            Width = 23
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
            OnClick = sbRotaClick
          end
          object dbeCep: TDBEdit
            Left = 11
            Top = 32
            Width = 142
            Height = 24
            DataField = 'LOGRADOUROCEP'
            DataSource = dsPadrao
            MaxLength = 8
            TabOrder = 0
            OnChange = dbeCepChange
          end
          object dbeLogradouro: TDBEdit
            Left = 161
            Top = 32
            Width = 640
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'LOGRADOURO'
            DataSource = dsPadrao
            TabOrder = 1
          end
          object dbeNum: TDBEdit
            Left = 809
            Top = 32
            Width = 111
            Height = 24
            Anchors = [akTop, akRight]
            DataField = 'LOGRADOURONUM'
            DataSource = dsPadrao
            MaxLength = 8
            TabOrder = 2
            OnKeyPress = dbeNumKeyPress
          end
          object dbeComp: TDBEdit
            Left = 11
            Top = 88
            Width = 318
            Height = 24
            DataField = 'LOGRADOUROCOMP'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object dbeBairro: TDBEdit
            Left = 336
            Top = 88
            Width = 584
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'LOGRADOUROBAIRRO'
            DataSource = dsPadrao
            TabOrder = 4
          end
          object dbeCidade: TDBEdit
            Left = 11
            Top = 144
            Width = 434
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'LOGRADOUROCIDADE'
            DataSource = dsPadrao
            TabOrder = 5
          end
          object dbeUf: TDBEdit
            Left = 451
            Top = 144
            Width = 34
            Height = 24
            Anchors = [akTop, akRight]
            DataField = 'LOGRADOUROUF'
            DataSource = dsPadrao
            TabOrder = 6
          end
          object dbeRegiao: TDBEdit
            Left = 13
            Top = 202
            Width = 77
            Height = 24
            DataField = 'ID_REGIAO'
            DataSource = dsPadrao
            MaxLength = 8
            TabOrder = 9
            OnChange = dbeRegiaoChange
            OnKeyPress = dbeRegiaoKeyPress
          end
          object dbeSetor: TDBEdit
            Left = 493
            Top = 202
            Width = 77
            Height = 24
            Anchors = [akTop, akRight]
            DataField = 'ID_SETOR'
            DataSource = dsPadrao
            MaxLength = 8
            TabOrder = 11
            OnChange = dbeSetorChange
            OnKeyPress = dbeSetorKeyPress
          end
          object edtRegiao: TEdit
            AlignWithMargins = True
            Left = 96
            Top = 202
            Width = 363
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            Color = clInfoBk
            Enabled = False
            TabOrder = 10
          end
          object edtSetor: TEdit
            AlignWithMargins = True
            Left = 576
            Top = 202
            Width = 315
            Height = 24
            Anchors = [akTop, akRight]
            Color = clInfoBk
            Enabled = False
            TabOrder = 12
          end
          object dbeRota: TDBEdit
            Left = 495
            Top = 144
            Width = 77
            Height = 24
            Anchors = [akTop, akRight]
            DataField = 'ID_ROTA'
            DataSource = dsPadrao
            MaxLength = 8
            TabOrder = 7
            OnChange = dbeRotaChange
          end
          object edtRota: TEdit
            AlignWithMargins = True
            Left = 578
            Top = 144
            Width = 313
            Height = 24
            Anchors = [akTop, akRight]
            Color = clInfoBk
            Enabled = False
            TabOrder = 8
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Outras informa'#231#245'es'
          ImageIndex = 3
          object Label23: TLabel
            Left = 11
            Top = 15
            Width = 136
            Height = 16
            Caption = 'Comprador respons'#225'vel'
          end
          object Label24: TLabel
            Left = 11
            Top = 71
            Width = 217
            Height = 16
            Caption = '(%) Percentual de desconto especial  '
          end
          object DBEdit4: TDBEdit
            Left = 11
            Top = 32
            Width = 534
            Height = 24
            DataField = 'COMPRADORRESP'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 11
            Top = 88
            Width = 217
            Height = 24
            DataField = 'VLRDESCESPECIAL'
            DataSource = dsPadrao
            TabOrder = 1
          end
        end
      end
    end
    inherited Panel2: TPanel
      inherited DBNavigator1: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited dsPadrao: TDataSource
    Left = 592
    Top = 64
  end
  inherited pmSearch: TPopupMenu
    Left = 432
    Top = 88
  end
  inherited ImageList1: TImageList
    Left = 672
    Top = 64
    Bitmap = {
      494C010101002400A40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF75
      1800BF75180000000000F7F0DC00F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B86B0A00E8B5
      7800F6DA9F00BF75180000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B86B0A00DFAB6D00DEA6
      3E00E3AD4100F6DA9F00BF751800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF751800BF751800BF751800E5AE
      4100F3D79E00C88D3000C7852B00BD7E300000000000E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800EAB3
      4400F6DA9F00C68B2F00000000000000000000000000E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800EEB7
      4700F8DB9F00BD7E300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800F0BA
      4900F8DA9C00C7852B0000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800F1BD
      4C00F8D99700C68B2F0000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800EAB3
      4400F6DA9F00C68B2F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800EEB7
      4700F8DB9F00BD7E300000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800F0BA
      4900F8DA9C00C7852B0000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800F1BD
      4C00F8D99700C68B2F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF751800F7D9
      9A00F7D69200C68B2F0000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD7E3000C68B
      2F00C38A3400BD7E300000000000F2EAD500EBE1CD00E2D7C200DBCDB900D3C3
      B000CBBAA600C3B19D00BEAA9600BEAA96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000E400000000000000
      C20000000000000081FF0000000000000080000000000000C380000000000000
      C3FF000000000000C200000000000000C200000000000000C3FF000000000000
      C200000000000000C200000000000000C3FF000000000000C200000000000000
      C200000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
