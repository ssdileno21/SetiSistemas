object frmTestePesquisa: TfrmTestePesquisa
  Left = 0
  Top = 0
  Caption = 'frmTestePesquisa'
  ClientHeight = 164
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lCodCliente: TLabel
    Left = 8
    Top = 37
    Width = 59
    Height = 13
    Caption = 'C'#243'd. Cliente'
  end
  object lNomCliente: TLabel
    Left = 8
    Top = 93
    Width = 63
    Height = 13
    Caption = 'Nome Cliente'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 451
    Height = 25
    DataSource = dsCliente
    Align = alTop
    Kind = dbnHorizontal
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 56
    Width = 121
    Height = 21
    DataField = 'IDCLIENTE'
    DataSource = dsCliente
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 112
    Width = 433
    Height = 21
    DataField = 'NOMECLIENTE'
    DataSource = dsCliente
    TabOrder = 2
  end
  object Button1: TButton
    Left = 336
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Button1'
    DropDownMenu = PopupMenu1
    Style = bsSplitButton
    TabOrder = 3
  end
  object dsCliente: TDataSource
    DataSet = adocliente
    Left = 224
    Top = 32
  end
  object adocliente: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [IDCLIENTE]'
      '      ,[NOMECLIENTE]'
      '  FROM [dbo].[TBCLIENTE]')
    Left = 272
    Top = 32
    object adoclienteIDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'IDCLIENTE'
    end
    object adoclienteNOMECLIENTE: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=sfdb;Data Source=setisistemas\sqlexpres' +
      's'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 160
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 96
    object PorCodigo: TMenuItem
      Caption = 'Pesquisar por c'#243'digo'
      OnClick = PorCodigoClick
    end
    object porNome: TMenuItem
      Caption = 'Pesquisa por nome'
      OnClick = porNomeClick
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 296
    Top = 104
  end
  object dspCliente: TDataSetProvider
    DataSet = adocliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 80
    Top = 80
  end
end