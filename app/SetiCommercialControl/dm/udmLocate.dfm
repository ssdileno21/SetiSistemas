object dmLocate: TdmLocate
  OldCreateOrder = False
  Height = 287
  Width = 102
  object LocConnection: TSQLConnection
    LoginPrompt = False
    Left = 27
    Top = 5
  end
  object LocQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = LocConnection
    Left = 28
    Top = 52
  end
  object LocDsp: TDataSetProvider
    Left = 28
    Top = 99
  end
  object LocCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SetiDsp'
    Left = 29
    Top = 147
  end
  object LocSp: TSQLStoredProc
    Params = <>
    Left = 32
    Top = 208
  end
end
