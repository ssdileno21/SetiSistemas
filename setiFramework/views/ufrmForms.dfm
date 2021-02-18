object frmForms: TfrmForms
  Left = 0
  Top = 0
  Caption = 'Controle de Forms'
  ClientHeight = 475
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 29
    Width = 565
    Height = 446
    Align = alClient
    TabOrder = 0
    object dbgForms: TDBGrid
      Left = 1
      Top = 113
      Width = 563
      Height = 332
      Align = alClient
      DataSource = dsComponents
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgFormsCellClick
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 563
      Height = 112
      Align = alTop
      TabOrder = 1
      DesignSize = (
        563
        112)
      object Label3: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 9
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 134
        Top = 9
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 8
        Top = 54
        Width = 37
        Height = 13
        Caption = 'Caption'
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 444
        Top = 52
        Width = 18
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Tag'
      end
      object edtId: TEdit
        Left = 7
        Top = 26
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edtName: TEdit
        Left = 134
        Top = 26
        Width = 423
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object edtCaption: TEdit
        Left = 7
        Top = 71
        Width = 432
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object edtTag: TEdit
        Left = 444
        Top = 71
        Width = 113
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
      end
      object cbxStatus: TCheckBox
        Left = 497
        Top = 5
        Width = 60
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Status'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 29
    Align = alTop
    TabOrder = 1
    object sbClear: TSpeedButton
      AlignWithMargins = True
      Left = 484
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Limpar'
      OnClick = sbClearClick
      ExplicitLeft = 4
    end
    object sbCancel: TSpeedButton
      AlignWithMargins = True
      Left = 404
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Cancelar'
      OnClick = sbCancelClick
      ExplicitLeft = 4
    end
    object sbSave: TSpeedButton
      AlignWithMargins = True
      Left = 324
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Gravar'
      OnClick = sbSaveClick
      ExplicitTop = 3
    end
    object sbDelete: TSpeedButton
      AlignWithMargins = True
      Left = 244
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Excluir'
      OnClick = sbDeleteClick
      ExplicitTop = 3
    end
    object sbEdit: TSpeedButton
      AlignWithMargins = True
      Left = 164
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Editar'
      OnClick = sbEditClick
      ExplicitLeft = 4
    end
    object sbNew: TSpeedButton
      AlignWithMargins = True
      Left = 84
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Novo'
      OnClick = sbNewClick
      ExplicitLeft = 4
    end
    object sbSearch: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 74
      Height = 21
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Pesquisar'
      OnClick = sbSearchClick
    end
  end
  object dsForms: TDataSource
    Left = 360
    Top = 576
  end
  object adoForms: TADOQuery
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'FORMNAME'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'USE [dbSetiFramework]'
      ''
      'DECLARE @FORMNAME VARCHAR(100)'
      'SET @FORMNAME = :FORMNAME'
      ''
      'SELECT [ID]'
      '      ,[FORMNAME]'
      '      ,[FORMCAPTION]'
      '      ,[FORMTAG]'
      '      ,[STATUS]'
      '      ,[CREATEDATE]'
      'FROM [dbo].[TBSETIFORM] WITH(NOLOCK)'
      'WHERE FORMNAME = @FORMNAME')
    Left = 360
    Top = 512
    object adoFormsID: TIntegerField
      FieldName = 'ID'
    end
    object adoFormsFORMNAME: TStringField
      DisplayWidth = 30
      FieldName = 'FORMNAME'
      Size = 100
    end
    object adoFormsFORMCAPTION: TStringField
      DisplayWidth = 30
      FieldName = 'FORMCAPTION'
      Size = 100
    end
    object adoFormsFORMTAG: TIntegerField
      FieldName = 'FORMTAG'
    end
    object adoFormsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object adoFormsCREATEDATE: TDateTimeField
      FieldName = 'CREATEDATE'
    end
  end
  object adoComponents: TADOQuery
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'FORMID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'USE [dbSetiFramework]'
      ''
      'DECLARE @FORMID INT'
      'SET @FORMID = :FORMID;'
      ''
      'SELECT [ID]'
      '      ,[COMPONENTNAME]'
      '      ,[COMPONENTFORMID]'
      '      ,[COMPONENTCAPTION]'
      '      ,[COMPONENTTAG]'
      '      ,[COMPONENTTYPE]'
      '      ,[COMPONENTSTATUS]'
      '      ,[COMPONENTCREATEDATE]'
      '      ,[COMPONENTSEARCHENABLE]'
      '  FROM [dbSetiFramework].[dbo].[TBSETICOMPONENT] WITH(NOLOCK)'
      '  WHERE COMPONENTFORMID = @FORMID;')
    Left = 696
    Top = 504
    object adoComponentsID: TAutoIncField
      DisplayWidth = 5
      FieldName = 'ID'
      ReadOnly = True
    end
    object adoComponentsCOMPONENTNAME: TStringField
      DisplayLabel = 'NAME'
      DisplayWidth = 20
      FieldName = 'COMPONENTNAME'
      Size = 100
    end
    object adoComponentsCOMPONENTFORMID: TIntegerField
      DisplayLabel = 'FORMID'
      FieldName = 'COMPONENTFORMID'
    end
    object adoComponentsCOMPONENTCAPTION: TStringField
      DisplayLabel = 'CAPTION'
      DisplayWidth = 30
      FieldName = 'COMPONENTCAPTION'
      Size = 100
    end
    object adoComponentsCOMPONENTTAG: TIntegerField
      DisplayLabel = 'TAG'
      DisplayWidth = 5
      FieldName = 'COMPONENTTAG'
    end
    object adoComponentsCOMPONENTTYPE: TStringField
      DisplayLabel = 'TYPE'
      DisplayWidth = 20
      FieldName = 'COMPONENTTYPE'
      Size = 30
    end
    object adoComponentsCOMPONENTSTATUS: TStringField
      DisplayLabel = 'STATUS'
      FieldName = 'COMPONENTSTATUS'
      FixedChar = True
      Size = 1
    end
    object adoComponentsCOMPONENTCREATEDATE: TDateTimeField
      DisplayLabel = 'DT.CREATE'
      FieldName = 'COMPONENTCREATEDATE'
    end
    object adoComponentsCOMPONENTSEARCHENABLE: TStringField
      DisplayLabel = 'SEARCH'
      FieldName = 'COMPONENTSEARCHENABLE'
      FixedChar = True
      Size = 1
    end
  end
  object dsComponents: TDataSource
    Left = 696
    Top = 568
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 200
  end
end
