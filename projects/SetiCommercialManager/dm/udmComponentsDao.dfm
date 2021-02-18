object dmComponentsDao: TdmComponentsDao
  OldCreateOrder = False
  Height = 224
  Width = 82
  object SetiDs: TDataSource
    DataSet = SetiCds
    Left = 24
    Top = 164
  end
  object SetiDsp: TDataSetProvider
    DataSet = SetiSql
    Left = 24
    Top = 70
  end
  object SetiCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 24
    Top = 117
  end
  object SetiSql: TSQLQuery
    Params = <>
    Left = 24
    Top = 24
  end
end
