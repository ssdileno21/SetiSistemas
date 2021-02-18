unit uSetiConfig;

interface

uses ADODB, Dialogs, SysUtils, Forms, MIDASLIB, uMess, WinInet, Winapi.Windows,
Graphics;
Const
    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PROJECT <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    // >> Estrutura de pastas do projeto para o cliente
    SConfigProjectPath = 'C:\SetiSistemas\app\SetiCommercialControl';
    SConfigExePath = 'C:\SetiSistemas\app\SetiCommercialControl\bin';

    // >> Dados do projeto atual
    SConfigSoftwareCaption = 'Seti Sistemas - Controle Comercial';
    SConfigReducedSoftwareName = 'SCC';
    SConfigSoftwareExeName = 'SetiCommercialControl.exe';
    SConfigProjectID = 2;

    // >> Dados do cliente
    SConfigClientTitle = 'Seti Sistemas';

    SConfigPathSql = 'C:\SetiSistemas\sql\code.sql';

    SConfigNullValueStringFields = 'N�O INFORMADO';
    SConfigNullValueIntFields = 0;
    SConfigNullValueFloatFields = 0.00;

    // >> Tamanho dos campos no grid da tela de pesquisa
    SConfigForTextField = 30;
    SConfigForNumberField = 15;
    SConfigForDateField = 20;
    SConfigForSmallText = 8;

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FRAMEWORK <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    // >> Acesso padr�o
    SConfigEnabledDefaultLoin = True;
    SConfigDefaultLogin = 'admin';
    SConfigDefaultKey = 'admin';
    // >> Tag para limitar quantidade de telas abertas em 8 (oito)
    SConfigLimitedForm = False;
    // >> Tag para componentes n�o utilizarem heran�a da frmstandardReg
    SConfigNoTag = 99;
    // >> Tag para n�o utilizar campo na pesquisa
    SConfigTagNotSearchField = 99;
    // >> Tag para n�o utilizar componente na pesquisa
    SConfigTagNotSearchCompo = 99;
    // >> Tag para n�o utilizar componente no controle da tela
    SConfigTagNotControlComp = 99;
    // >> Tag para definir contagem para limpeza de memoria residual
    SConfigTagClearCount = 1000;

    // >> Nome para a tela de pesquisa padr�o: FRMTOLOCATE:
    SConfigfrmToLocateName  = 'Localizar - ';

    // >> Exibir mensagem para gerar planilha em outro software, atualmente
    // o padr�o � o MS Office
    SConfigMSandOther = False;

    // >> Diret�rio inicial padr�o para salvar arquivo;
    SConfigDirWay = 'C:\';

    // TRATAMENTO PARA PLANILHAS DE EXCEL
    // >> Tipo de arquivo padr�o de excel para exportar: .XLS OU .XLSX;
    //SConfigExcType = '.xls';
    SConfigExcType = '.xlsx';
    // >> Exibir data e hora na exporta��o de arquivo;
    SConfigExDateTimeFile = True;
    // >> Cor padr�o do cabe�alho da planilha exportada;
    SConfigExcHearderColor = clSkyBlue;
    // >> Cor padr�o da fonte do cabe�alho da planilha exportada:
    SConfigExcHeaderFontColor = clBlack;
    // >> Cor padr�o das linhas da planilha exportada - Alternada 2:
    SConfigExcLinesColor1 = clSilver;
    // >> Cor padr�o das linhas da planilha exportada - Alternada 2:
    SConfigExcLinesColor2 = clWindow;
    // >> Cor padr�o da fonte das linhas da planilha exportada:
    SConfigExcLinesFontColor = clBlack;
    //TRATAMENTO PARA ARQUIVOS WORD
    // >> Gerar documento em Landscape:
    SConfigDocLandscape = True;

    //TELA FRMSTANDARREG
    // >> Separador do tipo do field com o nome do field nos componentes
    SConfigFieldSep = '_';


    {**************************************************************************}
    {>>>>>>>>>>>> CLI0002 - REVISTA E CIA DISTRIBUIDORA LTDA ME  <<<<<<<<<<<<<<}
    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> TELA FRMTOLOCATE <<<<<<<<<<<<<<<<<<<<<<<<<<<}
    //Iniciar a tela de pesquisa padr�o, executando a consulta sem filtro, isso
    //pode atrapalhar a performance do banco...
    SConfigFrmToLocateIniSearch = False;
    {>>>>>>>>>> PARAMETROS 1 - TELA CONTROLE VENDAS MANUAIS <<<<<<<<<<<<<<<<<<<}
    //Grid de vendas - Exbir valor unit�rio no grid de vendas
    SConfigParam1_Ex_Vlr_Unitario_Grid_Vendas = True;
    //Grid estoque - 0: Mostra valor unit�rio ou 1: calculo (Qtd * Uni)
    SconfigParam1_Calc_Vlr_Estoque = 1;
    //Para excluir produtos n�o movimentados, considerar qtdvenda > 0? Se false,
    //ser� considerado casos que estoque ou a contagem for informada.
    SConfigParam1_Tp_Exc_Prod_Nao_Movimentado = True;
    {>>>>>>>>>>>>>>>>>>>>>>>>>> TELA FRMCADFUNCIONARIOS <<<<<<<<<<<<<<<<<<<<<<<}
    SConfig_Ex_CbxTecnico = False; {Padr�o = True}
    {>>>>>>>>>>>>>>>>>>>>>>>>>> TELA FRMCADPRODUTOS <<<<<<<<<<<<<<<<<<<<<<<<<<<}
    SConfig_Ex_TabParametros = False;

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> DATABASE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}

    // >> Tags para o tipo de banco de dados <<

    // >>>>>> FIREBIRD <<<<<<<
    // >> >> Tipo do banco de dados
    SConfigTypeDB = 'TSQL';

    // >> Framework
    // >> >> Nome do arquivo
    SConfigFBFrameworkDBName = 'SFDB.FDB';
    // >> >> Usu�rio
    SConfigFBFrameworkDBUserName = 'SYSDBA';
    // >> >> Senha
    SConfigFBFrameworkDBPassword = 'masterkey';
    // >> >> Caminho
    SConfigFBFrameworkDBFilePath = 'C:\SetiSistemas\drep\sf\' +
      SConfigFBFrameworkDBName;

    // >> Cliente
    // >> >> Nome do arquivo de banco de dados do cliente
    SConfigFBClientDBName = 'SCM';
    // >> >> Usu�rio
    SConfigFBClientDBUserName = 'SYSDBA';
    // >> >> Senha
    SConfigFBClientDBPassword = 'masterkey';
    // >> >> Caminho
    SConfigFBClientDBFilePath =
      'C:\SetiSistemas\app\SetiCommercialControl\bin\' + SConfigFBClientDBName;


    // >>>>>>> SQLSERVER <<<<<<<<
    SConfigSqlServerConectionString = 'Provider=SQLOLEDB.1;'                  +
                                      'Integrated Security=SSPI;'             +
                                      'Persist Security Info=False;'          +
                                      'Initial Catalog=sfdb;'                 +
                                      'Data Source=setisistemas\sqlexpress;   ';

    // FIELDS TYPES FIREBIRD
    SConfigFireSMALLINT          = 'SHORT';       //SMALLINT
    SConfigFireINTEGER           = 'LONG';        //INTEGER
    SConfigFireBIGINT            = 'INT64';       //BIGINT
    SConfigFireFLOAT             = 'FLOAT';       //FLOAT
    SConfigFireDOUBLEPRECISION   = 'DOUBLE';      //DOUBLEPRECISION
    SConfigFireNUMERIC           = 'INT64';       //NUMERIC
    SConfigFireDECIMAL           = 'INT64';       //DECIMAL
    SConfigFireDATE              = 'DATE';        //DATE
    SConfigFireTIME              = 'TIME';        //TIME
    SConfigFireTIMESTAMP         = 'TIMESTAMP';   //TIMESTAMP
    SConfigFireCHAR              = 'TEXT';        //CHAR
    SConfigFireVARCHAR           = 'VARYING';     //VARCHAR



    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FTPSERVER <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    SConfigServerPath = '';
    SConfigCheckServer = False;

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> INITIAL <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    SConfigInitialFileName = 'eis.ini';
    SConfigInitialTagValue = '1';
    SConfigInitialParam1Name = 'aspino';
    SConfigInitialParam1Value =
      'ngmm,,,,,,,,  n,n,,,kl�k .�0 ~., mZXSACCSCVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVCVVBBBBBBBBS';


    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> OTHERS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}

    SConfigDeveloperMode = True;
    //DirADOQry = 'C:\SetiSistemas\erros\testeADO.sql';
    DirSQLQry = 'C:\SetiSistemas\SQL_TESTE\qry.sql';

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PERMISSIONS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    {//PERFIL PADR�O
     SConfigFrmCadClientes        = True;
     SConfigFrmCadCompras         = True;
     SConfigFrmCadEmpresa         = True;
     SConfigFrmCadFornecedores    = True;
     SConfigFrmCadFuncionarios    = True;
     SConfigFrmCadOrdemServicos   = True;
     SConfigFrmCadProdutoDefeito  = True;
     SConfigFrmCadProdutoMarca    = True;
     SConfigFrmCadProdutoModelo   = True;
     SConfigFrmCadReciboVenda     = True;
     SConfigFrmCadUsuarios        = True;
     SConfigFaturamentoPainel     = True;
     SConfigVendas                = True;
    }
    //PERFIL ESPEC�FICO
     SConfigFrmCadClientes          = True;
     SConfigFrmCadCompras           = False;
     SConfigFrmCadEmpresa           = True;
     SConfigFrmCadFornecedores      = false;
     SConfigFrmCadFuncionarios      = True;
     SConfigFrmCadOrdemServicos     = False;
     sConfigFrmCadProdutos          = True;
     SConfigFrmCadProdutoDefeito    = False;
     SConfigFrmCadProdutoMarca      = False;
     SConfigFrmCadProdutoModelo     = False;
     SConfigfrmVendaManual          = True;
     SConfigFrmCadUsuarios          = True;
     SConfigFaturamentoPainel       = False;
     SConfigVendas                  = False;
     SConfigFrmCadRotas             = True;
     SConfigFrmCadRegioes           = True;
     SConfigFrmCadSetores           = True;
     sConfigFrmControleVendaManual  = True;
     sConfigfrmCadFormaPagto        = True;
     sConfigRepVendaManual          = True;

     sConfigEnabledValidate     = True;
     sConfigVisibleValidade     = True;
     sConfigColorLabelValidate  = False;

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PARAMETROS  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    //Permitir a exclus�o do cliente: Consumidor final
    sConfigDeleteConsumidorFinal = False;
    sConfigUpdateConsumidorFinal = False;

    {**************************************************************************}
    {>>>>>>>>>>>>>>>>>>>>>>>>>>>>> METHODS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<}
    {**************************************************************************}
    function SConfigGetDataBase(Framework:Boolean) : string;
    function SConfigDatabaseFileExists(Framework:Boolean) : Boolean;
    function SConfigInternetConnection(Mess:Boolean=False) : Boolean;
    function SConfigServerConnection : Boolean;
    function SConfigCorrectFolderStructures : Boolean;
    function SConfigGetReduceFieldType(pTypeField:string) : string;



