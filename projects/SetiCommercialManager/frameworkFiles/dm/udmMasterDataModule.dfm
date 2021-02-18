object dmMasterDataModule: TdmMasterDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 288
  Width = 425
  object SetiSqlConnection: TSQLConnection
    Left = 32
    Top = 8
  end
  object SetiSqlDataSet: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    Params = <>
    Left = 32
    Top = 56
  end
  object SetiSqlQuery: TSQLQuery
    Params = <>
    Left = 33
    Top = 105
  end
  object SetiDs: TDataSource
    Left = 106
    Top = 7
  end
  object SetiCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 105
    Top = 52
  end
  object SetiDsp: TDataSetProvider
    Left = 104
    Top = 100
  end
  object SetiSqlHelp: TSQLQuery
    Params = <>
    Left = 107
    Top = 152
  end
  object SetiCdsHelp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDspHelp'
    Left = 108
    Top = 200
  end
  object SetiDspHelp: TDataSetProvider
    DataSet = SetiSqlHelp
    Left = 33
    Top = 206
  end
  object SetiSqlStoredProc: TSQLStoredProc
    Params = <>
    Left = 36
    Top = 157
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 176
    object ClientDataSet1teste: TStringField
      FieldName = 'teste'
    end
    object ClientDataSet1testo: TIntegerField
      FieldName = 'testo'
    end
    object ClientDataSet1testa: TFloatField
      FieldName = 'testa'
    end
  end
end
