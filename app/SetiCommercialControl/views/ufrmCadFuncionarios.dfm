inherited frmCadFuncionarios: TfrmCadFuncionarios
  Caption = 'frmCadFuncionarios'
  ExplicitWidth = 967
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited PageControl1: TPageControl
        ActivePage = TabSheet3
        inherited TabSheet1: TTabSheet
          Caption = 'Dados b'#225'sicos'
          ExplicitLeft = 4
          ExplicitTop = 27
          ExplicitWidth = 939
          ExplicitHeight = 234
          object Label2: TLabel [1]
            Left = 143
            Top = 18
            Width = 33
            Height = 16
            Caption = 'Nome'
          end
          object Label3: TLabel [2]
            Left = 14
            Top = 87
            Width = 83
            Height = 16
            Caption = 'C'#243'digo interno'
          end
          object Label16: TLabel [3]
            Left = 143
            Top = 87
            Width = 99
            Height = 16
            Caption = 'Data do Cadastro'
          end
          object Label18: TLabel [4]
            Left = 262
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
          object dbeNome: TDBEdit
            Left = 143
            Top = 40
            Width = 772
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'NOME'
            DataSource = dsPadrao
            TabOrder = 1
          end
          object dbeCodInterno: TDBEdit
            Left = 15
            Top = 106
            Width = 122
            Height = 24
            DataField = 'CODIGOINTERNO'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 143
            Top = 106
            Width = 111
            Height = 24
            Color = clInfoBk
            DataField = 'DATCADASTRO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 262
            Top = 106
            Width = 149
            Height = 24
            Color = clInfoBk
            DataField = 'DATULTMOVIMENTACAO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 4
          end
          object dbeObservacao: TDBMemo
            Left = 14
            Top = 157
            Width = 901
            Height = 59
            DataField = 'OBSERVACAO'
            DataSource = dsPadrao
            TabOrder = 5
          end
          object dbcStatus: TDBCheckBox
            Left = 858
            Top = 0
            Width = 57
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Ativo'
            DataField = 'STATUS'
            DataSource = dsPadrao
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
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
            Width = 22
            Height = 16
            Caption = 'CPF'
          end
          object Label14: TLabel
            Left = 130
            Top = 65
            Width = 50
            Height = 16
            Caption = 'Telefone'
          end
          object Label15: TLabel
            Left = 249
            Top = 65
            Width = 40
            Height = 16
            Caption = 'Celular'
          end
          object Label17: TLabel
            Left = 366
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
          object dbeCpfCnpj: TDBEdit
            Left = 14
            Top = 84
            Width = 110
            Height = 24
            DataField = 'CPFCNPJ'
            DataSource = dsPadrao
            MaxLength = 11
            TabOrder = 1
            OnKeyPress = dbeCpfCnpjKeyPress
          end
          object dbeTelefone: TDBEdit
            Left = 131
            Top = 84
            Width = 110
            Height = 24
            DataField = 'NUMTELEFONE'
            DataSource = dsPadrao
            MaxLength = 11
            TabOrder = 2
            OnKeyPress = dbeTelefoneKeyPress
          end
          object dbeCelular: TDBEdit
            Left = 250
            Top = 84
            Width = 110
            Height = 24
            DataField = 'NUMCELULAR'
            DataSource = dsPadrao
            MaxLength = 11
            TabOrder = 3
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
            Left = 368
            Top = 84
            Width = 97
            Height = 24
            Hint = 'Deixar a data neste formato: ex: 01/01/2001'
            DataField = 'DATANIVERSARIO'
            DataSource = dsPadrao
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
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
            Left = 808
            Top = 127
            Width = 15
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'UF'
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
            OnKeyPress = dbeCepKeyPress
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
            Width = 790
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'LOGRADOUROCIDADE'
            DataSource = dsPadrao
            TabOrder = 5
          end
          object dbeUf: TDBEdit
            Left = 809
            Top = 144
            Width = 111
            Height = 24
            Anchors = [akTop, akRight]
            DataField = 'LOGRADOUROUF'
            DataSource = dsPadrao
            TabOrder = 6
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Outras informa'#231#245'es'
          ImageIndex = 3
          object Label19: TLabel
            Left = 13
            Top = 11
            Width = 84
            Height = 16
            Caption = 'Data admiss'#227'o'
          end
          object Label20: TLabel
            Left = 118
            Top = 11
            Width = 106
            Height = 16
            Caption = 'Data desligamento'
          end
          object dbcbxVendedor: TDBCheckBox
            Left = 13
            Top = 72
            Width = 83
            Height = 17
            Caption = 'Vendedor'
            DataField = 'VENDEDOR'
            DataSource = dsPadrao
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbcbxTecnico: TDBCheckBox
            Left = 13
            Top = 95
            Width = 83
            Height = 17
            Caption = 'T'#233'cnico'
            DataField = 'TECNICO'
            DataSource = dsPadrao
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbeDatAdminissao: TDBEdit
            Left = 13
            Top = 30
            Width = 97
            Height = 24
            Hint = 'Deixar a data neste formato: ex: 01/01/2001'
            DataField = 'DATADMISSAO'
            DataSource = dsPadrao
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object dbeDatDesligamento: TDBEdit
            Left = 118
            Top = 30
            Width = 106
            Height = 24
            Hint = 'Deixar a data neste formato: ex: 01/01/2001'
            DataField = 'DATDESLIGAMENTO'
            DataSource = dsPadrao
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
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
  inherited ImageList1: TImageList
    Bitmap = {
      494C010101002400540010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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