var
    SFConfigAdoConnection_ : TADOConnection;

implementation

function SConfigGetDataBase(Framework:Boolean): string;
begin
    try
        if (Framework) then
        begin
          Result := SConfigFBFrameworkDBFilePath;
        end else
        begin
          Result := SConfigFBClientDBFilePath;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SConfigDatabaseFileExists(Framework: Boolean): Boolean;
var
  way : string;
begin
      Result := False;
    try
      if (Framework) then
        way := SConfigFBFrameworkDBFilePath
      else
        way := SConfigFBClientDBFilePath;
      if FileExists(way) then
        Result := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SConfigInternetConnection(Mess:Boolean=False): Boolean;
var
  i : DWORD;
begin
    Result := False;
    try
        if (InternetGetConnectedState(@I,0)) then
        begin
          if Mess then
            MessageDlg(Mess14,mtInformation,[mbOK],0);
          Result := True;
        end else
        begin
          if Mess then
            MessageDlg(Mess15,mtInformation,[mbOK],0);
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SConfigServerConnection : Boolean;
begin
      Result := False;
    try
      if SConfigCheckServer then
      begin
         Result := True;
         Exit;
      end else
      begin
        // Em desenvolvimento...
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SConfigCorrectFolderStructures : Boolean;
begin
      Result := False;
    try
      if (DirectoryExists(SConfigProjectPath)) and
            (DirectoryExists(SConfigExePath)) then
      begin
          Result := True;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SConfigGetReduceFieldType(pTypeField:string) : string;
