inherited frmccnCadClientes: TfrmccnCadClientes
  Tag = 4
  Caption = 'Cadastro de clientes'
  ClientHeight = 532
  ClientWidth = 1000
  ExplicitWidth = 1016
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1000
    Height = 270
    ExplicitWidth = 1000
    ExplicitHeight = 270
    object lbCodUnico: TLabel
      Left = 12
      Top = 6
      Width = 48
      Height = 13
      Caption = 'C'#243'd.'#250'nico'
    end
    object lbNomFantasia: TLabel
      Left = 449
      Top = 6
      Width = 69
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Nome fantasia'
    end
    object Label1: TLabel
      Left = 84
      Top = 6
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Raz'#227'o social'
    end
    object Label2: TLabel
      Left = 814
      Top = 6
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'C'#243'd.Interno'
    end
    object dbeCodUnico: TDBEdit
      Tag = 1
      Left = 11
      Top = 25
      Width = 65
      Height = 21
      Color = clSilver
      DataField = 'ID'
      DataSource = dsStandard
      Enabled = False
      TabOrder = 0
    end
    object dbeNomeFantasia: TDBEdit
      Tag = 1
      Left = 449
      Top = 25
      Width = 357
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'NOMEFANTASIA'
      DataSource = dsStandard
      TabOrder = 2
    end
    object dbeRzSocial: TDBEdit
      Tag = 1
      Left = 84
      Top = 25
      Width = 357
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOME'
      DataSource = dsStandard
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Tag = 1
      Left = 814
      Top = 25
      Width = 163
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'CODIGOINTERNO'
      DataSource = dsStandard
      TabOrder = 3
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 52
      Width = 992
      Height = 214
      ActivePage = TabSheet4
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 4
      object TabSheet1: TTabSheet
        Caption = 'Dados b'#225'sicos'
        DesignSize = (
          984
          186)
        object Label16: TLabel
          Left = 140
          Top = 10
          Width = 85
          Height = 13
          Caption = 'Data do Cadastro'
        end
        object Label18: TLabel
          Left = 259
          Top = 10
          Width = 95
          Height = 13
          Caption = 'Data movimenta'#231#227'o'
        end
        object Label3: TLabel
          Left = 13
          Top = 74
          Width = 102
          Height = 13
          Caption = 'Descri'#231#227'o do produto'
        end
        object dbrTipoCliente: TDBRadioGroup
          Left = 11
          Top = 18
          Width = 123
          Height = 40
          Caption = 'Tipo do cliente'
          Columns = 2
          DataField = 'TIPOPESSOA'
          DataSource = dsStandard
          Items.Strings = (
            'PF'
            'PJ')
          ParentBackground = True
          TabOrder = 0
          Values.Strings = (
            'F'
            'J')
        end
        object DBEdit3: TDBEdit
          Left = 140
          Top = 29
          Width = 111
          Height = 21
          Color = clInfoBk
          DataField = 'DATCADASTRO'
          DataSource = dsStandard
          Enabled = False
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 259
          Top = 29
          Width = 182
          Height = 21
          Color = clInfoBk
          DataField = 'DATULTMOVIMENTACAO'
          DataSource = dsStandard
          Enabled = False
          TabOrder = 2
        end
        object dbmDescricao: TDBMemo
          Left = 13
          Top = 93
          Width = 956
          Height = 76
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'OBSERVACAO'
          DataSource = dsStandard
          TabOrder = 3
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dados pessoais'
        ImageIndex = 1
        DesignSize = (
          984
          186)
        object Label5: TLabel
          Left = 14
          Top = 14
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object Label6: TLabel
          Left = 441
          Top = 14
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'CPF/CNPJ'
        end
        object Label7: TLabel
          Left = 561
          Top = 14
          Width = 65
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Insc.Estadual'
        end
        object Label8: TLabel
          Left = 742
          Top = 14
          Width = 42
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Telefone'
        end
        object Label9: TLabel
          Left = 859
          Top = 14
          Width = 33
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Celular'
        end
        object Label10: TLabel
          Left = 14
          Top = 56
          Width = 79
          Height = 13
          Caption = 'Data anivers'#225'rio'
        end
        object DBEdit5: TDBEdit
          Left = 14
          Top = 29
          Width = 419
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'EMAIL'
          DataSource = dsStandard
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 441
          Top = 29
          Width = 110
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CPFCNPJ'
          DataSource = dsStandard
          MaxLength = 14
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 561
          Top = 29
          Width = 173
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'INSESTADUAL'
          DataSource = dsStandard
          MaxLength = 14
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 742
          Top = 29
          Width = 110
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'NUMTELEFONE'
          DataSource = dsStandard
          MaxLength = 11
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 859
          Top = 29
          Width = 110
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'NUMCELULAR'
          DataSource = dsStandard
          MaxLength = 11
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 14
          Top = 73
          Width = 97
          Height = 21
          Hint = 'Deixar a data neste formato: ex: 01/01/2001'
          DataField = 'DATANIVERSARIO'
          DataSource = dsStandard
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Endere'#231'os'
        ImageIndex = 2
        DesignSize = (
          984
          186)
        object Label11: TLabel
          Left = 11
          Top = 4
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label12: TLabel
          Left = 161
          Top = 4
          Width = 55
          Height = 13
          Caption = 'Logradouro'
        end
        object Label19: TLabel
          Left = 809
          Top = 4
          Width = 12
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'N'#186
        end
        object Label20: TLabel
          Left = 11
          Top = 49
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object Label21: TLabel
          Left = 336
          Top = 49
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label22: TLabel
          Left = 11
          Top = 96
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label23: TLabel
          Left = 11
          Top = 138
          Width = 33
          Height = 13
          Caption = 'Regi'#227'o'
        end
        object Label24: TLabel
          Left = 451
          Top = 96
          Width = 13
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'UF'
        end
        object Label26: TLabel
          Left = 495
          Top = 96
          Width = 23
          Height = 13
          Caption = 'Rota'
        end
        object Label27: TLabel
          Left = 451
          Top = 138
          Width = 26
          Height = 13
          Caption = 'Setor'
        end
        object sbRota: TSpeedButton
          Left = 946
          Top = 110
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
        object sbRegiao: TSpeedButton
          Left = 419
          Top = 153
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
          Left = 946
          Top = 153
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
        object dbeCep: TDBEdit
          Left = 11
          Top = 21
          Width = 142
          Height = 21
          DataField = 'LOGRADOUROCEP'
          DataSource = dsStandard
          MaxLength = 8
          TabOrder = 0
        end
        object dbeLogradouro: TDBEdit
          Left = 161
          Top = 21
          Width = 640
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'LOGRADOURO'
          DataSource = dsStandard
          TabOrder = 1
        end
        object dbeNum: TDBEdit
          Left = 809
          Top = 21
          Width = 160
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOURONUM'
          DataSource = dsStandard
          MaxLength = 8
          TabOrder = 2
        end
        object dbeComp: TDBEdit
          Left = 11
          Top = 66
          Width = 318
          Height = 21
          DataField = 'LOGRADOUROCOMP'
          DataSource = dsStandard
          TabOrder = 3
        end
        object dbeBairro: TDBEdit
          Left = 336
          Top = 66
          Width = 633
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'LOGRADOUROBAIRRO'
          DataSource = dsStandard
          TabOrder = 4
        end
        object dbeCidade: TDBEdit
          Left = 11
          Top = 113
          Width = 434
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'LOGRADOUROCIDADE'
          DataSource = dsStandard
          TabOrder = 5
        end
        object dbeRegiao: TDBEdit
          Left = 11
          Top = 155
          Width = 77
          Height = 21
          DataField = 'ID_REGIAO'
          DataSource = dsStandard
          MaxLength = 8
          TabOrder = 9
          OnChange = dbeRegiaoChange
          OnKeyPress = dbeRegiaoKeyPress
        end
        object dbeUf: TDBEdit
          Left = 451
          Top = 113
          Width = 34
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'LOGRADOUROUF'
          DataSource = dsStandard
          TabOrder = 6
        end
        object dbeRota: TDBEdit
          Left = 495
          Top = 113
          Width = 77
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ID_ROTA'
          DataSource = dsStandard
          MaxLength = 8
          TabOrder = 7
          OnChange = dbeRotaChange
          OnKeyPress = dbeRotaKeyPress
        end
        object dbeSetor: TDBEdit
          Left = 451
          Top = 155
          Width = 77
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ID_SETOR'
          DataSource = dsStandard
          MaxLength = 8
          TabOrder = 11
          OnChange = dbeSetorChange
          OnKeyPress = dbeSetorKeyPress
        end
        object edtRota: TEdit
          AlignWithMargins = True
          Left = 574
          Top = 113
          Width = 368
          Height = 21
          Anchors = [akTop, akRight]
          Color = clInfoBk
          Enabled = False
          TabOrder = 8
        end
        object edtRegiao: TEdit
          AlignWithMargins = True
          Left = 90
          Top = 155
          Width = 326
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clInfoBk
          Enabled = False
          TabOrder = 10
        end
        object edtSetor: TEdit
          AlignWithMargins = True
          Left = 530
          Top = 155
          Width = 412
          Height = 21
          Anchors = [akTop, akRight]
          Color = clInfoBk
          Enabled = False
          TabOrder = 12
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Outras informa'#231#245'es'
        ImageIndex = 3
        object Label28: TLabel
          Left = 11
          Top = 15
          Width = 114
          Height = 13
          Caption = 'Comprador respons'#225'vel'
        end
        object Label29: TLabel
          Left = 11
          Top = 63
          Width = 182
          Height = 13
          Caption = '(%) Percentual de desconto especial  '
        end
        object DBEdit12: TDBEdit
          Left = 11
          Top = 32
          Width = 278
          Height = 21
          DataField = 'COMPRADORRESP'
          DataSource = dsStandard
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 11
          Top = 82
          Width = 278
          Height = 21
          DataField = 'VLRDESCESPECIAL'
          DataSource = dsStandard
          TabOrder = 1
        end
      end
    end
  end
  inherited Panel4: TPanel
    Width = 1000
    ExplicitWidth = 1000
    inherited DBNavigator1: TDBNavigator
      Width = 992
      Hints.Strings = ()
      OnClick = DBNavigator1Click
      ExplicitWidth = 992
    end
  end
  inherited SFPanel1: TSFPanel
    Top = 501
    Width = 1000
    ExplicitTop = 501
    ExplicitWidth = 1000
  end
  inherited Panel2: TPanel
    Top = 315
    Width = 1000
    ExplicitTop = 315
    ExplicitWidth = 1000
    inherited DBGrid1: TDBGrid
      Width = 994
    end
  end
  inherited sqlStandard: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM TBCADCLIENTES'
      'ORDER BY ID DESC')
  end
end
