inherited frmCadProdutos: TfrmCadProdutos
  Caption = 'frmCadProdutos'
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Panel5: TPanel
      inherited PageControl1: TPageControl
        inherited TabSheet1: TTabSheet
          Caption = 'Dados b'#225'sicos'
          object Label2: TLabel [1]
            Left = 143
            Top = 18
            Width = 33
            Height = 16
            Caption = 'Nome'
          end
          object Label3: TLabel [2]
            Left = 14
            Top = 85
            Width = 83
            Height = 16
            Caption = 'C'#243'digo interno'
          end
          object Label4: TLabel [3]
            Left = 143
            Top = 85
            Width = 98
            Height = 16
            Caption = 'C'#243'digo de barras'
          end
          object Label5: TLabel [4]
            Left = 14
            Top = 141
            Width = 121
            Height = 16
            Caption = 'Descri'#231#227'o do produto'
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
            Top = 104
            Width = 122
            Height = 24
            DataField = 'CODIGOINTERNO'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object dbeCodigoBarras: TDBEdit
            Left = 143
            Top = 104
            Width = 772
            Height = 24
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CODIGOBARRAS'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object dbmDescricao: TDBMemo
            Left = 14
            Top = 163
            Width = 901
            Height = 56
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'DESCRICAO'
            DataSource = dsPadrao
            TabOrder = 4
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
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Valores'
          ImageIndex = 1
          object Label6: TLabel
            Left = 15
            Top = 21
            Width = 82
            Height = 16
            Caption = 'Valor de custo'
          end
          object Label7: TLabel
            Left = 14
            Top = 72
            Width = 193
            Height = 16
            Caption = 'Despesas (Frete/Seguros/Outros)'
          end
          object Label8: TLabel
            Left = 14
            Top = 123
            Width = 95
            Height = 16
            Caption = 'Outras despesas'
          end
          object Label9: TLabel
            Left = 15
            Top = 174
            Width = 60
            Height = 16
            Caption = 'Custo final'
          end
          object Label10: TLabel
            Left = 446
            Top = 21
            Width = 116
            Height = 16
            Caption = 'Lucro requerido (%)'
          end
          object Label11: TLabel
            Left = 446
            Top = 72
            Width = 139
            Height = 16
            Caption = 'Valor de venda sugerido'
          end
          object Label12: TLabel
            Left = 446
            Top = 123
            Width = 137
            Height = 16
            Caption = 'Valor de venda utilizado'
          end
          object Label17: TLabel
            Left = 446
            Top = 176
            Width = 161
            Height = 16
            Caption = 'Percentual de comiss'#227'o (%)'
            Color = clInfoBk
            Enabled = False
            ParentColor = False
          end
          object dbeVlrCusto: TDBEdit
            Left = 15
            Top = 42
            Width = 409
            Height = 24
            DataField = 'VLRCUSTO'
            DataSource = dsPadrao
            TabOrder = 0
            OnExit = dbeVlrCustoExit
          end
          object dbeVlrDespesas: TDBEdit
            Left = 15
            Top = 91
            Width = 409
            Height = 24
            DataField = 'VLRDESPESAS'
            DataSource = dsPadrao
            TabOrder = 1
            OnExit = dbeVlrDespesasExit
          end
          object dbeVlrOutrasDespesas: TDBEdit
            Left = 15
            Top = 142
            Width = 409
            Height = 24
            DataField = 'VLRDESPESASOUTROS'
            DataSource = dsPadrao
            TabOrder = 2
            OnExit = dbeVlrOutrasDespesasExit
          end
          object dbeVlrCustoFinal: TDBEdit
            Left = 15
            Top = 195
            Width = 409
            Height = 24
            Color = clInfoBk
            DataField = 'VLRCUSTOFINAL'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 3
          end
          object dbePercLucroRequerido: TDBEdit
            Left = 446
            Top = 42
            Width = 409
            Height = 24
            DataField = 'VLRLUCROREQUERIDO'
            DataSource = dsPadrao
            TabOrder = 4
            OnExit = dbePercLucroRequeridoExit
          end
          object dbeVlrVendaSugerido: TDBEdit
            Left = 446
            Top = 91
            Width = 409
            Height = 24
            Color = clInfoBk
            DataField = 'VLRVENDASUGERIDO'
            DataSource = dsPadrao
            Enabled = False
            TabOrder = 5
          end
          object dbeVlrVendaUtilizado: TDBEdit
            Left = 447
            Top = 145
            Width = 409
            Height = 24
            DataField = 'VLRVENDAUTILIZADO'
            DataSource = dsPadrao
            TabOrder = 6
          end
          object dbePercComissao: TDBEdit
            Left = 447
            Top = 195
            Width = 409
            Height = 24
            Color = clInfoBk
            Enabled = False
            TabOrder = 7
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Pesos/Dimens'#245'es'
          ImageIndex = 2
          object Label13: TLabel
            Left = 15
            Top = 21
            Width = 154
            Height = 16
            Caption = 'Peso (kg) -  (N'#227'o utilizado)'
          end
          object Label14: TLabel
            Left = 15
            Top = 73
            Width = 169
            Height = 16
            Caption = 'Largura (m) -  (N'#227'o utilizado)'
          end
          object Label15: TLabel
            Left = 15
            Top = 124
            Width = 159
            Height = 16
            Caption = 'Altura (m) -  (N'#227'o utilizado)'
          end
          object Label16: TLabel
            Left = 439
            Top = 21
            Width = 202
            Height = 16
            Caption = 'Comprimento (m) -  (N'#227'o utilizado)'
          end
          object Label18: TLabel
            Left = 439
            Top = 73
            Width = 253
            Height = 16
            Caption = 'Unidade de venda utilizada -  (N'#227'o utilizado)'
          end
          object dbePeso: TDBEdit
            Left = 16
            Top = 40
            Width = 409
            Height = 24
            DataField = 'PESO'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object dbeLargura: TDBEdit
            Left = 16
            Top = 92
            Width = 409
            Height = 24
            DataField = 'LARGURA'
            DataSource = dsPadrao
            TabOrder = 1
          end
          object dbeAltura: TDBEdit
            Left = 16
            Top = 143
            Width = 409
            Height = 24
            DataField = 'ALTURA'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object dbeCumprimento: TDBEdit
            Left = 440
            Top = 40
            Width = 371
            Height = 24
            DataField = 'COMPRIMENTO'
            DataSource = dsPadrao
            TabOrder = 3
          end
          object dbeUnidadeVendaUtilizada: TDBEdit
            Left = 440
            Top = 92
            Width = 371
            Height = 24
            DataField = 'UNIDADEVENDA'
            DataSource = dsPadrao
            TabOrder = 4
          end
        end
        object tbsParametros: TTabSheet
          Caption = 'Par'#226'metros'
          ImageIndex = 3
          object Label19: TLabel
            Left = 14
            Top = 117
            Width = 177
            Height = 16
            Caption = 'Quantidade de estoque inicial: '
          end
          object dbcbxMovEstoque: TDBCheckBox
            Left = 16
            Top = 24
            Width = 137
            Height = 17
            Caption = 'Movimenta estoque'
            DataField = 'MOVIMENTAESTOQUE'
            DataSource = dsPadrao
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbcbxAlteraPrecoDurantVenda: TDBCheckBox
            Left = 16
            Top = 55
            Width = 298
            Height = 17
            Caption = 'Altera pre'#231'o durante a venda  (N'#227'o utilizado)'
            DataField = 'ALTERAPRECONAVENDA'
            DataSource = dsPadrao
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dbeEstoqueInicial: TDBEdit
            Left = 192
            Top = 114
            Width = 122
            Height = 24
            DataField = 'QTDESTOQUEINICIAL'
            DataSource = dsPadrao
            TabOrder = 2
          end
          object dbcbxUtilizarEmServicos: TDBCheckBox
            Left = 16
            Top = 85
            Width = 137
            Height = 17
            Caption = 'Utilizar em servi'#231'os'
            DataField = 'UTILIZAREMSERVICOS'
            DataSource = dsPadrao
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
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
    Left = 888
    Top = 168
  end
  inherited pmSearch: TPopupMenu
    Left = 784
    Top = 32
  end
  inherited ImageList1: TImageList
    Left = 896
    Top = 96
    Bitmap = {
      494C010101002400900010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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