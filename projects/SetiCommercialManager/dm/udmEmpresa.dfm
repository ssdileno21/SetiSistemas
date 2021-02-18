object dmEmpresa: TdmEmpresa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 361
  Width = 599
  object sqlInsert: TSQLQuery
    DataSource = dsEmpresa
    Params = <
      item
        DataType = ftString
        Name = 'TIPOPESSOA'
        ParamType = ptUnknown
        Size = 1
      end
      item
        DataType = ftString
        Name = 'NOMEFANTASIA'
        ParamType = ptUnknown
        Size = 255
      end
      item
        DataType = ftString
        Name = 'RAZAOSOCIAL'
        ParamType = ptUnknown
        Size = 255
      end
      item
        DataType = ftString
        Name = 'NUMCPFCNPJ'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftString
        Name = 'POSSUIINSESTADUAL'
        ParamType = ptUnknown
        Size = 1
      end
      item
        DataType = ftInteger
        Name = 'INSESTADUAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'INSMUNICIPAL'
        ParamType = ptUnknown
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'ID_CNAE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ID_REGIMETRIBUTARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ID_REGIMEESPECIALTRIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptUnknown
        Size = 100
      end
      item
        DataType = ftUnknown
        Name = 'NUMTELEFONE'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'INSERT INTO TBCADEMPRESA'
      '('
      '     TIPOPESSOA'
      '    ,NOMEFANTASIA'
      '    ,AZAOSOCIAL'
      '    ,NUMCPFCNPJ'
      '    ,POSSUIINSESTADUAL'
      '    ,INSESTADUAL'
      '    ,INSMUNICIPAL'
      '    ,ID_CNAE'
      '    ,ID_REGIMETRIBUTARIO'
      '    ,ID_REGIMEESPECIALTRIB'
      '    ,EMAIL'
      '    ,NUMTELEFONE'
      '    ,NUMCELULAR'
      '    ,SITE'
      '    ,LOGRADOUROCEP'
      '    ,LOGRADOURO'
      '    ,LOGRADOURONUM'
      '    ,LOGRADOUROCOMP'
      '    ,LOGRADOUROBAIRRO'
      '    ,ID_UF'
      '    ,ID_CIDADE'
      '    ,CAMINHOLOGO'
      '    ,DTACADASTRO'
      ') VALUES'
      '('
      '     :TIPOPESSOA'
      '    ,:NOMEFANTASIA'
      '    ,:AZAOSOCIAL'
      '    ,:NUMCPFCNPJ'
      '    ,:POSSUIINSESTADUAL'
      '    ,:INSESTADUAL'
      '    ,:INSMUNICIPAL'
      '    ,:ID_CNAE'
      '    ,:ID_REGIMETRIBUTARIO'
      '    ,:ID_REGIMEESPECIALTRIB'
      '    ,:EMAIL'
      '    ,:NUMTELEFONE'
      '    ,:NUMCELULAR'
      '    ,:SITE'
      '    ,:LOGRADOUROCEP'
      '    ,:LOGRADOURO'
      '    ,:LOGRADOURONUM'
      '    ,:LOGRADOUROCOMP'
      '    ,:LOGRADOUROBAIRRO'
      '    ,:ID_UF'
      '    ,:ID_CIDADE'
      '    ,:CAMINHOLOGO'
      '    ,:DTACADASTRO'
      ')')
    Left = 32
    Top = 16
  end
  object sqlDelete: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'NUMCPFCNPJ'
        ParamType = ptUnknown
        Size = 14
      end>
    SQL.Strings = (
      'DELETE FROM TBCADEMPRESA'
      'WHERE NUMCPFCNPJ = :NUMCPFCNPJ')
    Left = 104
    Top = 17
  end
  object dsEmpresa: TDataSource
    Left = 32
    Top = 81
  end
end
