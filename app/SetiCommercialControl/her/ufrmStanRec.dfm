object frmStanRec: TfrmStanRec
  Left = 0
  Top = 0
  ClientHeight = 510
  ClientWidth = 646
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 45
    Width = 646
    Height = 248
    Align = alClient
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 45
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 638
      Height = 35
      DataSource = dsStandard
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alTop
      Kind = dbnHorizontal
      TabOrder = 0
    end
  end
  object SFPanel1: TSFPanel
    Left = 0
    Top = 479
    Width = 646
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Caption = ' '
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 293
    Width = 646
    Height = 186
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 640
      Height = 180
      Align = alClient
      DataSource = dsStandard
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = DBGrid1TitleClick
    end
  end
  object dsStandard: TDataSource
    DataSet = cdsStandard
    Left = 520
    Top = 376
  end
  object sqlStandard: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = ConnStandard
    Left = 264
    Top = 376
  end
  object dspStandard: TDataSetProvider
    DataSet = sqlStandard
    Left = 352
    Top = 376
  end
  object cdsStandard: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStandard'
    BeforeInsert = cdsStandardBeforeInsert
    BeforeEdit = cdsStandardBeforeEdit
    BeforePost = cdsStandardBeforePost
    AfterPost = cdsStandardAfterPost
    AfterCancel = cdsStandardAfterCancel
    AfterDelete = cdsStandardAfterDelete
    Left = 432
    Top = 376
  end
  object ConnStandard: TSQLConnection
    LoginPrompt = False
    Left = 184
    Top = 376
  end
  object dsAux: TDataSource
    Left = 56
    Top = 376
  end
end