begin
{
    SConfigFireSMALLINT          = 'SHORT';       //SMALLINT
    SConfigFireINTEGER           = 'LONG';        //INTEGER
    SConfigFireBIGINT            = 'INT64';       //BIGINT
    SConfigFireFLOAT             = 'FLOAT';       //FLOAT
    SConfigFireDOUBLEPRECISION   = 'DOUBLE';      //DOUBLEPRECISION
    SConfigFireNUMERIC           = 'INT64';       //NUMERIC
    SConfigFireDECIMAL           = 'INT64';       //DECIMAL
    SConfigFireDATE              = 'DATE';        //DATE
    SConfigFireTIME              = 'TIME';        //TIME
    SConfigFireTIMESTAMP         = 'TIMESTAMP';   //TIMESTAMP
    SConfigFireCHAR              = 'TEXT';        //CHAR
    SConfigFireVARCHAR           = 'VARYING';     //VARCHAR
}
  Result := '';
  try
    if (pTypeField <> '') then
    begin
      if (pTypeField = 'SHORT') then
        Result := 'INT' else
      if (pTypeField = 'LONG') then
        Result := 'INT' else
      if (pTypeField = 'INT64') then
        Result := 'NUM' else
      if (pTypeField = 'FLOAT') then
        Result := 'DOU' else
      if (pTypeField = 'DOUBLE') then
        Result := 'DOU' else
      if (pTypeField = 'DATE') then
        Result := 'DAT' else
      if (pTypeField = 'TIME') then
        Result := 'TIM' else
      if (pTypeField = 'TIMESTAMP') then
        Result := 'TMP' else
      if (pTypeField = 'TEXT') then
        Result := 'STR' else
      if (pTypeField = 'VARYING') then
        Result := 'STR';
    end;
  finally

  end;
end;

end.