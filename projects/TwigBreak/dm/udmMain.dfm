object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 373
  Width = 477
  object sqlConn: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'Database=database.fdb'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 72
    Top = 72
  end
  object sqlProducts: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT'
      '       ID'
      '      ,NOME'
      '      ,CODIGOINTERNO'
      '      ,IDFORNECEDOR'
      '      ,IDPRODUTOGRUPO'
      '      ,IDPRODUTOSUBGRUPO'
      '      ,CODIGOBARRAS'
      '      ,IDPRODUTOMARCA'
      '      ,IDPRODUTOMODELO'
      '      ,DESCRICAO'
      '      ,VLRCUSTO'
      '      ,VLRDESPESAS'
      '      ,VLRDESPESASOUTROS'
      '      ,VLRCUSTOFINAL'
      '      ,VLRLUCROREQUERIDO'
      '      ,VLRVENDASUGERIDO'
      '      ,VLRVENDAUTILIZADO'
      '      ,PESO'
      '      ,LARGURA'
      '      ,ALTURA'
      '      ,COMPRIMENTO'
      '      ,COMISSAO'
      '      ,UNIDADEVENDA'
      '      ,STATUS'
      'FROM TBCADPRODUTOS')
    SQLConnection = sqlConn
    Left = 72
    Top = 168
  end
  object dspProducts: TDataSetProvider
    DataSet = sqlProducts
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 232
  end
  object cdsProducts: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'dspProducts'
    Left = 72
    Top = 304
    object cdsProductsID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProductsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProductsCODIGOINTERNO: TIntegerField
      FieldName = 'CODIGOINTERNO'
    end
    object cdsProductsIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object cdsProductsIDPRODUTOGRUPO: TIntegerField
      FieldName = 'IDPRODUTOGRUPO'
    end
    object cdsProductsIDPRODUTOSUBGRUPO: TIntegerField
      FieldName = 'IDPRODUTOSUBGRUPO'
    end
    object cdsProductsCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 255
    end
    object cdsProductsIDPRODUTOMARCA: TIntegerField
      FieldName = 'IDPRODUTOMARCA'
    end
    object cdsProductsIDPRODUTOMODELO: TIntegerField
      FieldName = 'IDPRODUTOMODELO'
    end
    object cdsProductsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object cdsProductsVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
    end
    object cdsProductsVLRDESPESAS: TFloatField
      FieldName = 'VLRDESPESAS'
    end
    object cdsProductsVLRDESPESASOUTROS: TFloatField
      FieldName = 'VLRDESPESASOUTROS'
    end
    object cdsProductsVLRCUSTOFINAL: TFloatField
      FieldName = 'VLRCUSTOFINAL'
    end
    object cdsProductsVLRLUCROREQUERIDO: TFloatField
      FieldName = 'VLRLUCROREQUERIDO'
    end
    object cdsProductsVLRVENDASUGERIDO: TFloatField
      FieldName = 'VLRVENDASUGERIDO'
    end
    object cdsProductsVLRVENDAUTILIZADO: TFloatField
      FieldName = 'VLRVENDAUTILIZADO'
    end
    object cdsProductsPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsProductsLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsProductsALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsProductsCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsProductsCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object cdsProductsUNIDADEVENDA: TStringField
      FieldName = 'UNIDADEVENDA'
      Size = 2
    end
    object cdsProductsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object sqlGen: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 24
    Top = 16
  end
end