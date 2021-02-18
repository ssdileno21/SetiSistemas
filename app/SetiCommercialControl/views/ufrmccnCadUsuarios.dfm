inherited frmccnCadUsuarios: TfrmccnCadUsuarios
  Tag = 2
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 461
  ClientWidth = 777
  Color = clWindow
  ExplicitWidth = 793
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 777
    Height = 199
    ExplicitWidth = 777
    ExplicitHeight = 199
    object lbCodUnico: TLabel
      Left = 12
      Top = 38
      Width = 48
      Height = 13
      Caption = 'C'#243'd.'#250'nico'
    end
    object lbNomFantasia: TLabel
      Left = 12
      Top = 84
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbRazaoSocial: TLabel
      Left = 11
      Top = 131
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label1: TLabel
      Left = 518
      Top = 131
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Senha'
    end
    object dbeCodUnico: TDBEdit
      Tag = 1
      Left = 11
      Top = 57
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
      Left = 11
      Top = 103
      Width = 734
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOME'
      DataSource = dsStandard
      TabOrder = 1
    end
    object dbeRazaoSocial: TDBEdit
      Tag = 1
      Left = 12
      Top = 150
      Width = 485
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'LOGIN'
      DataSource = dsStandard
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Tag = 1
      Left = 519
      Top = 150
      Width = 226
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'SENHA'
      DataSource = dsStandard
      PasswordChar = '*'
      TabOrder = 3
    end
  end
  inherited Panel4: TPanel
    Width = 777
    ExplicitWidth = 777
    inherited DBNavigator1: TDBNavigator
      Width = 769
      Hints.Strings = ()
      ExplicitWidth = 769
    end
  end
  inherited SFPanel1: TSFPanel
    Top = 430
    Width = 777
    ExplicitTop = 430
    ExplicitWidth = 777
  end
  inherited Panel2: TPanel
    Top = 244
    Width = 777
    ExplicitTop = 244
    ExplicitWidth = 777
    inherited DBGrid1: TDBGrid
      Width = 771
    end
  end
  inherited sqlStandard: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM TBCADUSUARIO '
      'ORDER BY ID DESC'
      '')
  end
end
