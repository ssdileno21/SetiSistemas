object dmControleVendaManual: TdmControleVendaManual
  OldCreateOrder = False
  Height = 342
  Width = 486
  object coVendasSql: TSQLQuery
    Params = <>
    Left = 217
    Top = 105
  end
  object coVendasDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 216
    Top = 164
  end
  object coVendasCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 217
    Top = 212
  end
  object coPedidoSql: TSQLQuery
    Params = <>
    Left = 41
    Top = 105
  end
  object coPedidoDsp: TDataSetProvider
    Left = 40
    Top = 164
  end
  object coPedidoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    BeforeInsert = coPedidoCdsBeforeInsert
    AfterInsert = coPedidoCdsAfterInsert
    Left = 41
    Top = 212
  end
  object coHistoricoSql: TSQLQuery
    Params = <>
    Left = 393
    Top = 129
  end
  object coHistoricoDsp: TDataSetProvider
    Left = 392
    Top = 188
  end
  object coHistoricoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 393
    Top = 236
  end
  object coClienteSql: TSQLQuery
    Params = <>
    Left = 129
    Top = 113
  end
  object coClienteDsp: TDataSetProvider
    Left = 128
    Top = 172
  end
  object coClienteCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 129
    Top = 220
  end
  object coEstoqueSql: TSQLQuery
    Params = <>
    Left = 305
    Top = 121
  end
  object coEstoqueDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 180
  end
  object coEstoqueCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 305
    Top = 228
  end
  object SetiSqlConnection: TSQLConnection
    Left = 40
    Top = 16
  end
end
