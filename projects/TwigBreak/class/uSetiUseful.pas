{ID: FS1; | CODIGO: FS1-F8;}

{ *************************************************************************** }
{                                                                             }
{ SETI SISTEMAS. Dileno Silva dos Santos - 31996282104    					          }
{ Unit de fun��es - Criado em 23/04/2014                                      }
{                                                                             }
{ *************************************************************************** }

unit uSetiUseful;

interface

uses
  Winsock, Forms, dbctrls, Dialogs, System.SysUtils, Windows, dbgrids, DB,
  Graphics, Classes, ComObj, ADODB, Variants, ComCtrls, DateUtils,Excel2000,
  Math,Grids, Types, Registry, Controls, StrUtils,IdBaseComponent, IdComponent,
  IdIPWatch, ShellAPI, DBClient, IniFiles, MIDASLIB, Messages, StdCtrls,
  Buttons, XMLIntf, XMLDoc, WordXP, System.UITypes, Vcl.Menus, Winapi.Imm,
  Vcl.ActnList, Winapi.MultiMon, System.HelpIntfs, Winapi.DwmApi, Vcl.Themes,
  Vcl.ExtCtrls,

  uSetiConfig, uMess
  ;

type
  TEstilo = record
    Font: TFont;
    Alignment: TAlignment;
  end;

  TAsincMethod = procedure of Object;

  TAsincMethodExecute = class(TThread)
  private
    procedimento: TAsincMethod;
  protected
    procedure Execute; override;
  public
    constructor Create(procedimento: TAsincMethod);
  end;

  type
    TSetiUseFulRegister = class
    private
      FFileID : string;
    public
      Constructor Create;reintroduce;
      Destructor Destroy; override;
    protected
      function GetFileId : string;
      procedure SetFileId(Const Value : string);
      property qFileId : string read GetFileId write SetFileId;
  end;


{
*************** 1 - STANDARREG - SEARCH;INSERT;UPDATE;DELETE *******************
}
  procedure teste;

 // criar uma fun��o para retornar o valor para o checkbox e para o radio group

  {FS1-F8-1-fn-1}
  function GetFieldInfo(pReturn:Integer;pField:string) : string;
  {FS1-F8-1-fn-2}
  function TypeFieldValidate(pField:string) : Boolean;
  {FS1-F8-1-fn-3}
  function fnGetCheckBoxValue(pCheckBox:TCheckBox;pTableName:string;pFieldName:
  string) : Variant;
  {FS1-F8-1-fn-4}
  function fnGetRadioGroupValue(pRadioGroup:TRadioGroup;pTableName:string;
    pFieldName: string) : Variant;
  {FS1-F8-1-fn-5}
  function fnFieldHasGeneratorFS1F8(pTableName:string;pFieldName:string) :
    string;
  {FS1-F8-1-FN-6}
  function fnTableInforFS1F8(pTableName:string;pFieldName:string; pReturn:
  Integer): Variant;
  {FS1-F8-1-FN-7}
  function fnComponentInforFS1F8(pFormName:string; pComponentName,
  pSpFieldReturn : string): Variant;
  {FS1-F8-1-FN-8}
  function fnGetInforDescrFS1F8(pTableName:string;pFieldId:string;pFieldDesc:
  string; pFieldValue:Integer) : string;
//------------------------------------------------------------------------------
  //%%%%%%%%%%%%% Files %%%%%%%%%%%%%
  function SetiUsefulArqIni(iTpOp:Integer;sSecao,sIdentificador,sValor:String):
    Variant;
  function SetiArqIniCreate(iTpOp:Integer;Path,Name,Tag,identity,Value:String):
    Variant;
  function SetiUsefulTamanhoDoArquivo(Arquivo: String): Integer;
  function SetiUsefulDataHoraDoArquivo(Arquivo: String): TDateTime;
  function SetiUsefulAbrirArquivosSalvos(nomearq: string):string;
//------------------------------------------------------------------------------
  //%%%%%%%%%%%%% Worksheets %%%%%%%%%%%%%
  function SetiUsefulGridToExcelFile(Grid: TDbGrid;ExcelFile: String;
  TotalRegistros :
    Integer):Boolean;
  function SetiUsefulGeraExcel_FormataWebtask(Consulta: TADOQuery; Select:
  string;
    Titulo: string):string;
  procedure SetiUsefulSalvaExcel(Consulta:TComponent; Caminho : String);
  procedure SetiUsefulSalvaExcel_Ant(Consulta:TAdoQuery; Caminho : String);
  procedure SetiUsefulGerarExcel_Ant(Consulta:TAdoQuery; Pai:TComponent);
  procedure SetiUsefulGerarExcel(Consulta:TComponent; Pai:TComponent);
  procedure SetiUsefulGerarExcelSp(Consulta:TADOStoredProc; ColunaDataSoftpar :
  Integer);
  procedure SetiExpDataSet(pType: Integer=2; pDataSet:TDataSet=Nil;
  pDateHour:Boolean=False; pFileOpen:Boolean=True; pFilePath:Boolean=True;
  pFilePath_:string='');
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% Components %%%%%%%%%%%%%
  procedure SetiUsefulOrdenaGrid(gGrid:TDBGrid; ColunaSelecionada: TColumn);
  //Selecionar Todos os Registros do DbGrid... Obs: Dbgrid > properties >
  //Options > dgMultiSelect = True
  procedure SetiUsefulGridMarkAll(Grid:TDBGrid);
  //Desmarcar Todos os Registros do DbGrid... Obs: Dbgrid > properties >
  //Options > dgMultiSelect = True
  procedure SetiUsefulGridMarkOff(Grid:TDBGrid);
  procedure SetiUsefulPatchINT3;
  function SetiUsefulStringToStyle(s :String; f: TFont = nil): TEstilo;
  function SetiUsefulStyleToString(f: TEstilo): String;
  function SetiUsefulOriginalFormName(Name:string) : string;
  procedure SetiUsefulOpenForm(FClass: TFormClass; var Instance; OwnerForm:
  TComponent;
    FormId : integer = 0);
  procedure SetiUsefulStatusBarChanges(Owner: TComponent; PosicaoStatus :
  Integer;
    Msg : String);
  procedure SetiUsefulGridCommands(Query: TComponent; var Campo: TColumn; var
  UltimoCampo:
    TColumn; var OrdemAscDesc : String;  OrdemTotal : String = '');
  procedure SetiUsefulGridColumnAdjust(DBGrid: TDBGrid; aChangeAll: boolean);
  //Imprime um texto em outro angulo diferente de 90�
  procedure SetiUsefulAngleTextOut(CV: TCanvas; const sText: String; x, y,
  angle,
    size:integer);
  function SetiUsefulAbreFormLogDeAcesso (FClass: TFormClass; var Instance;
    OwnerForm:TComponent;Nome: String;Gravar: Boolean):Boolean;
  //Procedure para abrir um novo form.
  procedure SetiUsefulFormOpen(var NomeForm; ClassForm: TFormClass;
    AOwener:TComponent;Modal: Boolean; Canto: Boolean = True);
  procedure SetiUsefulutConfiguraGrade(aGrade : TStringGrid);
  procedure SetiUsefulStatusBarMessage(Msg : String; Owner : TComponent);
  function SetiUseFulGetNameFieldType(FieldType : TFieldType) : string;
  function SetiUseFulGetiFieldType(FieldTypeName : String) : TDataType;
//------------------------------------------------------------------------------
  //%%%%%%%%%%%%% Search %%%%%%%%%%%%%
  //Fun��o para realizar pesquisa em um dataset.
  function SetiUsefulPesquisaRegistro(iForm: TForm):Boolean;
  function SetiUsefulUsuarioLogado : String;
//------------------------------------------------------------------------------
  //%%%%%%%%%%%%% Hardware/Windows %%%%%%%%%%%%%
  //Fun��o para retornar o n�mero de serie do HD.
  function SetiUsefulHDSerialNumber(pcDrive:PChar):String;
  //Fun��o para retornar o n�mero de s�rie do HD.
  function SetiUsefulNumSerieHD(fDrive: Char): String;
  //Fun��o para retornar o n�mero de serial da placa-m�e.
  function SetiUsefulMotherBoardSerialNumber: String;
  //Fun��o para deletar pastas.
  function SetiUsefulUsefulFolderDel(DirName: TFileName) : Boolean;
  function SetiUsefulUsefulIP: String;
  function SetiUsefulWindowsTempDir : String;
  function SetiUsefulGetBytes(NomeArquivo: String): TByteDynArray;overload;
  function SetiUsefulGetBytes(Field: TBlobField): TByteDynArray;overload;
  function SetiUsefulGetStream(NomeArquivo: String): TStream;overload;
  function SetiUsefulGetStream(Bytes: TByteDynArray): TStream;overload;
  function SetiUsefulGetRegistryData(RootKey: HKEY; Key, Value: string):
  variant;
  function SetiUsefulGetWindowsDir: TFileName;
  function SetiUsefulGetSystemDir: TFileName;
  function SetiUsefulGetMyDocsDir: TFileName;
  function SetiUsefulGetDesktopDir: TFileName;
  function SetiUsefulGetFontsDir: TFileName;
  function SetiUsefulGetStartupDir: TFileName;
  function SetiUsefulGetProgramFilesDir: TFileName;
  function SetiUsefulGetTempDir: TFileName;
  function SetiUsefulGetUserDir: TFileName;
  function SetiUsefulGetAllUsersDir: TFileName;
  function SetiUsefulGetBuildInfo:string;
  function SetiUsefulFindFile(aPath, FileName : string; SubDir :
  Boolean = True) : String;
  function SetiUsefulGetComputerNetName() : String;
  procedure SetiUsefulWriteBytes(NomeArquivo: String; Bytes: TByteDynArray);
  procedure SetiUsefulLibraryCheck(LibraryPath: TFileName);
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% Numbers %%%%%%%%%%%%%
  //Fun��o para validar cpf.
  function SetiUsefulCPFValidado(numCPF: string): boolean;
  //Fun��o para verificar se o C.P.F. � ou n�o valido.
  function SetiUsefulValida_CPF(Dado:String):Boolean;
  //Fun��o para formata strings em formato CPF ou CNPJ.
  function SetiUsefulFormataCPFCNPJ(CPFCNPJ: String): String;
  //Fun��o para mascarar CPF E CNPJ.
  function SetiUsefulMascaraCPFCNPJ(Tipo,CPFCNPJ: Byte): String;
  //Fun��o para validar CPF e CGC.
  function SetiUsefulValida_CPF_CGC(Dado:String):Boolean;
  //Fun��o para verificar se o C.G.C. � ou n�o valido.
  function SetiUsefulValida_CGC(Dado:String):Boolean;
  //Fun��o para retornar os digitos verificadores do C.G.C.
  function SetiUsefulDV_CGC(Dado:String):String;
  //Fun��o para retornar digitos verificadores do C.P.F.
  function SetiUsefulDV_CPF(Dado:String):String;
  //Fun��o para retorna os digitos verificadores do c�digo de barras.
  function SetiUsefulDV_EAN(Dado:String):String;
  //Fun��o para verificar se o c�digo de barras � ou n�o valido.
  function SetiUsefulValida_EAN(Dado:String):Boolean;
  //Fun��o para retornar somente n�meros de uma string
  function SetiUsefulRetornaNumero(Texto: String): String;
  //Fun��o para formatar String em formato CEP.
  function SetiUsefulFormataCEP(CEP : string): string;
  //Fun��o para truncar valor.
  function SetiUsefulTruncaValor(iNumero: Extended; Casas: Byte = 2): Extended;
  //Fun��o para retornar somente n�meros de uma string.
  function SetiUsefulSoRetornaNumero(Texto : String) : String;
  //Fun��o para arredondar valores.
  function SetiUsefulArredValores(value: double;casas : integer): double;
  //Fun��o para arredondar numeros.
  function SetiUsefulArredondaValor(iNumero: Extended; Casas: Byte = 2):
  Extended;
  //Fun��o para arredondar pra cima
  function SetiUsefulArredondaPraCima(iNumero: Double): Int64;
  function SetiUsefulCalculoDigVerificador(Valor: String) : string;
  // Formata uma cadeia de strings numericos em formato de numero de telefone
  function SetiUsefulFormataFone(Fone: String; Area: String): string;
  //Gera pr�ximo c�digo
  function SetiGetNextNumber(Num:Integer) : Integer;
  function Mascara(edt: String;str:String):string;
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% Dates %%%%%%%%%%%%%
  //Fun��o para retornar a data por extenso.
  function SetiUsefulDataPorExtenso(Data:TDateTime): String;
  function SetiUsefulSeculo(Adate: String ) : TDateTime;
  function SetiUsefulDifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
  //Se o Dia selecionado for final de semana retorna o ultimo dia anterior
  function SetiUsefulDiaUtilAnterior (dData : TDateTime) : TDateTime;
  function SetiUsefulTratarDiasUteis(data: TDate): TDate;
  function SetiUsefulGetDateInDateTime(Data : TDateTime) : TDate;
  //Procedure para retornar o primeiro e o �ltimo dia do m�s.
  procedure SetiUsefulSetiPrimeiroeUltimoDiaDoMes(mes,ano:String; var dataIni,
    dataFin:string);
  function SetiUsefulSetiFirstLastDay(pType: Integer;pDate:TDateTime) :
  TDateTime;
  //Verificar se a data inicial � maior que a data final
  function SetiUseFulSetiValidatePeriod(pIniDate,pFinDate:TDateTime) : Boolean;
  //function SetiUseFulSeti
  // Verifica se a data informada � maior que a data atual...
  function SetiUsefulVerifDataComDataAtual(Data : TDateTime) : Boolean;
//------------------------------------------------------------------------------
  //%%%%%%%%%%%%% Text %%%%%%%%%%%%%
  //Fun��o para completar String com um determidado caracter.
  function SetiUsefulCompletaString(xString: String; CompletaCom: Char; Tamanho:
    Cardinal; Antes: Boolean = False): String;
  function SetiUsefulMaiusculo(Letra: Char):Char;
  function SetiUsefulPalavraMaiusculo(Palavra: String):String;
  function SetiUsefulAjustaStr ( str: String; tam: Integer ): String;
  function SetiUsefulRetiraAcentos(Palavra: String; Extra: Boolean = False):
  String;
  function SetiUsefulApostrofo(Texto: String): String;
  function SetiUsefulSplit(StrinCompleta,  Separador: String): TStringList;
  function SetiUsefulTrocaVirgulax(XValor: String) : String;
  function SetiUsefulTrocaVirgulaES(XValor: String) : String;
  function SetiUsefulTrimChar(texto: string; delchar: char): string;
  function SetiUsefulInsereTextoString(TextoInsere,Frase:String;Valor:Integer):
  String;
  function SetiUsefulRetiraAspaSimples(Texto:String):String;
  function SetiUsefulTirapontos(texto : String) : String;
  function SetiUsefulTrocaCaracterEspecial(aTexto : string; aLimExt : boolean) :
  string;
  function SetiUsefulValorPorExtenso(vlr: real): string;
  function SetiUsefulRemovePontosTracos(Texto : String) : String;
  //Validar email
  function SetiUsefulValidaEMail(const EMailIn: String):Boolean;
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% Serial-Key %%%%%%%%%%%%%
  //Validar SERIAL Caderno Financeio
  function SetiUsefulFormatSerieCaderno(numSerial:string):String;
  function SetiUsefulCrypt(Action, Src: String): String;
  function SetiUsefulCriptografar(wStri: String): String;
  function SetiUsefulCriptografa(Senha: String): String;
  function SetiUsefulDescriptografa(Senha: String): String;
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% SQL %%%%%%%%%%%%%
  function SetiUsefulBackUpMSSQL(Servidor, BancoDeDados, ArquivoDeBackUp:
  String;
    var Erro: String): Boolean; overload;
  function SetiUsefulBackUpMSSQL(Connection: TADOConnection; BancoDeDados,
    ArquivoDeBackUpNoServidor: String): Boolean; overload;
  function SetiUsefulBackUpMSSQL(Servidor, BancoDeDados,
  ArquivoDeBackUpNoServidor:
    String; Usuario: String = 'sa'; Senha: String = ''): Boolean; overload;
  procedure SetiUsefulDataSetToExcel(DataSet: TDataSet; Arquivo:
  String; ModoTexto:
    Boolean = True; VisualizaCriacao: Boolean = False; Distinto:
      Boolean = False);
  procedure SetiUsefulDataSetToTXT(DataSet: TDataSet; Arquivo: String;
    Separador: Char = ';');
  procedure SetiUsefulSqlCommands(Command: TADOCommand; InTransaction:
    Boolean = False; Separador: String = ' GO ');
//------------------------------------------------------------------------------
  // %%%%%%%%%%%%% Threads %%%%%%%%%%%%%
  procedure SetiUsefulAsincExcedure(Procedimento: TAsincMethod; Prioridade:
    TThreadPriority = tpLower);
//------------------------------------------------------------------------------
var
  tfArqIni  :TIniFile;
const
  QuebraLinha = #13+#10;
  SeparadorFonte = '|';
  // Faz a leitura de um valor em um determinado Arquivo .INI
  cntArqIniLer         = 1;
  // Faz a grava��o de um valor em um determinado Arquivo .INI
  cntArqIniGravar      = 2;
  // Inicializa o objeto ArqIni
  cntArqIniInicializar = 3;
  // Finaliza o objeto ArqIni
  cntArqIniFinalizar   = 4;
  // Criar o arquivo
  cntArqIniCriar       = 5;

  GreetingTimeMorning   = '00:01';
  GreetingTimeAfternoon = '12:01';
  GreetingTimeNight     = '18:01';
//------------------------------------------------------------------------------
implementation

uses udmMasterDataModule;

procedure teste;
var
  cteste : TSetiUseFulRegister;
begin
  cteste := TSetiUseFulRegister.Create;
  cteste.SetFileId('FS1-F8-1-fn-1');
  SetiMens(0,ErrorInf+cteste.qFileId);
  cteste.Free;
end;

function fnGetInforDescrFS1F8(pTableName:string;pFieldId:string;pFieldDesc:
string; pFieldValue:Integer) : string;
{FS1-F8-1-FN-8}
var
  cReg : TSetiUseFulRegister;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-FN-8');
  Result := '';
  try
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Result := dmMasterDataModule.fnGetInforDescrFS8F1(pTableName,
                                                        pFieldId,
                                                        pFieldDesc,
                                                        pFieldValue);
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;

end;

function TypeFieldValidate(pField:string) : Boolean;
{FS1-F8-1-fn-2}
var
  vType : string;
  cReg : TSetiUseFulRegister;
begin
    Result := False;
    try
      try
        cReg := TSetiUseFulRegister.Create;
        cReg.SetFileId('FS1-F8-1-fn-2');
        if (pField = '') then
          Exit
        else
        begin
          vType := UpperCase(Copy(pField,1,3));
          if
          (vType = 'EDT') or  {TEDIT}
          (vType = 'CBX') or  {CHECKBOX}
          (vType = 'MEM') or  {TMEMO}
          (vType = 'RGR') or  {RADIOGROUP}
          (vType = 'DTP') or  {DATETIMEPICKER}
          (vType = 'CBO') then
            Result := True else
          Result := False;
        end;
        if (Copy(pField,4,1)) <> SConfigFieldSep then
          Result := False;
      except on e : exception do
        SetiMens(0,e.Message+cReg.qFileId);
      end;
    finally
      cReg.Free;
    end;
end;

function GetFieldInfo(pReturn:Integer;pField:string): string;
{FS1-F8-1-fn-1}
var
  vType, vName : string;
  vSize : Integer;
  cReg : TSetiUseFulRegister;
begin
    //pReturn: 0 = type(Retorna e valida tipo.); 1 = name
    cReg := TSetiUseFulRegister.Create;
    cReg.SetFileId('FS1-F8-1-fn-1');
    Result := '';
    try
      try
        if NOT (pReturn in [0,1]) then
          Exit;
        if (pField = '') then
          Exit
        else
        begin
          if (pReturn = 0) then
          begin
            vType := UpperCase(Copy(pField,1,3));
            if (TypeFieldValidate(pField)) then
              Result := vType;
          end;
          if (pReturn = 1) then
          begin
            vSize := Length(pField);
            vName := Copy(pField,5,vSize);
            Result := vName;
          end;
        end;
      except on e : exception do
        SetiMens(0,e.Message+cReg.qFileId);
      end;
    finally
      cReg.Free;
    end;
end;

function fnGetCheckBoxValue(pCheckBox:TCheckBox;pTableName:string;pFieldName:
string) : Variant;
{FS1-F8-1-fn-3}
var
    cReg : TSetiUseFulRegister;
    vTypeDb : string;
    vValues : string;
    vList : TStrings;
    i : Integer;
    vIdCheck : Integer;
    vCount : Integer;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-fn-3');
  Result := '';
  try
    dmMasterDataModule := TdmMasterDataModule.Create(Nil);
    try
      vTypeDb := dmMasterDataModule.fnTableInforFS8F1( pTableName,
                                                       pFieldName, 2);
      vValues := dmMasterDataModule.fnTableInforFS8F1( pTableName,
                                                       pFieldName, 4);
      if (vTypeDb <> '') and (vValues <> '') then
      begin
        if (pCheckBox is TCheckBox) then
        begin
          if (TCheckBox(pCheckBox)).Checked then
            vIdCheck := 1 else vIdCheck := 2;
          vList := TStringList.Create;
          ExtractStrings([';'],[],
          PChar(vValues),vList);
          vCount := 1;
          for i := 0 to vList.Count -1 do
          begin
            if (vIdCheck = vCount) then
            begin
              if (vTypeDb = SConfigFireCHAR) or
                  (vTypeDb = SConfigFireVARCHAR) or
                    (vTypeDb = SConfigFireTIMESTAMP) then
                Result := Trim(vList[i]) else
              if (vTypeDb = SConfigFireSMALLINT) or
                   (vTypeDb = SConfigFireINTEGER) or
                     (vTypeDb = SConfigFireBIGINT) or
                       (vTypeDb = SConfigFireSMALLINT) or
                         (vTypeDb = SConfigFireFLOAT) or
                           (vTypeDb = SConfigFireDOUBLEPRECISION) then
                Result := StrToFloat(vList[i]) else
              if (vTypeDb = SConfigFireNUMERIC) or
                  (vTypeDb = SConfigFireDECIMAL) then
                Result := StrToInt(vList[i]);
            end;
            vCount := vCount + 1;
          end;
        end;
      end;
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;
end;

function fnGetRadioGroupValue(pRadioGroup:TRadioGroup;pTableName:string;
  pFieldName: string) : Variant;
{FS1-F8-1-fn-4}
var
    cReg : TSetiUseFulRegister;
    vTypeDb : string;
    vValues : string;
    vList : TStrings;
    i : Integer;
    vIdCheck : Integer;
    vCount : Integer;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-fn-4');
  Result := '';
  try
    dmMasterDataModule := TdmMasterDataModule.Create(Nil);
    try
      vTypeDb := dmMasterDataModule.fnTableInforFS8F1(  pTableName,
                                                        pFieldName, 2);
      vValues := dmMasterDataModule.fnTableInforFS8F1(  pTableName,
                                                        pFieldName, 4);
      if (vTypeDb <> '') and (vValues <> '') then
      begin
        if (pRadioGroup is TRadioGroup) then
        begin
          if (TRadioGroup(pRadioGroup).ItemIndex > -1) then
          begin
            vIdCheck := (TRadioGroup(pRadioGroup)).ItemIndex;
            vList := TStringList.Create;
            ExtractStrings([';'],[],
            PChar(vValues),vList);
            vCount := 0;
            for i := 0 to vList.Count -1 do
            begin
              if (vIdCheck = vCount) then
              begin
                if (vTypeDb = SConfigFireCHAR) or
                    (vTypeDb = SConfigFireVARCHAR) or
                      (vTypeDb = SConfigFireTIMESTAMP) then
                  Result := Trim(vList[i]) else
                if (vTypeDb = SConfigFireSMALLINT) or
                     (vTypeDb = SConfigFireINTEGER) or
                       (vTypeDb = SConfigFireBIGINT) or
                         (vTypeDb = SConfigFireSMALLINT) or
                           (vTypeDb = SConfigFireFLOAT) or
                             (vTypeDb = SConfigFireDOUBLEPRECISION) then
                  Result := StrToFloat(vList[i]) else
                if (vTypeDb = SConfigFireNUMERIC) or
                    (vTypeDb = SConfigFireDECIMAL) then
                  Result := StrToInt(vList[i]);
              end;
              vCount := vCount + 1;
            end;
          end;
        end;
      end;
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;
end;

function fnFieldHasGeneratorFS1F8(pTableName:string;pFieldName:string) :
string;
{FS1-F8-1-fn-5}
var
  cReg : TSetiUseFulRegister;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-fn-5');
  Result := '';
  try
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Result := dmMasterDataModule.fnFieldHasGeneratorFS8F1(  pTableName,
                                                              pFieldName);
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;
end;

function fnTableInforFS1F8(pTableName:string;pFieldName: string; pReturn:
Integer ): Variant;
{FS1-F8-1-FN-6}
var
  cReg : TSetiUseFulRegister;
begin
{
  A diferen�a desta fun��o, � que os parametros s�o obrigat�rios, e no
  udmmasterdatamodule n�o, o objetivo desta � apenas chamar a outra, e
  no final destruir a instancia do dm criado...
}

  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-FN-6');
  {
    Retornos:
      0 :  TABLE        - TABELA
      1 :  FIELD        - CAMPO
      2 :  TYPE         - TIPO DO CAMPO
      3 :  CAPTION      - CAPTION
      4 :  FIXED VALUE  - VALORES FIXOS
      5 :  MANDATORY    - CAMPO OBRIGAT�RIO
      6 :  LENGTH       - TAMANHO DO CAMPO
      7 :  DEFAULT      - POSSUI VALOR DEFAULT
  }
  case pReturn of
    1 : Result := '';
    2 : Result := '';
    3 : Result := '';
    4 : Result := '';
    5 : Result := 'N';
    6 : Result := -1;
    7 : Result := '';
  end;
  try
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Result := dmMasterDataModule.fnTableInforFS8F1
                                (
                                  pTableName,
                                  pFieldName,
                                  pReturn
                                );
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;
end;

function fnComponentInforFS1F8(pFormName:string;pComponentName,
pSpFieldReturn : string): Variant;
{FS1-F8-1-FN-7}
var
  cReg : TSetiUseFulRegister;
begin
  cReg := TSetiUseFulRegister.Create;
  cReg.SetFileId('FS1-F8-1-FN-7');
  try
    try
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      Result := dmMasterDataModule.fnComponentInforFS8F1
                                (
                                  pFormName,
                                  pComponentName,
                                  pSpFieldReturn
                                );
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+cReg.qFileId);
  end;
end;

function SetiGetNextNumber(Num:Integer) : Integer;
begin
    try
      if (Num > 0) then
      begin
        Inc(Num);
        Result := Num;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function Mascara(edt: String;str:String):string;
var
  i : integer;
begin
  for i := 1 to Length(edt) do
  begin
     if (str[i] = '9') and not (edt[i] in ['0'..'9']) and
      (Length(edt)=Length(str)+1) then
        delete(edt,i,1);
     if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
        insert(str[i],edt, i);
  end;
  result := edt;
end;


function SetiUsefulOriginalFormName(Name: string): string;
begin
    try
        Result := StringReplace(Name,'_1','', [rfReplaceAll, rfIgnoreCase]);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


function SetiUsefulArqIni(iTpOp:Integer;sSecao,sIdentificador,sValor:String):
Variant;
begin
    try
      if (iTpOp = cntArqIniLer) then
      begin // 1 - Leitura
        Result := tfArqIni.ReadString(sSecao,sIdentificador,sValor)
      end else
      if (iTpOp = cntArqIniGravar) then
      begin // 2 - Gravacao
        tfArqIni.WriteString(sSecao,sIdentificador,sValor);
        Result := true;
      end else
      if (iTpOp = cntArqIniInicializar) then
      begin
        // sSecao deve conter o nome do arquivo .INI juntamente com o seu PATH
        tfArqIni := TIniFile.Create(sSecao);
      end else
      if (iTpOp = cntArqIniFinalizar) then
      begin
        tfArqIni := nil;
      end else
        Result := '';
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;
function SetiArqIniCreate(iTpOp:Integer;Path,Name,Tag,identity,Value:String):
Variant;
begin
    try
      try
        if (iTpOp = cntArqIniCriar) then
        begin
            tfArqIni := TIniFile.Create(Path+'\'+Name);
            tfArqIni.WriteString(Tag,identity,Value);
        end;
      finally
        tfArqIni.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulGridMarkAll(Grid: TDBGrid);
var
    vlLinha: Integer;
begin
    try
      with Grid.DataSource.DataSet do begin
        First;
        for vlLinha := 0 to RecordCount - 1 do begin
          Grid.SelectedRows.CurrentRowSelected := True;
          Next;
        end;
      end;
      Grid.SelectedRows.Refresh;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulGridMarkOff(Grid: TDBGrid);
var
    vlLinha: Integer;
begin
    try
      with Grid.DataSource.DataSet do begin
          First;
          for vlLinha := 0 to RecordCount - 1 do begin
              Grid.SelectedRows.CurrentRowSelected := False;
              Next;
          end;
      end;
      Grid.SelectedRows.Refresh;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulOrdenaGrid(gGrid:TDBGrid; ColunaSelecionada: TColumn);
var
    i:Integer;
    indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
    Cor:TColor;
begin
    try
      Cor := gGrid.Columns[0].Title.Font.Color;
      for i := 0 to gGrid.Columns.Count-1 do
        gGrid.Columns[i].Title.Font.Color := Cor;
      ColunaSelecionada.Title.Font.Color := clRed;
      clientdataset_idx := TClientDataset(
        ColunaSelecionada.Grid.DataSource.DataSet);
      if clientdataset_idx.IndexFieldNames =
          ColunaSelecionada.FieldName then begin
        indice := AnsiUpperCase(ColunaSelecionada.FieldName+'_INV');
        try
          clientdataset_idx.IndexDefs.Find(indice);
          existe := true;
          except
            existe := false;
          end;
        if not existe then
          with clientdataset_idx.IndexDefs.AddIndexDef do begin
            Name := indice;
            Fields := ColunaSelecionada.FieldName;
            Options := [ixDescending];
          end;
        clientdataset_idx.IndexName := indice;
      end else
      clientdataset_idx.IndexFieldNames := ColunaSelecionada.FieldName;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulCrypt(Action, Src: String): String;
Label Fim;
var
    KeyLen : Integer;
    KeyPos : Integer;
    OffSet : Integer;
    Dest, Key : String;
    SrcPos : Integer;
    SrcAsc : Integer;
    TmpSrcAsc : Integer;
    Range : Integer;
begin
    try
      if (Src = '') Then
      begin
              Result:= '';
              Goto Fim;
      end;
      Key := 'AQUI VOCE CRIA SUA CHAVE PARA CRIPTOGRAFAR';
      Dest := '';
      KeyLen := Length(Key);
      KeyPos := 0;
      SrcPos := 0;
      SrcAsc := 0;
      Range := 256;
      if (Action = UpperCase('C')) then
      begin
              Randomize;
              OffSet := Random(Range);
              Dest := Format('%1.2x',[OffSet]);
              for SrcPos := 1 to Length(Src) do
              begin
                      Application.ProcessMessages;
                      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
                      if KeyPos < KeyLen then
                        KeyPos := KeyPos + 1
                      else
                        KeyPos := 1;

                      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                      Dest := Dest + Format('%1.2x',[SrcAsc]);
                      OffSet := SrcAsc;
              end;
      end
      else if (Action = UpperCase('D')) then
      begin
          //adiciona o $ entra as aspas simples
          OffSet := StrToInt('$' + copy(Src,1,2));
          SrcPos := 3;
          repeat
            //adiciona o $ entra as aspas simples
            SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));
            if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
            TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
            if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
            else TmpSrcAsc := TmpSrcAsc - OffSet;
            Dest := Dest + Chr(TmpSrcAsc);
            OffSet := SrcAsc;
            SrcPos := SrcPos + 2;
              until (SrcPos >= Length(Src));
      end;
      Result:= Dest;
      Fim:
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulFormatSerieCaderno(numSerial:string): String;
var
  cont : Integer;
  NovoNum : string;
const
    A ='9'; B ='8'; C ='7'; D ='6'; E ='5'; F ='4'; G ='3'; H ='2';
    I ='1'; J ='0'; K ='Z'; L ='Q'; M ='X'; N ='W'; O ='C'; P ='E';
    Q ='V'; R ='R'; S ='B'; T ='T'; U ='N'; V ='Y'; X ='M'; W ='O';
    Y ='U'; Z ='L';

begin
    try
      if numSerial = '' then
        Result := '' else
      begin
       for cont := 1 to Length(numSerial) do
       begin
        if numSerial[cont] = 'A' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], A, [])
        else
        if numSerial[cont] = 'B' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], B, [])
        else
        if numSerial[cont] = 'Y' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], C, [])
        else
        if numSerial[cont] = 'D' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], D, [])
        else
        if numSerial[cont] = 'E' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], E, [])
        else
        if numSerial[cont] = 'F' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], F, [])
        else
        if numSerial[cont] = 'G' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], G, [])
        else
        if numSerial[cont] = 'H' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], H, [])
        else
        if numSerial[cont] = 'I' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], I, [])
        else
        if numSerial[cont] = 'J' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], J, [])
        else
        if numSerial[cont] = 'K' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], K, [])
        else
        if numSerial[cont] = 'L' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], L, [])
        else
        if numSerial[cont] = 'M' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], M, [])
        else
        if numSerial[cont] = 'N' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], N, [])
        else
        if numSerial[cont] = 'O' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], O, [])
        else
        if numSerial[cont] = 'P' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], P, [])
        else
        if numSerial[cont] = 'Q' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], Q, [])
        else
        if numSerial[cont] = 'R' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], R, [])
        else
        if numSerial[cont] = 'S' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], S, [])
        else
        if numSerial[cont] = 'T' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], T, [])
        else
        if numSerial[cont] = 'U' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], U, [])
        else
        if numSerial[cont] = 'V' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], V, [])
        else
        if numSerial[cont] = 'X' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], X, [])
        else
        if numSerial[cont] = 'W' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], W, [])
        else
        if numSerial[cont] = 'Y' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], Y, [])
        else
        if numSerial[cont] = 'Z' then
          NovoNum := NovoNum + StringReplace(numSerial, numSerial[cont], Z, [])
        else
       end;
       //ShowMessage(NovoNum);
       Result := NovoNum;
    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulSHCopyFiles(Source, Destination: TFileName): Boolean;
  var
    SHFileOpStruct: TSHFileOpStruct;
begin
    try
      with SHFileOpStruct do
        begin
          Wnd               := Screen.ActiveForm.Handle;
          wFunc             := FO_COPY;
          pFrom             := PChar(source + chr(0));
          pTo               := PChar(Destination);
          fFlags            := FOF_FILESONLY or FOF_NOCONFIRMATION;
          hNameMappings     := nil;
          lpszProgressTitle := nil;
        end;

      if SHFileOperation(SHFileOpStruct) = 0 then
        Result := True
        else Result := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulHDSerialNumber(pcDrive:PChar):String;
var
	  sNameVol,sNameSys : AnsiString;
    SerialNo,MaxCLength,FileFlags : DWord;
begin
    Result := '';
    try
		  SetLength(sNameVol,255);
      SetLength(sNameSys,255);
      GetVolumeInformation(pcDrive,PChar(sNameVol),255,@SerialNo,
      MaxCLength,FileFlags,PChar(sNameSys),255);
      Result := IntToHex(SerialNo,8);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulMotherBoardSerialNumber: String;
var
	a, b, c, d: LongWord;
begin
    result := '';
    try
      asm
        push EAX
        push EBX
        push ECX
        push EDX

        mov eax, 1
        db $0F, $A2
        mov a, EAX
        mov b, EBX
        mov c, ECX
        mov d, EDX

        pop EDX
        pop ECX
        pop EBX
        pop EAX
      end;

      result := inttohex(a, 8) + '-' +
            inttohex(b, 8) + '-' +
              inttohex(c, 8) + '-' +
                inttohex(d, 8);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulCPFValidado(numCPF: string): boolean;
var
	cpf: string;
	x, total, dg1, dg2: Integer;
	ret: boolean;
begin
    try
      ret:=True;
      for x:=1 to Length(numCPF) do
        if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
          ret:=False;
        if ret then begin
          ret:=True;
          cpf:='';
          for x:=1 to Length(numCPF) do
            if numCPF[x] in ['0'..'9'] then
              cpf:=cpf + numCPF[x];
            if Length(cpf) <> 11 then
              ret:=False;
            if ret then begin
              //1� d�gito
              total:=0;
              for x:=1 to 9 do
                total:=total + (StrToInt(cpf[x]) * x);
                dg1:=total mod 11;
              if dg1 = 10 then
                dg1:=0;
                //2� d�gito
                total:=0;
                for x:=1 to 8 do
                  total:=total + (StrToInt(cpf[x + 1]) * (x));
                  total:=total + (dg1 * 9);
                  dg2:=total mod 11;
              if dg2 = 10 then
                dg2:=0;
              //Valida��o final
              if dg1 = StrToInt(cpf[10]) then
                if dg2 = StrToInt(cpf[11]) then
                  ret:=True;
              //Inv�lidos

              case AnsiIndexStr(cpf,['00000000000',
                                     '11111111111',
                                     '22222222222',
                                     '33333333333',
                                     '44444444444',
                                     '55555555555',
                                     '66666666666',
                                     '77777777777',
                                     '88888888888',
                                     '99999999999']) of

                  0..9:   ret:=False;
            end;
        end
        else
        begin
          //Se n�o informado deixa passar
          if cpf = '' then
            ret:=True;
          end;
        end;
      SetiUsefulCPFValidado := ret;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDataPorExtenso(Data:TDateTime): String;
var
	NoDia : Integer;
	Now: TdateTime;
	DiaDaSemana : array [1..7] of String;
	Meses : array [1..12] of String;
	Dia, Mes, Ano : Word;
begin
    try
      { Dias da Semana }
      DiaDasemana [1]:= 'Domingo';
      DiaDasemana [2]:= 'Segunda-feira';
      DiaDasemana [3]:= 'Ter�a-feira';
      DiaDasemana [4]:= 'Quarta-feira';
      DiaDasemana [5]:= 'Quinta-feira';
      DiaDasemana [6]:= 'Sexta-feira';
      DiaDasemana [7]:= 'S�bado';
      { Meses do ano }
      Meses [1]:= 'Janeiro';
      Meses [2]:= 'Fevereiro';
      Meses [3]:= 'Mar�o';
      Meses [4]:= 'Abril';
      Meses [5]:= 'Maio';
      Meses [6]:= 'Junho';
      Meses [7]:= 'Julho';
      Meses [8]:= 'Agosto';
      Meses [9]:= 'Setembro';
      Meses [10]:= 'Outubro';
      Meses [11]:= 'Novembro';
      Meses [12]:= 'Dezembro';
      DecodeDate (Data, Ano, Mes, Dia);
      NoDia := DayOfWeek (Data);
      Result := DiaDaSemana [NoDia] + ', ' + inttostr (Dia) + ' de ' +
                                  Meses [Mes]+ ' de ' + inttostr (Ano);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulUsefulFolderDel(DirName: TFileName) : Boolean;
var
  Error: Integer;
  FileSearch: TSearchRec;
begin
    try
      if DirName[Length(DirName)] <> '\' then
        DirName := DirName + '\';

      Error := FindFirst(DirName + '*.*', faAnyFile, FileSearch);

      try
        with FileSearch do
          while (Error = 0) do
          begin
            if (DirName + Name <> '.') and (DirName + Name <> '..') then
              System.SysUtils.DeleteFile(DirName + Name);
            Error := FindNext(FileSearch);
          end;
      finally
        System.SysUtils.FindClose(FileSearch);
      end;

      Result := RemoveDir(DirName);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulMascaraCPFCNPJ(Tipo,CPFCNPJ: Byte): String;
  var iMask: array [1..2,1..2] of String;
begin
    try
      iMask[1,1] := '000"."000"."000"-"00';
      iMask[1,2] := '00"."000"."000"/"0000"-"00';
      iMask[2,1] := '>CCC.CCC.CCC-CC;0;_';
      iMask[2,2] := '>CC.CCC.CCC/CCCC-CC;0;_';
      if ((Tipo + CPFCNPJ) <= 4) then
        Result := iMask[Tipo,CPFCNPJ]
        else Result := '';
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulCompletaString(xString: String; CompletaCom: Char; Tamanho:
Cardinal; Antes: Boolean): String;
var
 TamanhoAtual, i: Cardinal;
 aux: String;
begin
    try
      TamanhoAtual := Length(xString);
      if (TamanhoAtual < Tamanho) then
        begin
          aux := '';
          for i := 1 to (Tamanho - TamanhoAtual) do
            aux := aux + CompletaCom;
          if Antes then
            Result := aux + xString
            else Result := xString + aux;
        end else Result := Copy(xString,1, Tamanho);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulRetornaNumero(Texto: String): String;
  var i: Cardinal;
begin
    try
      Result := '';
      for i := 1 to Length(Texto) do
        if (Texto[i] in ['0'..'9']) then
          Result := Result + Texto[i];
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulFormataCEP(CEP : string): string;
begin
    try
       if Length(CEP) = 8 then
          Result := Copy(CEP,1,2)+ '.' + Copy(CEP,3,3) + '-' + Copy(CEP,6,3)
       else
          Result := CEP;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulFormataCPFCNPJ(CPFCNPJ: String): String;
  var auxTamanho: Byte;
begin
    try
      CPFCNPJ := SetiUsefulRetornaNumero(CPFCNPJ);
      auxTamanho := Length(CPFCNPJ);
      if (auxTamanho = 11) then
        Result := FormatFloat(SetiUsefulMascaraCPFCNPJ(1,1),
        StrToInt64(CPFCNPJ))
        else if (auxTamanho = 14) then
          Result := FormatFloat(SetiUsefulMascaraCPFCNPJ(1,2),
          StrToInt64(CPFCNPJ))
          else Result := '';
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulPesquisaRegistro(iForm: TForm):Boolean;
  var i: Integer;
      Titulo, Campo, Pesquisa: String;
      iDataSet: TDataSet;
begin
    try
      Pesquisa      := '';
      campo         := '';
      Result        := False;
      //iDataSet      := nil;
      for i := 0 to (iForm.ComponentCount -1) do
        if ((iForm.Components[i] is TDBEdit) and
           ((iForm.Components[i] as TDBEdit).DataSource.DataSet.Active) and
           ((iForm.Components[i] as TDBEdit).Focused) and
           ((iForm.Components[i] as TDBEdit).Field.FieldKind = fkData)) then
        begin
          //iDataSet := (iForm.Components[i] as TDBEdit).DataSource.DataSet;
          campo := (iForm.Components[i] as TDBEdit).DataField;
        end else
        if ((iForm.Components[i] is TDBGrid)
          and((iForm.Components[i] as TDBGrid).DataSource.DataSet.Active)
          and((iForm.Components[i] as TDBGrid).Focused)
          and((iForm.Components[i] as
            TDBGrid).SelectedField.FieldKind = fkData)) then
        begin
          //iDataSet := (iForm.Components[i] as TDBGrid).DataSource.DataSet;
          campo := (iForm.Components[i] as
          TDBGrid).Columns[(iForm.Components[i] as
          TDBGrid).SelectedIndex].FieldName;
        end else
        if ((iForm.Components[i] is TDBMemo)
          and((iForm.Components[i] as TDBMemo).DataSource.DataSet.Active)
          and((iForm.Components[i] as TDBMemo).Focused)
          and((iForm.Components[i] as TDBMemo).Field.FieldKind = fkData)) then
         begin
           //iDataSet := (iForm.Components[i] as TDBMemo).DataSource.DataSet;
           campo := (iForm.Components[i] as TDBMemo).DataField;
         end;

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulTruncaValor(iNumero: Extended; Casas: Byte = 2): Extended;
begin
    try
      if Casas > 0 then
        begin
          Result := Power(10,Casas);
          Result := ((Trunc(iNumero * Result)) / Result);
        end else Result := Int(iNumero);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function  SetiUsefulSoRetornaNumero(Texto : String) : String;
var
  I: integer;
  S: string;
begin
    try
      S := '';
       for I := 1 To Length(Texto) Do
       begin
        if (Texto[I] in ['0'..'9']) then
        begin
         S := S + Copy(Texto, I, 1);
        end;
       end;
        result := S;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

function SetiUsefulArredValores(value: double;casas : integer): double;
Var
fracao, Total:real;
decimal:string;
begin
    try
        //Retorna a parte fracion�ria de um n�mero
        fracao:=Frac(value);
        //decimal recebe a parte decimal
        decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2));
        //Enquanto o tamanho da variavel decimal for maior que o n�mero
        //de casas fa�a
        while length(decimal) > casas do
        begin
          //Verifica se o �ltimo digito da vari�vel decimal � maior que 5
        if strtoint(RightStr(decimal,1))>5 then
          begin
          //Descarta o �ltimo digito da vari�vel Decimal
          decimal:=leftstr(decimal,length(decimal)-1);
          //Soma o valor n�mero da variavel decimal + 1
          decimal:=floattostr(strtofloat(decimal) + 1);
          end
       else
          //Descarta o �ltimo digito da vari�vel Decimal
          decimal:=leftstr(decimal,length(decimal)-1);
       end;
       //devolve o resultado para a fun��o
       result:=(int(value) + (strtofloat(decimal)/100));
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

function SetiUsefulArredondaValor(iNumero: Extended; Casas: Byte): Extended;
begin
    try
      if Casas > 0 then
        Result := StrToFloat(FloatToStrF(iNumero,ffFixed,18,Casas))
        else Result := iNumero;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulArredondaPraCima(iNumero: Double): Int64;
begin
    try
      if (iNumero > 0) then
        Result := Ceil(iNumero)
        else if (iNumero < 0) then
          Result := Floor(iNumero)
          else Result := 0;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDV_CPF(Dado:String):String;
var Dig:array [1..9] of byte;{refere-se aos numeros do CPF}
    cont, {contador aleatorio}
    Dif1,Dif2,Dif3, {direrencas entre numeros}
    Resto, {resto entre numeros}
    PrimeiroDig, SegundoDig: integer; {digitos verificadores}

    procedure zera;
    begin
      Dif1:=0; Dif2:=0; Dif3:=0; Resto:=0; cont:=0;
    end;

begin
  try
    {Retorna '' se CPF inv�lido}
    if (Length(Dado)in[9..11]) then
      begin
        {Preenchendo vetor numerico}
        for cont:=1 to 9 do
          if Dado[cont] in ['0'..'9']then
            Dig[cont]:=StrToInt(Dado[cont])
            else begin
              result:='';
              exit;
            end;
        {calculando o primeiro digito, inicio}
        zera;
        Dif1:= ((10 * Dig[1]) + (9 * Dig[2]) + (8 * Dig[3]) + (7 * Dig[4]) +
               (6 * Dig[5]) + (5 * Dig[6]) + (4 * Dig[7]) + (3 * Dig[8]) +
               (2 * Dig[9]));
        Dif2:= Dif1 div 11;
        Dif3:= Dif2 * 11;
        Resto:= Dif1 - Dif3;
        if ((Resto = 0) or (Resto = 1)) then
          PrimeiroDig := 0
          else PrimeiroDig := (11 - Resto);
        {calculando o primeiro digito, fim}
        {calculando o segundo digito, inicio}
        zera;
        Dif1:= ((11 * Dig[1]) + (10 * Dig[2]) + (9 * Dig[3]) + (8 * Dig[4]) +
                (7 * Dig[5]) + (6 * Dig[6]) + (5 * Dig[7]) + (4 * Dig[8]) +
                (3 * Dig[9]) + (2 * PrimeiroDig));
        Dif2:= Dif1 div 11;
        Dif3:= Dif2 * 11;
        Resto:= Dif1 - Dif3;
        if ((Resto = 0) or (Resto = 1)) then
          SegundoDig := 0
          else SegundoDig := (11 - Resto);
        {calculando o segundo digito, fim}
        result := Copy(Dado,1,9) + IntToStr(PrimeiroDig) + IntToStr(SegundoDig);
      end else result:=''
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulValida_CPF(Dado:String):Boolean;
  const N_Inv = '00000000000'+
                '11111111111'+
                '22222222222'+
                '33333333333'+
                '44444444444'+
                '55555555555'+
                '66666666666'+
                '77777777777'+
                '88888888888'+
                '99999999999';
begin
  try
    // Dado := RetornaNumero(Dado);
      Result := ((Dado <> '') and
                (Pos(Dado,N_Inv) = 0) and
                (Dado = SetiUsefulDV_CPF(Dado)));
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulDV_CGC(Dado:String):String;
  var Dig:array [1..12] of byte;{refere-se aos numeros do CGC}
      cont, {contador aleatorio}
      Dif1,Dif2,Dif3, {direrencas entre numeros}
      Resto, {resto entre numeros}
      PrimeiroDig, SegundoDig: integer; {digitos verificadores}

  procedure SetiUsefulzera;
    begin
      Dif1:=0; Dif2:=0; Dif3:=0; Resto:=0; cont:=0;
    end;

begin
    try
      //
    except on e : exception do
        SetiMens(0,e.Message);
    end;
  if (Length(Dado) in [12..14]) then
    begin
      {Preenchendo vetor numerico}
      for cont := 1 to 12 do
        if Dado[cont] in ['0'..'9']then
          Dig[cont]:=StrToInt(Dado[cont])
          else begin
            result:='';
            exit;
          end;
      {calculando o primeiro digito, inicio}
      SetiUsefulzera;
      Dif1:= ((5 * Dig[1]) + (4 * Dig[2]) + (3 * Dig[3]) + (2 * Dig[4]) +
              (9 * Dig[5]) + (8 * Dig[6]) + (7 * Dig[7]) + (6 * Dig[8]) +
              (5 * Dig[9]) + (4 * Dig[10]) + (3 * Dig[11]) + (2 * Dig[12]));
      Dif2:= Dif1 div 11;
      Dif3:= Dif2 * 11;
      Resto:= Dif1 - Dif3;
      if ((Resto = 0) or (Resto = 1)) then
        PrimeiroDig := 0
        else PrimeiroDig := (11 - Resto);
      {calculando o primeiro digito, fim}
      {calculando o segundo digito, inicio}
      SetiUsefulzera;
      Dif1:= ((6 * Dig[1]) + (5 * Dig[2]) + (4 * Dig[3]) + (3 * Dig[4]) +
              (2 * Dig[5]) + (9 * Dig[6]) + (8 * Dig[7]) + (7 * Dig[8]) +
              (6 * Dig[9]) + (5 * Dig[10]) + (4 * Dig[11]) + (3 * Dig[12]) +
              (2 * PrimeiroDig));
      Dif2:= Dif1 div 11;
      Dif3:= Dif2 * 11;
      Resto:= Dif1 - Dif3;
      if ((Resto = 0) or (Resto = 1)) then
        SegundoDig := 0
        else SegundoDig := (11 - Resto);
      {calculando o segundo digito, fim}
      result := Copy(Dado,1,12) + IntToStr(PrimeiroDig) + IntToStr(SegundoDig);
    end else result:='';
end;

function SetiUsefulValida_CGC(Dado:String):Boolean;
  const N_Inv = '00000000000000'+
                '11111111111111'+
                '22222222222222'+
                '33333333333333'+
                '44444444444444'+
                '55555555555555'+
                '66666666666666'+
                '77777777777777'+
                '88888888888888'+
                '99999999999999';
begin
  try
    //  Dado := RetornaNumero(Dado);
      Result := ((Dado <> '') and
                (Pos(Dado,N_Inv) = 0) and
                (Dado = SetiUsefulDV_CGC(Dado)));
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulValida_CPF_CGC(Dado:String):Boolean;
begin
    try
      Result := (((Length(Dado) = 11) and
                 (SetiUsefulValida_CPF(Dado))) or
                 ((Length(Dado) = 14) and
                 (SetiUsefulValida_CGC(Dado))));
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDV_EAN(Dado:String):String;
  var Tamanho,cont,mult: Byte;
      Soma, Sub: Cardinal;
begin
    try
      Tamanho := Length(Dado);
      Soma := 0;
      Result := '';
      mult := 3;

      for cont := Tamanho downto 1 do
        if Dado[cont] in ['0'..'9']then
          begin
            Soma := Soma + Trunc(StrToInt(Dado[cont]) * mult);
            if mult = 3 then
              mult := 1
              else mult := 3;
          end else Exit;

      if Soma <= 10 then
        Result := Dado + IntToStr(10 - Soma)
        else begin
          Sub := Soma div 10;
          if ((Soma / Sub) = 10) then
            Result := Dado + '0'
            else Result := Dado + IntToStr(((Sub * 10) + 10) - Soma);
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulValida_EAN(Dado:String):Boolean;
begin
    try
      Dado := SetiUsefulRetornaNumero(Dado);
      Result := (Dado = SetiUsefulDV_EAN(Copy(Dado,1,(Length(dado) - 1))));
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulNumSerieHD(fDrive: Char): String;
  var Serial, DirLen, Flags: DWord;
      DLabel: array[0..11] of Char;
begin
    Result := '';
    try
      GetVolumeInformation(PChar(fDrive +
        ':\'),DLabel,12,@Serial,DirLen,Flags,nil,0);
      Result := IntToHex(Serial,8);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulFormOpen(var NomeForm; ClassForm: TFormClass; AOwener:
TComponent;
Modal: Boolean; Canto: Boolean);
begin
    try
      if not(Assigned(TForm(NomeForm))) then
        TForm(NomeForm) := ClassForm.Create(AOwener);

      if Canto then
        begin
          TForm(NomeForm).Top  := 0;
          TForm(NomeForm).Left := 0;
        end;

      if Modal then
        TForm(NomeForm).ShowModal
        else TForm(NomeForm).Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

{$IFDEF VER230} //Delphi Xe2
{$ENDIF}

{$IFDEF VER210} //Delphi 2010
{$ENDIF}

{$IFDEF VER180} //Delphi 2007

procedure SetiUsefulChamaRel(var NomeRel; ClassRel: TRelClass; Modal: Boolean);
begin
    try
      //
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
  if (Assigned(TQuickRep(NomeRel))) then
    FreeAndNil(NomeRel);

  TQuickRep(NomeRel) := ClassRel.Create(Application);

  if Modal then
  begin
    try
      TQuickRep(NomeRel).PreviewModal;
    finally
      FreeAndNil(NomeRel);
    end;
  end else begin
    try
      TQuickRep(NomeRel).Preview;
    finally
      TQuickRep(NomeRel) := nil;
    end;
  end;
end;
{$ENDIF}
//VOLTAR DEPOIS DE INSTALAR O QUICKREPORT...
//{$IFDEF VER230} //Delphi XE 2
//procedure SetiUsefulChamaRel(var NomeRel;
//ClassRel: TRelClass; Modal: Boolean);
//begin
//  if (Assigned(TQuickRep(NomeRel))) then
//    FreeAndNil(NomeRel);

//  TQuickRep(NomeRel) := ClassRel.Create(Application);

//  if Modal then
//  begin
//    try
//      TQuickRep(NomeRel).PreviewModal;
//    finally
//      FreeAndNil(NomeRel);
//    end;
//  end else begin
//    try
//      TQuickRep(NomeRel).Preview;
//    finally
//      TQuickRep(NomeRel) := nil;
//    end;
//  end;
//end;
//{$ENDIF}

function SetiUsefulMaiusculo(Letra: Char):Char;
  var auxMaiusculo: String;
begin
    try
      auxMaiusculo := AnsiUpperCase(Letra);
      Result := auxMaiusculo[1];
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulPalavraMaiusculo(Palavra: String):String;
  var auxPalavraMaiusculo: Integer;
begin
    try
      Result := '';
      for auxPalavraMaiusculo := 1 to (Length(Palavra)) do
        Result := Result + SetiUsefulMaiusculo(Palavra[auxPalavraMaiusculo]);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulSeculo(Adate: String ) : TDateTime;
var
  Ano, Mes, Dia : String;
begin
  Result := 0;
  try
    Dia := copy(Adate,1,2);
    Mes := copy(Adate,3,2);
    Ano := copy(Adate,5,2);
    if (StrToInt(Dia) > 0)  and  (StrToInt(Mes) > 0) Then
    begin
      if StrToInt(Ano) > 19 then
        Ano := '19'+Ano
      else
        Ano := '20'+Ano;
        Result := StrToDateTime( Dia+'/'+Mes+'/'+Ano);
    end else
      Result := 0;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulUsuarioLogado : String;
var
  lpBuffer : Array[0..20] of Char;
  nSize    : dWord;
  Achou    : boolean;
  erro     : dWord;
begin
    try
      nSize      := 120;
      Achou      := GetUserName(lpBuffer,nSize);
      if (Achou) then
        result := lpBuffer
      else
      begin
        Erro   :=GetLastError();
        result :=IntToStr(Erro);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulUsefulIP: String;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name:string;
begin
    try
      WSAStartup(2, WSAData);
      SetLength(Name, 255);
      Gethostname(PAnsiChar(Name), 255);
      SetLength(Name, StrLen(PChar(Name)));
      HostEnt := gethostbyname(PAnsiChar(Name));
      with HostEnt^ do
      begin
        Result := Format('%d.%d.%d.%d',
                  [Byte(h_addr^[0]),Byte(h_addr^[1]),
                  Byte(h_addr^[2]),Byte(h_addr^[3])]);
        end;
        WSACleanup;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulRetiraAcentos(Palavra: String; Extra: Boolean): String;
  var i: Integer;
begin
    try
      for i := Length(Palavra) downto 1 do
        case Palavra[i] of
          '�': Palavra[i]  := 'a';
          '�': Palavra[i]  := 'e';
          '�': Palavra[i]  := 'i';
          '�': Palavra[i]  := 'o';
          '�': Palavra[i]  := 'u';
          '�': Palavra[i]  := 'a';
          '�': Palavra[i]  := 'e';
          '�': Palavra[i]  := 'i';
          '�': Palavra[i]  := 'o';
          '�': Palavra[i]  := 'u';
          '�': Palavra[i]  := 'a';
          '�': Palavra[i]  := 'e';
          '�': Palavra[i]  := 'i';
          '�': Palavra[i]  := 'o';
          '�': Palavra[i]  := 'u';
          '�': Palavra[i]  := 'a';
          '�': Palavra[i]  := 'e';
          '�': Palavra[i]  := 'i';
          '�': Palavra[i]  := 'o';
          '�': Palavra[i]  := 'u';
          '�': Palavra[i]  := 'a';
          '�': Palavra[i]  := 'o';
          '�': Palavra[i]  := 'n';
          '�': Palavra[i]  := 'c';
          '�': Palavra[i]  := 'A';
          '�': Palavra[i]  := 'E';
          '�': Palavra[i]  := 'I';
          '�': Palavra[i]  := 'O';
          '�': Palavra[i]  := 'U';
          '�': Palavra[i]  := 'A';
          '�': Palavra[i]  := 'E';
          '�': Palavra[i]  := 'I';
          '�': Palavra[i]  := 'O';
          '�': Palavra[i]  := 'U';
          '�': Palavra[i]  := 'A';
          '�': Palavra[i]  := 'E';
          '�': Palavra[i]  := 'I';
          '�': Palavra[i]  := 'O';
          '�': Palavra[i]  := 'U';
          '�': Palavra[i]  := 'A';
          '�': Palavra[i]  := 'E';
          '�': Palavra[i]  := 'I';
          '�': Palavra[i]  := 'O';
          '�': Palavra[i]  := 'U';
          '�': Palavra[i]  := 'A';
          '�': Palavra[i]  := 'O';
          '�': Palavra[i]  := 'N';
          '�': Palavra[i]  := 'C';
        else
        if (((not Extra) or (not(Palavra[i] in ['/', '.', ',', '-']))) and
          ((Palavra[i] > #32) and
          (not(Palavra[i] in ['a'..'z','A'..'Z','0'..'9'])))) then
          Delete(Palavra, i, 1);
    end;
    Result := Palavra;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulBackUpMSSQL(Servidor, BancoDeDados, ArquivoDeBackUp: String;
var Erro: String): Boolean;
  var SS, BB: OleVariant;
begin
    Result := False;
    try
      SS                  := CreateOleObject('SQLDMO.SQLServer');
      BB                  := CreateOleObject('SQLDMO.Backup');
      SS.LoginSecure      := True;
      SS.Connect(Servidor);
      BB.Database         := BancoDeDados;
      BB.Files            := ArquivoDeBackUp;
      BB.SQLBackup(SS);
      Result              := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulBackUpMSSQL(Connection: TADOConnection; BancoDeDados,
ArquivoDeBackUpNoServidor: String): Boolean;
begin
    Result := False;
    try
      Connection.Execute(' IF EXISTS                                 '+
                         '  ( SELECT TOP 1 [name]                    '+
                         '    FROM [master].[dbo].[sysdevices]       '+
                         '    WHERE [name] = ''TEMP_BACKUP''         '+
                         '  )                                        '+
                         ' BEGIN                                     '+
                         '   EXEC sp_dropdevice ''TEMP_BACKUP''      '+
                         ' END                                       '+
                         '   EXEC sp_addumpdevice ''disk'',          '+
                         '   ''TEMP_BACKUP'',                        '+
                         '' + ArquivoDeBackUpNoServidor + '''' +
                         ' BACKUP DATABASE ' + BancoDeDados +
                         ' TO TEMP_BACKUP' +
                         ' EXEC sp_dropdevice ''TEMP_BACKUP''');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulBackUpMSSQL(Servidor, BancoDeDados,
ArquivoDeBackUpNoServidor,Usuario, Senha: String): Boolean; overload;
var
  TempConnection: TADOConnection;
begin
    try
      TempConnection := TADOConnection.Create(nil);
      with TempConnection do
        try
          ConnectionString := ' Provider=SQLOLEDB.1;Persist Security '+
                              ' Info=False;User ID=' + Usuario +  ';Password=' +
                                Senha + ';Data Source=' + Servidor;
          LoginPrompt := False;
          Result := SetiUsefulBackUpMSSQL(TempConnection,
                                 BancoDeDados,
                                  ArquivoDeBackUpNoServidor);
        finally
            TempConnection.Free;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure SetiUsefulDataSetToExcel(DataSet: TDataSet; Arquivo:
String; ModoTexto, VisualizaCriacao, Distinto: Boolean);
var
  Excel:      Variant;
  Linha,
  Coluna:     Cardinal;
begin
  try
    if not DataSet.Active then
      DataSet.Open;

    DataSet.DisableControls;

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := VisualizaCriacao;
    Linha := 1;

    Excel.Workbooks.Add;

    for Coluna := 1 to (DataSet.FieldCount) do
    begin
      if (DataSet.Fields[Coluna -1].Visible) then
      begin
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna].Font.Bold := True;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
        DataSet.Fields[Coluna -1].DisplayLabel;
      end;
    end;

    DataSet.First;

    while not DataSet.Eof do
    begin
      Inc(Linha);
      if VisualizaCriacao then
      begin
        Excel.Columns.AutoFit;
        Excel.WorkBooks[1].Sheets[1].Cells[Linha, 1].Select;
      end;

      for Coluna := 1 to (DataSet.FieldCount) do
        if ((not(DataSet.Fields[Coluna -1].IsNull)) and
            (DataSet.Fields[Coluna -1].Visible)) then
        if ((ModoTexto) or (DataSet.Fields[Coluna -1] is TStringField)) then
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
                ''''+DataSet.Fields[Coluna -1].AsString
        else
        if ((ModoTexto) or (DataSet.Fields[Coluna -1] is TFloatField)) then
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna -1].AsFloat
        else
        if ((ModoTexto) or (DataSet.Fields[Coluna -1] is TDateTimeField)) then
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna -1].AsDateTime
        else
        if ((ModoTexto) or (DataSet.Fields[Coluna -1] is TIntegerField)) then
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna -1].AsInteger
        else
        if ((ModoTexto) or (DataSet.Fields[Coluna -1] is TCurrencyField)) then
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna -1].AsCurrency
        else
          Excel.WorkBooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna -1].AsString;
        DataSet.Next;
        Application.ProcessMessages;
      end;
      Excel.Columns.AutoFit;
      Excel.WorkBooks[1].SaveAs(Arquivo);

      if not VisualizaCriacao then
      begin
        Excel.Workbooks.Close;
        Excel.Quit;
      end else Excel.WorkBooks[1].Sheets[1].Cells[1, 1].Select;

    excel := Unassigned;

    DataSet.EnableControls;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

procedure SetiUsefulDataSetToTXT(DataSet: TDataSet; Arquivo: String;
Separador: Char);
  var
    TXT:        TextFile;
    Linha:      String;
    Coluna:     Cardinal;
begin
    try
      if not DataSet.Active then
        DataSet.Open;

      DataSet.DisableControls;

      AssignFile(TXT, Arquivo);
      Rewrite(TXT);

      Linha := '';

      for Coluna := 0 to (DataSet.FieldCount -1) do
        Linha := Linha + DataSet.Fields[Coluna].DisplayLabel + Separador;

      Writeln(TXT, Linha);

      DataSet.First;

      while not DataSet.Eof do
        begin
          Linha := '';

          for Coluna := 0 to (DataSet.FieldCount -1) do
            Linha := Linha + DataSet.Fields[Coluna].AsString + Separador;

          Writeln(TXT, Linha);

          DataSet.Next;
        end;

      CloseFile(TXT);

      DataSet.EnableControls;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulCalculoDigVerificador(Valor: String) : string;
{
   Rotina usada para c�lculo de alguns d�gitos verificadores
   Pega-se cada um dos d�gitos contidos no par�metro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   d�gito, deve-se somar cada um dos d�gitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a opera��o 10-Resto da divis�o e devolve-se o resultado dessa
   opera��o como resultado da fun��o Modulo10.
   Obs.: Caso o resultado seja maior que 9, dever� ser substitu�do por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
    try
       Auxiliar := '';
       Peso := 2;
       for Contador := Length(Valor) downto 1 do
       begin
          Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
          if Peso = 1 then
             Peso := 2
          else
             Peso := 1;
       end;

       Digito := 0;
       for Contador := 1 to Length(Auxiliar) do
       begin
          Digito := Digito + StrToInt(Auxiliar[Contador]);
       end;
       Digito := 10 - (Digito mod 10);
       if (Digito > 9) then
          Digito := 0;
       Result := IntToStr(Digito);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulTamanhoDoArquivo(Arquivo: String): Integer;
  var
    tempFile: file of Byte;
begin
    try
      AssignFile(tempFile,Arquivo);
      FileMode := 0; //marcar o arquivo como somente leitura
      Reset(tempFile);
      Result := FileSize(tempFile);
      CloseFile(tempFile);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDataHoraDoArquivo(Arquivo: String): TDateTime;
  var
    HandleDoArquivo: Integer;
begin
    try
      HandleDoArquivo := FileOpen(Arquivo, 0);
      try
        Result := FileDateToDateTime(FileGetDate(HandleDoArquivo));
      finally
        FileClose(HandleDoArquivo);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulApostrofo(Texto: String): String;
  const
    ApostrofoOriginal = '''';
    ApostrofoNovo     = '''''';
    ApostrofoTag      = '<#APOSTROFO>';
begin
    try
      if (Pos(ApostrofoOriginal, Texto) > 0) then
        Result := StringReplace(StringReplace(Texto, ApostrofoOriginal,
          ApostrofoTag, [rfReplaceAll]), ApostrofoTag, ApostrofoNovo,
            [rfReplaceAll])
        else
          Result := Texto;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulTrocaAcentos(Texto: String): String;
var
  i, j, p: Integer;
  s: String;
Const
  Acentos:Array[1..26,1..2] of String =  (('�', 'a'#8''''),  ('�', 'a'#8'^'),
  ('�', 'a'#8'`'),  ('�', 'a'#8'~'),  ('�', 'A'#8''''), ('�', 'A'#8'`'),
  ('�', 'A'#8'^'),  ('�', 'A'#8'~'),  ('�', 'e'#8''''), ('�', 'E'#8''''),
  ('�', 'E'#8'^'),  ('�', 'e'#8'^'),  ('�', 'i'#8''''), ('�', 'I'#8''''),
  ('�', 'o'#8''''), ('�', 'o'#8'~'),  ('�', 'o'#8'^'),  ('�', 'O'#8''''),
  ('�', 'O'#8'^'),  ('�', 'o'#8'~'),  ('�', 'u'#8''''), ('�', 'u'#8'"'),
  ('�', 'U'#8''''), ('�', 'U'#8'"'),  ('�', 'c'#8','),  ('�', 'C'#8','));
begin
    try
      s := Texto;
      for i := 1 to Length(Texto) do
        for j := 1 to High(Acentos) do
          if Texto[i] = Acentos[j, 1] then
          begin
            p := Pos(Texto[i], S);
            Delete(S, p, 1);
            Insert(Acentos[j, 2], S, p);
          end;
      Result := S;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulSplit(StrinCompleta,  Separador: String): TStringList;
begin
    try
      Result := TStringList.Create;
      Result.Text := StringReplace(StrinCompleta, Separador, QuebraLinha,
        [rfReplaceAll]);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulCreateFullDirectory(FullDirectory: String): Boolean;
  var
    Drive: Char;
    I: Integer;
begin
    try
      //
    except on e : exception do
        SetiMens(0,e.Message);
    end;
  with SetiUsefulSplit(FullDirectory, ':') do
  try
    Drive         := Strings[0][1];
    FullDirectory := Strings[1];
  finally
    Free;
  end;

  FullDirectory := StringReplace(FullDirectory, '/', '\', [rfReplaceAll]);

  with SetiUsefulSplit(FullDirectory, '\') do
  try
    FullDirectory := Drive + ':\';
    Result := True;

    for I := 0 to (Count -1) do
    begin
      FullDirectory := FullDirectory + Strings[I] + '\';
      if not DirectoryExists(FullDirectory) then
        Result := Result and CreateDir(FullDirectory);
    end;
  finally
    Free;
  end;
end;

function SetiUsefulWindowsTempDir : String;
{Retorna o Diretorio Temp do Windows}
Var
  Buffer : Array[0..144] of Char;
Begin
    try
      GetTempPath(144,Buffer);
      Result := StrPas(Buffer);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulStringToStyle(s :String; f: TFont): TEstilo;
  var r: TStringList;
begin
    try
      r := SetiUsefulSplit(s, SeparadorFonte);
      if r.Count = 7 then
      begin

        Result.Alignment := TAlignment(StrToInt(r.Strings[0]));
        if Assigned(f) then
          Result.Font := f
          else Result.Font := TFont.Create;
        Result.Font.Size  := StrToInt(r.Strings[1]);
        Result.Font.Style := [];
        if (StrToBool(r.Strings[2])) then
          Result.Font.Style := Result.Font.Style + [fsBold];
        if (StrToBool(r.Strings[3])) then
          Result.Font.Style := Result.Font.Style + [fsItalic];
        if (StrToBool(r.Strings[4])) then
          Result.Font.Style := Result.Font.Style + [fsUnderline];
        Result.Font.Color := StringToColor(r.Strings[5]);
        Result.Font.Name := r.Strings[6];
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulStyleToString(f: TEstilo): String;
  var r: TStringList;
begin
    try
      r := TStringList.Create;
      try
        r.Add(IntToStr(Integer(f.Alignment)));
        r.Add(IntToStr(f.Font.Size));
        r.Add(BoolToStr(fsBold in f.Font.Style));
        r.Add(BoolToStr(fsItalic in f.Font.Style));
        r.Add(BoolToStr(fsUnderline in f.Font.Style));
        r.Add(ColorToString(f.Font.Color));
        r.Add(f.Font.Name);
        Result := StringReplace(r.Text, QuebraLinha, SeparadorFonte,
        [rfReplaceAll])
      finally
        r.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetBytes(NomeArquivo: String): TByteDynArray;overload;
  const
    BufferMax = 2047;
  var
    I,
    Lido,
    TamanhoResult,
    TamanhoBuffer: Integer;
    Arquivo: File;
    Buffer: array[0..BufferMax] of Char;
begin
    try
      SetLength(Result,0);
      AssignFile(Arquivo, NomeArquivo);
      try
        Reset(Arquivo, 1);
        TamanhoBuffer  := BufferMax  + 1;

        repeat
          BlockRead(Arquivo, Buffer, TamanhoBuffer, Lido);

          if (Lido > 0) then
          begin
            TamanhoResult := Length(Result);
            SetLength(Result, TamanhoResult + Lido);
            for I := TamanhoResult to (TamanhoResult + (Lido - 1)) do
              Result[I] := Ord(Buffer[I - TamanhoResult]);
          end;
        until ((Lido = 0) or (Lido <> TamanhoBuffer));
      finally
        CloseFile(Arquivo);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetBytes(Field: TBlobField): TByteDynArray;overload;
  var
    I,
    Tamanho: Cardinal;
    Conteudo: String;
begin
    try
      Conteudo := Field.AsString;
      Tamanho  := Length(Conteudo);
      SetLength(Result, Tamanho);
      for I := 1 to Tamanho do
        Result[I - 1] := Ord(Conteudo[I]);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetStream(Bytes: TByteDynArray): TStream;overload;
  var
    Arquivo: String;
    I,
    Fim: Cardinal;
begin
    try
      Fim := Length(Bytes) - 1;
      Arquivo := '';
      for I := 0 to Fim do
        Arquivo :=  Arquivo + Char(Bytes[I]);
      Result := TStringStream.Create(Arquivo);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetStream(NomeArquivo: String): TStream;
  var Arquivo: TFileStream;
begin
    try
      Arquivo := TFileStream.Create(NomeArquivo, fmOpenRead);

      try
        Result := TMemoryStream.Create;
        Result.CopyFrom(Arquivo, Arquivo.Size);
      finally
        Arquivo.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulWriteBytes(NomeArquivo: String; Bytes: TByteDynArray);
  var
    I, F: Integer;
    Arquivo: TextFile;
begin
    try
      AssignFile(Arquivo, NomeArquivo);
      try
        F := Length(Bytes) -1;
        Rewrite(Arquivo);


        for I := 0 to F do
          Write(Arquivo, Char(Bytes[I]));


      finally
        CloseFile(Arquivo);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure SetiUsefulAsincExcedure(Procedimento: TAsincMethod; Prioridade:
TThreadPriority);
begin
    try
      with TAsincMethodExecute.Create(procedimento) do
      begin
        Priority := Prioridade;
        Resume;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulSqlCommands(Command: TADOCommand; InTransaction: Boolean;
Separador: String);
var
    I, F: Integer;
    Comandos: TStringList;
    Aux: String;
begin
    try
      if Assigned(Command) then
      begin
        Aux := Command.CommandText;
        Comandos := SetiUsefulSplit(StringReplace(Aux, QuebraLinha, ' ',
        [rfReplaceAll]), Separador);
        try
          F := (Comandos.Count -1);

          if ((InTransaction) and (Assigned(Command.Connection))) then
            Command.Connection.BeginTrans;

          for I := 0 to F do
            if Trim(Comandos.Strings[I]) <> '' then
            begin
              Command.CommandText := Trim(Comandos.Strings[I]);
              Command.Execute;
            end;

          if ((InTransaction) and (Assigned(Command.Connection))) then
            Command.Connection.CommitTrans;
        finally
          try
            if ((InTransaction) and (Assigned(Command.Connection)) and
              (Command.Connection.InTransaction)) then
              Command.Connection.RollbackTrans;
          finally
            Command.CommandText := Aux;
            Comandos.Free;
          end;
        end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetRegistryData(RootKey: HKEY; Key, Value: string): variant;
var
  Reg: TRegistry;
  RegDataType: TRegDataType;
  DataSize, Len: integer;
  s: string;
  label cantread;
begin
  Reg := nil;
  try
    Reg := TRegistry.Create(KEY_QUERY_VALUE);
    Reg.RootKey := RootKey;
    if Reg.OpenKeyReadOnly(Key) then begin
      try
        RegDataType := Reg.GetDataType(Value);
        if (RegDataType = rdString) or
           (RegDataType = rdExpandString) then
          Result := Reg.ReadString(Value)
        else if RegDataType = rdInteger then
          Result := Reg.ReadInteger(Value)
        else if RegDataType = rdBinary then begin
          DataSize := Reg.GetDataSize(Value);
          if DataSize = -1 then goto cantread;
          SetLength(s, DataSize);
          Len := Reg.ReadBinaryData(Value, PChar(s)^, DataSize);
          if Len <> DataSize then goto cantread;
          Result := s;
        end else
          cantread:
          raise Exception.Create(SysErrorMessage(ERROR_CANTREAD));
      except
        s := ''; // Deallocates memory if allocated
        Reg.CloseKey;
        raise;
      end;
      Reg.CloseKey;
    end else
      raise Exception.Create(SysErrorMessage(GetLastError));
  except
    Reg.Free;
    raise;
  end;
  Reg.Free;
end;

function SetiUsefulGetWindowsDir: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
    try
      SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
      if Result = '' then
        raise Exception.Create(SysErrorMessage(GetLastError));
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetSystemDir: TFileName;
var
  SysDir: array [0..MAX_PATH-1] of char;
begin
    try
      SetString(Result, SysDir, GetSystemDirectory(SysDir, MAX_PATH));
      if Result = '' then
        raise Exception.Create(SysErrorMessage(GetLastError));
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetMyDocsDir: TFileName;
begin
    try
      result := SetiUsefulGetRegistryData(HKEY_CURRENT_USER,
        '\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
        'Personal');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetDesktopDir: TFileName;
begin
    try
      Result := SetiUsefulGetRegistryData(HKEY_CURRENT_USER,
        '\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
        'Desktop');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function GetFavoritesDir: TFileName;
begin
    try
      Result := SetiUsefulGetRegistryData(HKEY_CURRENT_USER,
        '\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
        'Favorites');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetFontsDir: TFileName;
begin
    try
      Result := SetiUsefulGetRegistryData(HKEY_CURRENT_USER,
        '\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
        'Fonts');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetStartupDir: TFileName;
begin
    try
      Result := SetiUsefulGetRegistryData(HKEY_CURRENT_USER,
        '\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders',
        'Startup');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetProgramFilesDir: TFileName;
begin
    try
      Result := SetiUsefulGetRegistryData(HKEY_LOCAL_MACHINE,
      '\Software\Microsoft\Windows\CurrentVersion',
      'ProgramFilesDir');  // or 'ProgramFilesPath'
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

function SetiUsefulGetTempDir: TFileName;
var
  TmpDir: array [0..MAX_PATH-1] of char;
begin
    Result := '';
    try
      SetString(Result, TmpDir, GetTempPath(MAX_PATH, TmpDir));
      if not DirectoryExists(Result) then
        if not CreateDirectory(PChar(Result), nil) then begin
          Result := IncludeTrailingBackslash(SetiUsefulGetWindowsDir) + 'TEMP';
          if not DirectoryExists(Result) then
            if not CreateDirectory(Pointer(Result), nil) then begin
              Result := ExtractFileDrive(Result) + '\TEMP';
              if not DirectoryExists(Result) then
                if not CreateDirectory(Pointer(Result), nil) then begin
                  Result := ExtractFileDrive(Result) + '\TMP';
                  if not DirectoryExists(Result) then
                    if not CreateDirectory(Pointer(Result), nil) then begin
                      raise Exception.Create(SysErrorMessage(GetLastError));
                    end;
                end;
            end;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetUserDir: TFileName;
begin
    try
      Result := GetEnvironmentVariable('USERPROFILE');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetAllUsersDir: TFileName;
begin
    try
      Result := GetEnvironmentVariable('ALLUSERSPROFILE');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulLibraryCheck(LibraryPath: TFileName);
begin
    try
      if not FileExists(SetiUsefulGetSystemDir + '\' +
          ExtractFileName(LibraryPath)) then
        if not SetiUsefulSHCopyFiles(LibraryPath, SetiUsefulGetSystemDir + '\' +
            ExtractFileName(LibraryPath)) then
          Raise Exception.Create('N�o foi possivel copiar ' + LibraryPath);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

{ TAsincMethodExecute }

constructor TAsincMethodExecute.Create(procedimento: TAsincMethod);
begin
    try
      inherited Create(True);
      FreeOnTerminate := True;
      Self.procedimento := procedimento;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TAsincMethodExecute.Execute;
begin
  procedimento;
end;

function SetiUsefulGetBuildInfo:string;
var
   VerInfoSize: DWORD;
   VerInfo: Pointer;
   VerValueSize: DWORD;
   VerValue: PVSFixedFileInfo;
   Dummy: DWORD;
   V1, V2, V3, V4: Word;
   Prog : string;
begin
    try
       Prog := Application.Exename;
       VerInfoSize := GetFileVersionInfoSize(PChar(prog), Dummy);
       GetMem(VerInfo, VerInfoSize);
       GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
       VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
       with VerValue^ do
       begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
       end;
       FreeMem(VerInfo, VerInfoSize);
       result := IntToStr(v1) + '.' +
       IntToStr(v2) + '.' +
       IntToStr(v3) + '.' +
       IntToStr(v4);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulStatusBarMessage(Msg : String; Owner : TComponent);
var
   Status : TStatusBar;
begin
    try
       if Owner <> Nil then
       begin
          if Trim(Msg) <> '' then
             Screen.Cursor := crHourGlass
          else
             Screen.Cursor := crDefault;
          Status := TStatusBar(TForm(Owner).FindComponent('StatusBar'));
          if Status <> nil then
             Status.Panels[3].Text := Msg;
          Application.ProcessMessages;
       end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUseFulGetNameFieldType(FieldType : TFieldType) : string;
var
  name : string;
begin
    try
      //  Unknown or undetermined
      if (FieldType = ftUnknown) then name := UpperCase('Unknown');
      //  Character or string field
      if (FieldType = ftString) then name := UpperCase('String');
      //  16-bit integer field
      if (FieldType = ftSmallint) then name := UpperCase('Smallint');
      //  32-bit integer field
      if (FieldType = ftInteger) then name := UpperCase('Integer');
      //  16-bit unsigned integer field
      if (FieldType = ftWord) then name := UpperCase('Word');
      //  Boolean field
      if (FieldType = ftBoolean) then name := UpperCase('Boolean');
      // Floating-point numeric field
      if (FieldType = ftFloat) then name := UpperCase('Float');
      // Money field
      if (FieldType = ftCurrency) then name := UpperCase('Currency');
      // Binary-Coded Decimal field
      if (FieldType = ftBCD) then name := UpperCase('BCD');
      // Date field
      if (FieldType = ftDate) then name := UpperCase('Date');
      // Time field
      if (FieldType = ftTime) then name := UpperCase('Time');
      // Date and time field
      if (FieldType = ftDateTime) then name := UpperCase('DateTime');
      // Fixed number of bytes (binary storage)
      if (FieldType = ftBytes) then name := UpperCase('Bytes');
      // Variable number of bytes (binary storage)
      if (FieldType = ftVarBytes) then name := UpperCase('VarBytes');
      // Auto-incrementing 32-bit integer counter field
      if (FieldType = ftAutoInc) then name := UpperCase('AutoInc');
      // Binary Large OBject field
      if (FieldType = ftBlob) then name := UpperCase('Blob');
      // Text memo field
      if (FieldType = ftMemo) then name := UpperCase('Memo');
      // Bitmap field
      if (FieldType = ftGraphic) then name := UpperCase('Graphic');
      // Formatted text memo field
      if (FieldType = ftFmtMemo) then name := UpperCase('FmtMemo');
      // Paradox OLE field
      if (FieldType = ftParadoxOle) then name := UpperCase('ParadoxOle');
      // dBASE OLE field
      if (FieldType = ftDBaseOle) then name := UpperCase('DBaseOle');
      // Typed binary field
      if (FieldType = ftTypedBinary) then name := UpperCase('TypedBinary');
      // Output cursor from an Oracle stored procedure (TParam only)
      if (FieldType = ftCursor) then name := UpperCase('Cursor');
      // Fixed character field
      if (FieldType = ftFixedChar) then name := UpperCase('FixedChar');
      // Wide string field
      if (FieldType = ftWideString) then name := UpperCase('WideString');
      // Large integer field
      if (FieldType = ftLargeint) then name := UpperCase('Largeint');
      // Abstract Data Type field
      if (FieldType = ftADT) then name := UpperCase('ADT');
      // Array field
      if (FieldType = ftArray) then name := UpperCase('Array');
      // REF field
      if (FieldType = ftReference) then name := UpperCase('Reference');
      // DataSet field
      if (FieldType = ftDataSet) then name := UpperCase('DataSet');
      // BLOB fields in Oracle 8 tables
      if (FieldType = ftOraBlob) then name := UpperCase('OraBlob');
      // CLOB fields in Oracle 8 tables
      if (FieldType = ftOraClob) then name := UpperCase('OraClob');
      // Data of unknown or undetermined type
      if (FieldType = ftVariant) then name := UpperCase('Variant');
      // References to interfaces (IUnknown)
      if (FieldType = ftInterface) then name := UpperCase('Interface');
      // References to IDispatch interfaces
      if (FieldType = ftIDispatch) then name := UpperCase('IDispatch');
      //  globally unique identifier (GUID) values
      if (FieldType = ftGuid) then name := UpperCase('Guid');

    Result := name;

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUseFulGetiFieldType(FieldTypeName : String) : TDataType;
var
  rType : TDataType;
begin
    try
      //  Unknown or undetermined
      if (FieldTypeName = UpperCase('Unknown')) then rType := ftUnknown;
      //  Character or string field
      if (FieldTypeName = UpperCase('String')) then rType := ftString;
      //  16-bit integer field
      if (FieldTypeName = UpperCase('Smallint')) then rType := ftSmallint;
      //  32-bit integer field
      if (FieldTypeName = UpperCase('Integer')) then rType := ftInteger;
      //  16-bit unsigned integer field
      if (FieldTypeName = UpperCase('Word')) then rType := ftWord;
      //  Boolean field
      if (FieldTypeName = UpperCase('Boolean')) then rType := ftBoolean;
      // Floating-point numeric field
      if (FieldTypeName = UpperCase('Float')) then rType := ftFloat;
      // Money field
      if (FieldTypeName = UpperCase('Currency')) then rType := ftCurrency;
      // Binary-Coded Decimal field
      if (FieldTypeName = UpperCase('BCD')) then rType := ftBCD;
      // Date field
      if (FieldTypeName = UpperCase('Date')) then rType := ftDate;
      // Time field
      if (FieldTypeName = UpperCase('Time')) then rType := ftTime;
      // Date and time field
      if (FieldTypeName = UpperCase('DateTime')) then rType := ftDateTime;
      // Fixed number of bytes (binary storage)
      if (FieldTypeName = UpperCase('Bytes')) then rType := ftBytes;
      // Variable number of bytes (binary storage)
      if (FieldTypeName = UpperCase('VarBytes')) then rType := ftVarBytes;
      // Auto-incrementing 32-bit integer counter field
      if (FieldTypeName = UpperCase('AutoInc')) then rType := ftAutoInc;
      // Binary Large OBject field
      if (FieldTypeName = UpperCase('Blob')) then rType := ftBlob;
      // Text memo field
      if (FieldTypeName = UpperCase('Memo')) then rType := ftMemo;
      // Bitmap field
      if (FieldTypeName = UpperCase('Graphic')) then rType := ftGraphic;
      // Formatted text memo field
      if (FieldTypeName = UpperCase('FmtMemo')) then rType := ftFmtMemo;
      // Paradox OLE field
      if (FieldTypeName = UpperCase('ParadoxOle')) then rType :=
        ftParadoxOle;
      // dBASE OLE field
      if (FieldTypeName = UpperCase('DBaseOle')) then rType := ftDBaseOle;
      // Typed binary field
      if (FieldTypeName = UpperCase('TypedBinary')) then rType :=
        ftTypedBinary;
      // Output cursor from an Oracle stored procedure (TParam only)
      if (FieldTypeName = UpperCase('Cursor')) then rType := ftCursor;
      // Fixed character field
      if (FieldTypeName = UpperCase('FixedChar')) then rType := ftFixedChar;
      // Wide string field
      if (FieldTypeName = UpperCase('WideString')) then rType :=
        ftWideString;
      // Large integer field
      if (FieldTypeName = UpperCase('Largeint')) then rType := ftLargeint;
      // Abstract Data Type field
      if (FieldTypeName = UpperCase('ADT')) then rType := ftADT;
      // Array field
      if (FieldTypeName = UpperCase('Array')) then rType := ftArray;
      // REF field
      if (FieldTypeName = UpperCase('Reference')) then rType := ftReference;
      // DataSet field
      if (FieldTypeName = UpperCase('DataSet')) then rType := ftDataSet;
      // BLOB fields in Oracle 8 tables
      if (FieldTypeName = UpperCase('OraBlob')) then rType := ftOraBlob;
      // CLOB fields in Oracle 8 tables
      if (FieldTypeName = UpperCase('OraClob')) then rType := ftOraClob;
      // Data of unknown or undetermined type
      if (FieldTypeName = UpperCase('Variant')) then rType := ftVariant;
      // References to interfaces (IUnknown)
      if (FieldTypeName = UpperCase('Interface')) then rType := ftInterface;
      // References to IDispatch interfaces
      if (FieldTypeName = UpperCase('IDispatch')) then rType := ftIDispatch;
      //  globally unique identifier (GUID) values
      if (FieldTypeName = UpperCase('Guid')) then rType := ftGuid;

    Result := rType;

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulStatusBarChanges(Owner: TComponent; PosicaoStatus : Integer;
Msg : String);
var
   Status : TStatusBar;
begin
    try
       Status := TStatusBar(TForm(Owner).FindComponent('StatusBar'));
       if Status <> Nil then
          Status.Panels[PosicaoStatus].Text := Msg;
       Application.ProcessMessages;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


Procedure SetiUsefulGerarExcel(Consulta:TComponent; Pai:TComponent);
var
   coluna, linha, i: integer;
   excel: variant;
   valor: Variant;
begin
  try
    SetiUsefulStatusBarMessage('Gerando planilha...', Pai);
    if Consulta is TAdoQuery then
    begin
      if TAdoQuery(Consulta) <> nil then
      begin
        if TAdoQuery(Consulta).State <> dsInactive then
        begin
          if TAdoQuery(Consulta).RecordCount > 0 then
          begin
            try
              excel:= CreateOleObject('Excel.Application');
              excel.Workbooks.add(1);
            except
              MessageDlg('Vers�o do Ms-Excel Incompat�vel',
              mtError,[mbYes, mbNo], 0);
            end;
            TAdoQuery(Consulta).First;
            try
              for linha:=0 to TAdoQuery(Consulta).RecordCount-1 do
              begin
                i:= 1;
                // eliminei a coluna 0 da rela��o do Excel
                for coluna:=1 to TAdoQuery(Consulta).FieldCount do
                begin
                  if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
                  begin
                    if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                      ftString then
                      Valor :=
                        TAdoQuery(Consulta).Fields[coluna-1].AsString
                         else
                         if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                          ftInteger then
                          Valor :=
                            TAdoQuery(Consulta).Fields[coluna-1].AsInteger
                         else
                         if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                            ftCurrency then
                            Valor :=
                              TAdoQuery(Consulta).Fields[coluna-1].AsCurrency
                         else
                          if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                           ftBCD then
                           Valor := TAdoQuery(Consulta).Fields[coluna-1].AsFloat
                         else
                          if (TAdoQuery(Consulta).Fields[coluna-1].DataType =
                              ftDateTime) or
                              (TAdoQuery(Consulta).Fields[coluna-1].DataType =
                              ftDate) and
                     (TAdoQuery(Consulta).Fields[coluna-1].AsDateTime > 0) then
                              Valor :=
                              TAdoQuery(Consulta).Fields[coluna-1].AsDateTime
                         else
                          if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                            ftFloat then
                            Valor :=
                              TAdoQuery(Consulta).Fields[coluna-1].AsFloat
                         else
                            Valor :=
                              TAdoQuery(Consulta).Fields[coluna-1].AsString;


                         excel.cells [linha+2,i]:= Valor;
                         Inc(i);
                       end;
                    end;
                    TAdoQuery(Consulta).Next;
                 end;

                 i:= 1;
                 // eliminei a coluna 0 da rela��o do Excel
                 for coluna:=1 to TAdoQuery(Consulta).FieldCount do
                 begin
                    if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
                    begin
                       valor:=
                        TAdoQuery(Consulta).Fields[coluna-1].DisplayLabel;
                       excel.cells[1,i]:=valor;
                       Inc(i);
                    end;
                 end;
                 // esta linha � para fazer com que o
                 //Excel dimencione as c�lulas adequadamente.
                 excel.columns.AutoFit;
                 excel.visible:=true;
              except
                 MessageDlg('Aconteceu um erro desconhecido durante a '+
                            'convers�o da tabela para o Ms-Excel',
                            mtError,[mbOk, mbNo], 0);
              end;
           end
           else
              MessageDlg('N�o exitem registros a serem gerados. '+
                ' Favor realizar a consulta primeiro.', mtInformation,
                  [mbOk], 0);
        end
        else
           MessageDlg(' N�o exitem registros a serem gerados. '+
                      ' Favor realizar a consulta primeiro.', mtInformation,
                        [mbOk], 0);
     end;
    end;
    if Consulta is TAdoDataSet then
    begin
     if TAdoDataSet(Consulta) <> nil then
     begin
        if TAdoDataSet(Consulta).State <> dsInactive then
        begin
           if TAdoDataSet(Consulta).RecordCount > 0 then
           begin
              try
                 excel:= CreateOleObject('Excel.Application');
                 excel.Workbooks.add(1);
              except
                 MessageDlg('Vers�o do Ms-Excel Incompat�vel',mtError,
                  [mbYes, mbNo], 0);
              end;

              TAdoDataSet(Consulta).First;

              try
                 for linha:=0 to TAdoDataSet(Consulta).RecordCount-1 do
                 begin
                    i:= 1;
                    // eliminei a coluna 0 da rela��o do Excel
                    for coluna:=1 to TAdoDataSet(Consulta).FieldCount do
                    begin
                       if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
                       begin
                         if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                          ftString then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsString
                         else
                          if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                            ftInteger then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsInteger
                         else
                          if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                            ftCurrency then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsCurrency
                         else
                          if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                            ftBCD then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsFloat
                         else
                          if (TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                            ftDateTime) or
                              (TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                                 ftDate) and
                            (TAdoQuery(Consulta).Fields[coluna-1].AsDateTime >
                              0) then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsDateTime
                         else
                          if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                            ftFloat then
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsFloat
                         else
                            Valor :=
                              TAdoDataSet(Consulta).Fields[coluna-1].AsString;
                         excel.cells [linha+2,i]:= Valor;
                         Inc(i);
                     end;
                    end;
                    TAdoDataSet(Consulta).Next;
                 end;

                 i := 1;
                 for coluna:=1 to TAdoDataSet(Consulta).FieldCount do
                  // eliminei a coluna 0 da rela��o do Excel
                 begin
                    if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
                    begin
                       valor :=
                        TAdoQuery(Consulta).Fields[coluna-1].DisplayLabel;
                       excel.cells[1,i]:=valor;
                       Inc(i);
                    end;
                 end;
                 excel.columns.AutoFit;
                  // esta linha � para fazer com que o Excel
                  //dimencione as c�lulas adequadamente.
                 excel.visible:=true;
              except
                 MessageDlg('Aconteceu um erro desconhecido durante a '+
                            'convers�o da tabela para o Ms-Excel',
                              mtError,[mbOk, mbNo], 0);
              end;
           end
           else
              MessageDlg('N�o exitem registros a serem gerados. '+
                         'Favor realizar a consulta primeiro.',
                         mtInformation, [mbOk], 0);
        end
        else
           MessageDlg('N�o exitem registros a serem gerados. '+
                      'Favor realizar a consulta primeiro.',
                      mtInformation, [mbOk], 0);
     end;
    end;
    SetiUsefulStatusBarMessage('', Pai);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulGerarExcelSp(Consulta:TADOStoredProc;
ColunaDataSoftpar : Integer);
var
   coluna, linha: integer;
   excel: variant;
   valor: Variant;
begin
   try
      excel:= CreateOleObject('Excel.Application');
      excel.Workbooks.add(1);
   except
      MessageDlg('Vers�o do Ms-Excel Incompat�vel',mtError,[mbYes, mbNo], 0);
   end;

    try
       Consulta.First;

       try
          for linha:=0 to Consulta.RecordCount-1 do
          begin
             // eliminei a coluna 0 da rela��o do Excel
             for coluna:=1 to Consulta.FieldCount do
             begin
                if Consulta.Fields[coluna-1].DataType = ftString then
                   Valor := Consulta.Fields[coluna-1].AsString
                   // trata data softpar (Ex: "20100809")
                else if (Consulta.Fields[coluna-1].DataType = ftInteger) then
                begin
                   if (coluna-1) = ColunaDataSoftpar then
                      Valor :=
                        StrToInt(Copy(Consulta.Fields[coluna-1].AsString, 7,2) +
                        Copy(Consulta.Fields[coluna-1].AsString, 5,2) +
                        Copy(Consulta.Fields[coluna-1].AsString, 1,4))
                   else
                      Valor := Consulta.Fields[coluna-1].AsInteger
                end
                else
                  if Consulta.Fields[coluna-1].DataType = ftCurrency then
                    Valor := Consulta.Fields[coluna-1].AsCurrency
                else
                  if Consulta.Fields[coluna-1].DataType = ftBCD then
                    Valor := Consulta.Fields[coluna-1].AsFloat
                else
                  if (Consulta.Fields[coluna-1].DataType = ftDateTime) or
                    (Consulta.Fields[coluna-1].DataType = ftDate) then
                   Valor := Consulta.Fields[coluna-1].AsDateTime
                else if Consulta.Fields[coluna-1].DataType = ftFloat then
                   Valor := Consulta.Fields[coluna-1].AsFloat
                else
                   Valor := Consulta.Fields[coluna-1].AsString;


                excel.cells [linha+2,coluna]:= Valor;
             end;
             Consulta.Next;
          end;

          // eliminei a coluna 0 da rela��o do Excel
          for coluna:=1 to Consulta.FieldCount do
          begin
             valor:= Consulta.Fields[coluna-1].DisplayLabel;
             excel.cells[1,coluna]:=valor;
          end;
          //Esta linha � para fazer com que o Excel dimencione as
          //c�lulas adequadamente.
          excel.columns.AutoFit;
          excel.visible:=true;
       except
          MessageDlg('Aconteceu um erro desconhecido durante a convers�o '+
                     'da tabela para o Ms-Excel',mtError,[mbOk, mbNo], 0);
       end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiExpDataSet(pType: Integer;pDataSet:TDataSet;pDateHour:Boolean;
pFileOpen:Boolean; pFilePath:Boolean; pFilePath_:string);
var
  i: integer;
  sl: TStringList;
  st: string;
  ExcApp: OleVariant;
  l: integer;
  WordApp,WordDoc,WordTable,WordRange: Variant;
  Row,Column: integer;
  xml: TXMLDocument;
  reg, campo: IXMLNode;
  SaveDialog : TSaveDialog;
  pFileName : string;
  pCompName : string;
  pDate,pHora : string;

  pTitle : string;
  pVal : Boolean;

  bResult   : Boolean;
	SavePlace : TBookmark;
	eline   : Integer;
	Excel	 : Variant;
	iSheet	: Integer;
	CorFundo  : TColor;
  TotalRegistros : Integer;

  wideChars   : array[0..50] of WideChar;

begin
  try
    {
      pType = 0 : HTML; not
      pType = 1 : TXT;
      pType = 2 : XLS;
      pType = 3 : DOC;
      pType = 4 : XML;
    }
    if Assigned(pDataSet) then
      pDataSet.DisableControls;
    //Configurando a tela para sele��o do caminho do arquivo...
    if (pType in [0,1,2,3,4]) then
    begin
      //Selecionar pasta e informar o nome do arquivo?
      if (pFilePath) then
      begin
        if (pType = 0) then
          pTitle := 'Salvar em HTML' else
        if (pType = 1) then
          pTitle := 'Salvar em TXT' else
        if (pType = 2) then
        begin
          if (SConfigExcType = '.xls') then
            pTitle := 'Salvar em XLS' else
          if (SConfigExcType = '.xlsx') then
            pTitle := 'Salvar em XLSX';
        end else
        if (pType = 3) then
          pTitle := 'Salvar em DOC' else
        if (pType = 4) then
          pTitle := 'Salvar em XML';
        SaveDialog := TSaveDialog.Create(Application);
        pFileName := '';
        pDate :=  FormatDateTime('dd-mm-yyyy',Now);
        pHora :=  FormatDateTime('hh-nn-ss-',Now);
        pCompName := '_'+pDate +'_'+ pHora;
        with (SaveDialog) do
        begin
          InitialDir := SConfigDirWay;
          if (pType = 0) then
          begin
            DefaultExt := '*.html';
            Filter := 'html|*.html';
          end else
          if (pType = 1) then
          begin
            DefaultExt := '*.txt';
            Filter := 'Text file|*.txt';
          end else
          if (pType = 2) then
          begin
            DefaultExt := '*'+SConfigExcType;
            Filter := 'Microsoft Excel|*'+SConfigExcType;
          end else
          if (pType = 3) then
          begin
            DefaultExt := '*.doc';
            Filter := 'Word file|*.doc';
          end else
          if (pType = 4) then
          begin
            DefaultExt := '*.xml';
            Filter := 'xml|*.xml';
          end;
          if (Execute) then
            pFileName := Trim(FileName);
        end;
      end;
      //Passar nome do arquivo para vari�vel?
      if (pFilePath = False) then
      begin
        pFileName := Trim(pFilePath_);
      end;

      if (Trim(pFileName) = '') then
      begin
        SetiMens(1,Mess18);
        Exit;
      end;
      //Validar extens�o do arquivo
      pVal := True;
      if (pType = 0) then
      begin
        if ((Copy(pFileName,length(pFileName) -4,5)) <> '.html') then
        begin
          pVal := False;
        end;
      end else
      if (pType = 1) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.txt') then
          pVal := False;
      end else
      if (pType = 2) then
      begin
        if SConfigExcType = '.xls' then
        begin
          if ((Copy(pFileName,length(pFileName) -3,4)) <> '.xls') then
          begin
            pVal := False;
          end;
        end;
        if SConfigExcType = '.xlsx' then
        begin
          if ((Copy(pFileName,length(pFileName) -4,5)) <> '.xlsx') then
          begin
            pVal := False;
          end;
        end;
      end else
      if (pType = 3) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.doc') then
        begin
          pVal := False;
        end;
      end;
      if (pType = 4) then
      begin
        if ((Copy(pFileName,length(pFileName) -3,4)) <> '.xml') then
        begin
          pVal := False;
        end;
      end;
      if (pVal = False) then
      begin
        SetiMens(1,Mess19);
        Exit;
      end;

      //INSERIR DATA E HORA NO NOME DO ARQUIVO?
      if (pDateHour) then
      begin
        if (pType = 0) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-5))
            +pCompName+'.html');
        end;
        if (pType = 1) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.txt');
        end;
        if (pType = 2) and (SConfigExcType = '.xls') then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
              +pCompName+'.xls');
        end;
        if (pType = 2) and (SConfigExcType = '.xlsx') then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-5))
              +pCompName+'.xlsx');
        end;
        if (pType = 3) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.doc');
        end;
        if (pType = 4) then
        begin
          pFileName := (Copy(pFileName,1,(length(pFileName)-4))
            +pCompName+'.xml');
        end;
      end;

      if (FileExists(pFileName)) then
      begin
        if (FileOpen(pFileName,fmOpenReadWrite) > 0) then
          pFileName := pFileName + pCompName;
      end;


    end;

    if (pType = 0) then //HTML
    begin
      //NOT;
    end else
    if (pType = 1) then  //TXT
    begin
      pDataSet.First;
      sl := TStringList.Create;
      try
        st := '';
        for i := 0 to pDataSet.Fields.Count - 1 do
          st := st + pDataSet.Fields[i].DisplayLabel + ';';
        sl.Add(st);
        pDataSet.First;
        while not pDataSet.Eof do
        begin
          st := '';
          for i := 0 to pDataSet.Fields.Count - 1 do
            st := st + pDataSet.Fields[i].DisplayText + ';';
          sl.Add(st);
          pDataSet.Next;
        end;
        sl.SaveToFile(pFileName);
      finally
          if (pFileOpen) then
          begin
            ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
          end;
          sl.free;
      end;
    end else
    if (pType = 2) then  //XLS OU XLSX
    begin
      try
        if Assigned(pDataSet) then
        begin
          pDataSet.DisableControls;
          if NOT (pDataSet.IsEmpty) then
          begin
            TotalRegistros := pDataSet.RecordCount;
            Excel:= CreateOleObject('Excel.Application');
            Excel.Visible:= False;
            Excel.WorkBooks.Add;
            //Definindo o n�mero de worksheets
            if  (TotalRegistros > 65000) then
            begin
               if  ((TotalRegistros Mod 65000) = 0) then
                 iSheet := TotalRegistros DIV 5
               else
                 iSheet := (TotalRegistros DIV 65000) + 1;
               if  (iSheet > 3) then
               //Adicionando as worksheets que faltam a partir da 3 planilha
               //do excel
               for i:= 4 to iSheet do
                 Excel.WorkBooks[1].Sheets.Add(null, Excel.WorkBooks[1].
                  Sheets[i-1]);
            end;
            // Save grid Position
            SavePlace:= pDataSet.GetBookmark;
            pDataSet.First;
            //Sheet atual
            iSheet := 1;
            // Montando cabe�alho da planilha
            if not (pDataSet.Eof) then
            begin
              eline:= 1;
              // Posicionando na primeira linha da planilha(Sheet) para por o
              //cabe�alho
              for i:=0 to (pDataSet.FieldCount -1) do
              begin
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                  := pDataSet.Fields[i].DisplayLabel;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].
                  ColumnWidth := pDataSet.Fields[i].DisplayWidth;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  FontStyle := 'Negrito';
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                  Color := (ColorToRgb(SConfigExcHearderColor));
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.Color
                  := (ColorToRgb(SConfigExcHeaderFontColor));
              end;
          end;
          //Preenchendo o restante da planilha com os dados
          while not pDataSet.Eof do
          begin
            //Incrementa a posi��o da linha para preencher no excel
            Inc(eline);
            //Atualiza Progressbar
            //pbInformacao.StepBy(1);
            //Application.ProcessMessages;
            //Se passar de 65000 linhas, jogar dado na outra planilha,
            //remontando os cabe�alhos antes
            if (eline > 65000) then
            begin
              Inc(iSheet);
              eline := 1;
              for i:=0 to (pDataSet.FieldCount -1) do
              begin
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                  := pDataSet.Fields[i].DisplayLabel;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].
                  ColumnWidth := pDataSet.Fields[i].DisplayWidth;
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  FontStyle := 'Negrito';
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                  Color := (ColorToRgb(SConfigExcHearderColor));
                Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                  Color := (ColorToRgb(SConfigExcHeaderFontColor));
              end;
              Inc(eline);
            end;
            //Para mudar a cor de fundo da linha da planilha
            if (eline mod 2) = 0 then
              CorFundo := SConfigExcLinesColor1
            else
              CorFundo := SConfigExcLinesColor2;
            for i:=0 to (pDataSet.FieldCount-1) do
            begin
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                := pDataSet.Fields[i].AsString;
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Interior.
                Color := (ColorToRgb(CorFundo));
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Font.
                Color := (ColorToRgb(SConfigExcLinesFontColor));
              Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)].Borders.
                Color := (ColorToRgb(clGray));
            end;
            pDataSet.Next;
          end;

          //Ajustando o tamanho das colunas
          for i:= 1 to iSheet do
            Excel.WorkBooks[1].WorkSheets[i].Range['B1','AQ1000'].Columns.
              AutoFit;
          // Set saved grid position
          pDataSet.GotoBookmark(SavePlace);
          // Salvando o arquivo
          Excel.WorkBooks[1].SaveAs(pFileName);
          if (pFileOpen) then
          begin
            Excel.Visible := True;
          end else
          begin
            Excel.Quit;
          end;
          bResult:= True;
          pDataSet.EnableControls;
        end;
      end;
      except
		    bResult:= False;
    		Excel.Quit;
    		//pnlMensagem.Visible := False;
	  end;

    end else
    if (pType = 3) then  //DOC
    begin
      WordApp := CreateOleobject('Word.basic');
      WordApp.Appshow;
      WordDoc := CreateOleobject('Word.Document');
      WordRange := WordDoc.Range;
      WordTable := WordDoc.tables.Add(
        WordDoc.Range,1,pDataSet.FieldCount);
      for Column:=0 to pDataSet.FieldCount-1 do
        WordTable.cell(1,Column+1).range.text:=
          pDataSet.Fields.Fields[Column].FieldName;
      Row := 2;
      pDataSet.First;
      while not pDataSet.Eof do
      begin
         WordTable.Rows.Add;
         for Column:=0 to pDataSet.FieldCount-1 do
           WordTable.cell(Row,Column+1).range.text :=
             pDataSet.Fields.Fields[Column].DisplayText;
         pDataSet.next;
         Row := Row+1;
      end;
      if (SConfigDocLandscape) then
      begin
        WordDoc.PageSetup.Orientation := wdOrientLandscape;
      end;
      WordDoc.SaveAs(pFileName);
      WordDoc := unAssigned;
      if (pFileOpen) then
      begin
        ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
      end;
    end else
    if (pType = 4) then  //XML
    begin
      //Aten��o, para xml, n�o � poss�vel gerar um arquivo com caracteres
      //especiais...
      xml := TXMLDocument.Create(nil);
      try
        xml.Active := True;
        pDataSet.First;
        xml.DocumentElement :=
          xml.CreateElement('DataSet','');
        pDataSet.First;
        while not pDataSet.Eof do
        begin
          reg := xml.DocumentElement.AddChild('row');
          for i := 0 to pDataSet.Fields.Count - 1 do
          begin
            campo := reg.AddChild(
              pDataSet.Fields[i].DisplayLabel);
            campo.Text := pDataSet.Fields[i].DisplayText;
          end;
          pDataSet.Next;
        end;
        xml.SaveToFile(pFileName);
      finally
        if Assigned(pDataSet) then
          pDataSet.EnableControls;
        if (pFileOpen) then
        begin
          ShellExecute(0,'open',pChar(pFileName),Nil,'',SW_SHOWNORMAL);
        end;
        xml.free;
      end;
    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

(*
   Fun��o Criptografar

   Codifica e descodifica um string ( Seguranca )

   Parametros Tipo    Objetivo
   wStri           String          Especificar o string a ser codificado
   Retorno      String          O string codificado ou descodificado
*)

function SetiUsefulCriptografar(wStri: String): String;
var Simbolos : array [0..4] of String;
     x            : Integer;
begin
  try
    Simbolos[1]:= 'ABCDEFGHIJLMNOPQRSTUVXZYWK ~!@#$%^&*()';

    Simbolos[2]:= '�����׃����5�����Ѫ�������������������';

    Simbolos[3]:= 'abcdefghijlmnopqrstuvxzywk1234567890';

    Simbolos[4]:= '���������龶����-+��߸������յ��졫�';

    for x := 1 to Length(Trim(wStri)) do begin
      if pos(copy(wStri,x,1),Simbolos[1])>0 then
         Result := Result+copy(Simbolos[2],pos(copy(wStri,x,1),Simbolos[1]),1)

      else if pos(copy(wStri,x,1),Simbolos[2])>0 then
         Result := Result+copy(Simbolos[1],pos(copy(wStri,x,1),Simbolos[2]),1)

      else if pos(copy(wStri,x,1),Simbolos[3])>0 then
         Result := Result+copy(Simbolos[4],pos(copy(wStri,x,1),Simbolos[3]),1)

      else if pos(copy(wStri,x,1),Simbolos[4])>0 then
         Result := Result+copy(Simbolos[3], pos(copy(wStri,x,1),Simbolos[4]),1);
    end;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

{$IFDEF VER230} //Delphi Xe2
function SetiUsefulGetNameServer(AdoConn : TAdoConnection): String;
begin
    try
      if pos(';',Copy(AdoConn.ConnectionString,pos(WideString('Data Source='),
        WideString(AdoConn.ConnectionString)) +
          12,length(AdoConn.ConnectionString))) - 1 = -1 then
          Result := Copy(AdoConn.ConnectionString,
            pos(WideString('Data Source='),
              WideString(AdoConn.ConnectionString)) + 12, 50) { Servidor }
       else
          Result := Copy(AdoConn.ConnectionString,
            pos(WideString('Data Source='),
              WideString(AdoConn.ConnectionString)) + 12,
                pos(WideString(';'),WideString(Copy(AdoConn.ConnectionString,
                  pos(WideString('Data Source='),
                    WideString(AdoConn.ConnectionString)) +
                      12,length(WideString(AdoConn.ConnectionString)) - 1))));
                        { Servidor }
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;
{$ENDIF}

{$IFDEF VER210} //Delphi 2010
{$ENDIF}

{$IFDEF VER180} //Delphi 2007
function SetiUsefulGetNameServer(AdoConn : TAdoConnection): String;
begin
    try
      if pos(';',Copy(AdoConn.ConnectionString,pos(WideString('Data Source='),
        WideString(AdoConn.ConnectionString)) + 12,
          length(AdoConn.ConnectionString))) - 1 = -1 then
          Result := Copy(AdoConn.ConnectionString,
            pos(WideString('Data Source='),
              WideString(AdoConn.ConnectionString)) + 12, 50) { Servidor }
      else
        Result := Copy(AdoConn.ConnectionString,
          pos(WideString('Data Source='),
            WideString(AdoConn.ConnectionString)) + 12,
              pos(WideString(';'),WideString(Copy(AdoConn.ConnectionString,
                pos(WideString('Data Source='),
                  WideString(AdoConn.ConnectionString)) +
                    12,length(WideString(AdoConn.ConnectionString)) - 1))));
                      { Servidor }
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;
{$ENDIF}

procedure SetiUsefulSalvaExcel(Consulta:TComponent; Caminho : String);
var
   coluna, linha, i: integer;
   excel: variant;
   valor: Variant;
begin
  try
    if Consulta is TAdoQuery then
    begin
      if TAdoQuery(Consulta).RecordCount > 0 then
      begin
        try
          excel:= CreateOleObject('Excel.Application');
          excel.Workbooks.add(1);
        except
          MessageDlg('Vers�o do Ms-Excel Incompat�vel',
            mtError,[mbYes, mbNo], 0);
        end;

        TAdoQuery(Consulta).First;

        try
          for linha:=0 to TAdoQuery(Consulta).RecordCount-1 do
          begin
            i := 1;
            for coluna:=1 to TAdoQuery(Consulta).FieldCount do
              // eliminei a coluna 0 da rela��o do Excel
            begin
              if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
              begin
                if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftString then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsString
                else
                if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftInteger then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsInteger
                else
                if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftCurrency then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsCurrency
                else
                if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftBCD then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsFloat
                else
                if  (TAdoQuery(Consulta).Fields[coluna-1].DataType =
                  ftDateTime) or
                    (TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftDate) then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsDateTime
                else
                if TAdoQuery(Consulta).Fields[coluna-1].DataType =
                    ftFloat then
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsFloat
                else
                  Valor := TAdoQuery(Consulta).Fields[coluna-1].AsString;
                excel.cells [linha+2,i]:= Valor;
                Inc(i);
              end;
            end;
            TAdoQuery(Consulta).Next;
          end;
          i := 1;
          for coluna := 1 to TAdoQuery(Consulta).FieldCount do
            // eliminei a coluna 0 da rela��o do Excel
          begin
            if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
            begin
              valor := TAdoQuery(Consulta).Fields[coluna-1].DisplayLabel;
              excel.cells[1,i]:=valor;
              Inc(I);
            end;
          end;
          excel.columns.AutoFit;
            // esta linha � para fazer com que o Excel dimencione
            // as c�lulas adequadamente.
          excel.workbooks[1].saveas(Caminho);
          excel.workbooks.close;
          excel:=Unassigned;
          except
             MessageDlg('Aconteceu um erro desconhecido durante '+
                        'a convers�o da tabela para o Ms-Excel',
                        mtError,[mbOk, mbNo], 0);
          end;
        end;
     end;
     if Consulta is TAdoDataSet then
     begin
      if TAdoDataSet(Consulta).RecordCount > 0 then
      begin
        try
          excel:= CreateOleObject('Excel.Application');
          excel.Workbooks.add(1);
        except
          MessageDlg('Vers�o do Ms-Excel Incompat�vel',
            mtError,[mbYes, mbNo], 0);
        end;

        TAdoDataSet(Consulta).First;

        try
          for linha:=0 to TAdoDataSet(Consulta).RecordCount-1 do
          begin
            i := 1;
            for coluna := 1 to TAdoDataSet(Consulta).FieldCount do
              // eliminei a coluna 0 da rela��o do Excel
            begin
              if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
              begin
                if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftString then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsString
                else
                if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftInteger then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsInteger
                else
                if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftCurrency then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsCurrency
                else
                if TAdoDataSet(Consulta).Fields[coluna-1].DataType = ftBCD then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsFloat
                else
                if (TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftDateTime) or
                  (TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftDate) then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsDateTime
                else
                if TAdoDataSet(Consulta).Fields[coluna-1].DataType =
                  ftFloat then
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsFloat
                else
                  Valor := TAdoDataSet(Consulta).Fields[coluna-1].AsString;
                excel.cells [linha+2,i]:= Valor;
                Inc(i);
              end;
            end;
            TAdoDataSet(Consulta).Next;
          end;
          i := 1;
          for coluna:=1 to TAdoDataSet(Consulta).FieldCount do
            // eliminei a coluna 0 da rela��o do Excel
          begin
            if (TAdoQuery(Consulta).Fields[coluna-1].Visible) then
            begin
              valor := TAdoDataSet(Consulta).Fields[coluna-1].DisplayLabel;
              excel.cells[1,i]:=valor;
              Inc(i);
            end;
          end;
          excel.columns.AutoFit;
          // esta linha � para fazer com que o
          // Excel dimencione as c�lulas adequadamente.
          excel.workbooks[1].saveas(Caminho);
          excel.workbooks.close;
          excel:=Unassigned;
        except
          MessageDlg('Aconteceu um erro desconhecido durante a '+
                     'convers�o da tabela para o Ms-Excel',
                      mtError,[mbOk, mbNo], 0);
        end;
      end;
  end;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulTrocaVirgulax(XValor: String) : String;
begin
  try
    while Pos(',', XValor) > 0 do
      XValor[Pos(',', XValor)] := '.';
      Result := XValor;
    except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulTrocaVirgulaES(XValor: String) : String;
begin
  try
    while Pos('.', XValor) > 0 do
      XValor[Pos('.', XValor)] := ' ';
      Result := XValor;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulTrimChar(texto: string; delchar: char): string;
var
S: string;
begin
  try
    S := texto;
    while Pos(delchar,S) > 0 do
    Delete(S,Pos(delchar,S),1);
    Result := S;
  except on e : exception do
        SetiMens(0,e.Message);
  end;

end;

function SetiUsefulGeraExcel_FormataWebtask(Consulta: TADOQuery; Select: string;
Titulo: string):string;
var
S,T,Valor,nomearq,unidade:String;
begin
    try
        S:= Select;
        T:= Titulo;
        Valor := 'EXEC sp_makewebtask ';
        Valor := Valor+ '@outputfile = '+''''+T+'.xls'+''''+',';
        Valor := Valor+ '@query = '+''''+S+''''+',';
        Valor := Valor+ '@colheaders =1,';
        Valor := Valor+ '@FixedFont=0,@lastupdated=0,@resultstitle='+
                        ''''+T+''''+' ';
        Consulta.SQL.Add(Valor);
        Consulta.ExecSQL;
        SetiUsefulAbrirArquivosSalvos(nomearq);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulAbrirArquivosSalvos(nomearq: string):string;
var
diretorio :string;
begin
    try
      diretorio := nomearq;
       if  FileExists(ExtractFilePath(Application.ExeName)+nomearq) then
         begin
           Application.MessageBox(Pchar('N�o foi possivel encontrar o arquivo '+
                                        'do Excel.'+#13+#13+
           'Favor verificar se o Arquivo se encontra no o diretorio'+#13+
           '"'+diretorio+'", caso n�o se encontra, entre em contado.'),
           'Aviso!',MB_ICONEXCLAMATION);
         end else
        //  ShellExecute(Handle, nil,PChar(diretorio),
        //nil, nil, SW_SHOWMAXIMIZED);
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure SetiUsefulOpenForm(FClass: TFormClass; var Instance;
OwnerForm:TComponent;
FormId : integer = 0);
begin
    try
       if Assigned(TForm(Instance)) then begin
          TForm(Instance).SetFocus;
          TForm(Instance).BringToFront;
       end
       else
          TForm(Instance) := FClass.Create(OwnerForm);
       if FormId <> 0 then
          TForm(Instance).Caption := 'Cod.Form.: '+FormatFloat('0000',FormId) +
            ' - '  + TForm(Instance).Caption
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;
{$IFDEF VER230} //Delphi Xe2
{$ENDIF}
{$IFDEF VER210} //Delphi 2010
{$ENDIF}
{$IFDEF VER180} //Delphi 2007
procedure SetiUsefulAbreRel(var NomeRel; ClassRel: TRelClass; Modal: Boolean;
OwnerForm: TComponent);
begin
  try
    if (Assigned(TQuickRep(NomeRel))) then
      FreeAndNil(NomeRel);
    TQuickRep(NomeRel) := ClassRel.Create(OwnerForm);
    if Modal then
    begin
      try
         TQuickRep(NomeRel).PreviewModal;
      finally
         FreeAndNil(NomeRel);
      end;
    end
    else
    begin
      try
         TQuickRep(NomeRel).Preview;
      finally
         TQuickRep(NomeRel) := nil;
      end;
    end;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;
{$ENDIF}

procedure SetiUsefulSalvaExcel_Ant(Consulta:TAdoQuery; Caminho : String);
var
   coluna, linha: integer;
   excel: variant;
   valor: Variant;
begin
  try
    if Consulta.RecordCount > 0 then
    begin
      try
         excel:= CreateOleObject('Excel.Application');
         excel.Workbooks.add(1);
      except
         MessageDlg('Vers�o do Ms-Excel Incompat�vel',mtError,[mbYes, mbNo], 0);
      end;

      Consulta.First;

      try
         for linha:=0 to Consulta.RecordCount-1 do
         begin
            for coluna:=1 to Consulta.FieldCount do
            // eliminei a coluna 0 da rela��o do Excel
            begin
               if Consulta.Fields[coluna-1].DataType = ftString then
                  Valor := Consulta.Fields[coluna-1].AsString
               else if Consulta.Fields[coluna-1].DataType = ftInteger then
                  Valor := Consulta.Fields[coluna-1].AsInteger
               else if Consulta.Fields[coluna-1].DataType = ftCurrency then
                  Valor := Consulta.Fields[coluna-1].AsCurrency
               else if Consulta.Fields[coluna-1].DataType = ftBCD then
                  Valor := Consulta.Fields[coluna-1].AsFloat
               else if (Consulta.Fields[coluna-1].DataType = ftDateTime) or
                (Consulta.Fields[coluna-1].DataType = ftDate) then
                  Valor := Consulta.Fields[coluna-1].AsDateTime
               else if Consulta.Fields[coluna-1].DataType = ftFloat then
                  Valor := Consulta.Fields[coluna-1].AsFloat
               else
                  Valor := Consulta.Fields[coluna-1].AsString;


               excel.cells [linha+2,coluna]:= Valor;
            end;
            Consulta.Next;
         end;

         for coluna:=1 to Consulta.FieldCount do
         // eliminei a coluna 0 da rela��o do Excel
         begin
            valor:= Consulta.Fields[coluna-1].DisplayLabel;
            excel.cells[1,coluna]:=valor;
         end;
         excel.columns.AutoFit;
         // esta linha � para fazer com que o
         //Excel dimencione as c�lulas adequadamente.
         excel.workbooks[1].saveas(Caminho);
         excel.workbooks.close;
         excel:=Unassigned;
      except
         MessageDlg('Aconteceu um erro desconhecido durante a '+
                    'convers�o da tabela para o Ms-Excel',
                    mtError,[mbOk, mbNo], 0);
      end;
    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

 

procedure SetiUsefulGerarExcel_Ant(Consulta:TAdoQuery; Pai:TComponent);
var
   coluna, linha: integer;
   excel: variant;
   valor: Variant;
begin
    try
       SetiUsefulStatusBarMessage('Gerando planilha...', Pai);
       if Consulta <> nil then
       begin
          if Consulta.State <> dsInactive then
          begin
             if Consulta.RecordCount > 0 then
             begin
                try
                   excel:= CreateOleObject('Excel.Application');
                   excel.Workbooks.add(1);
                except
                   MessageDlg('Vers�o do Ms-Excel Incompat�vel',
                    mtError,[mbYes, mbNo], 0);
                end;

                Consulta.First;

                try
                   for linha:=0 to Consulta.RecordCount-1 do
                   begin
                      for coluna:=1 to Consulta.FieldCount do
                        // eliminei a coluna 0 da rela��o do Excel
                      begin
                         if Consulta.Fields[coluna-1].DataType = ftString then
                            Valor := Consulta.Fields[coluna-1].AsString
                         else if Consulta.Fields[coluna-1].DataType =
                          ftInteger then
                          Valor := Consulta.Fields[coluna-1].AsInteger
                         else if Consulta.Fields[coluna-1].DataType =
                          ftCurrency then
                          Valor := Consulta.Fields[coluna-1].AsCurrency
                         else if Consulta.Fields[coluna-1].DataType = ftBCD then
                          Valor := Consulta.Fields[coluna-1].AsFloat
                         else if (Consulta.Fields[coluna-1].DataType =
                          ftDateTime) or (Consulta.Fields[coluna-1].DataType =
                          ftDate) then
                          Valor := Consulta.Fields[coluna-1].AsDateTime
                         else if Consulta.Fields[coluna-1].DataType =
                          ftFloat then
                          Valor := Consulta.Fields[coluna-1].AsFloat
                         else
                          Valor := Consulta.Fields[coluna-1].AsString;
                          excel.cells [linha+2,coluna]:= Valor;
                      end;
                      Consulta.Next;
                   end;

                   for coluna:=1 to Consulta.FieldCount do
                   // eliminei a coluna 0 da rela��o do Excel
                   begin
                      valor:= Consulta.Fields[coluna-1].DisplayLabel;
                      excel.cells[1,coluna]:=valor;
                   end;
                   excel.columns.AutoFit;
                   // esta linha � para fazer com que o
                   //Excel dimencione as c�lulas adequadamente.
                   excel.visible:=true;
                except
                   MessageDlg('Aconteceu um erro desconhecido durante a '+
                      'convers�o da tabela para o Ms-Excel',
                       mtError,[mbOk, mbNo], 0);
                end;
             end;
          end;
       end;
       SetiUsefulStatusBarMessage('', Pai);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulGridCommands(Query: TComponent; var Campo: TColumn;
var UltimoCampo: TColumn; var OrdemAscDesc : String;  OrdemTotal : String = '');
begin
    try
       Screen.Cursor := crHourGlass;
       Application.ProcessMessages;
       if Query is TAdoQuery then
       begin
         if not (TAdoQuery(Query).IsEmpty) then
         begin
           if Assigned(UltimoCampo) then
           begin
              if  (UltimoCampo.FieldName = Campo.FieldName) then
              begin
                  if (OrdemAscDesc = ' ASC') then
                     OrdemAscDesc := ' DESC'
                  else
                     OrdemAscDesc := ' ASC';
              end
              else
              begin
                 OrdemAscDesc := ' ASC';
                 //Campo.Title.Color := clInfoBk;
                 Campo.Title.Color := clBlack;
                 //UltimoCampo.Title.Color := $00F8E4D3;
                 UltimoCampo.Title.Color := $00808040;
              end;
           end
           else
           begin
              //Campo.Title.Color := clInfoBk;
              Campo.Title.Color := clBlack;
              OrdemAscDesc := ' DESC';
           end;

           UltimoCampo := Campo;
           TAdoQuery(Query).Sort :=   OrdemTotal      + ' ' +
                                      Campo.FieldName + ' ' +
                                      OrdemAscDesc;
           Application.ProcessMessages;
         end;
       end;
       if Query is TAdoDataSet then
       begin
         if not (TAdoQuery(Query).IsEmpty) then
         begin
           if Assigned(UltimoCampo) then
           begin
              if  (UltimoCampo.FieldName = Campo.FieldName) then
              begin
                  if (OrdemAscDesc = ' ASC') then
                     OrdemAscDesc := ' DESC'
                  else
                     OrdemAscDesc := ' ASC';
              end
              else
              begin
                 OrdemAscDesc := ' ASC';
                 //Campo.Title.Color := clInfoBk;
                 Campo.Title.Color := clBlack;
                 //UltimoCampo.Title.Color := $00F8E4D3;
                 UltimoCampo.Title.Color := $00808040;
              end;
           end
           else
           begin
              //Campo.Title.Color := clInfoBk;
              Campo.Title.Color := clBlack;
              OrdemAscDesc := ' DESC';
           end;

           UltimoCampo := Campo;
           TAdoDataSet(Query).IndexFieldNames :=  OrdemTotal      + ' ' +
                                                  Campo.FieldName + ' ' +
                                                  OrdemAscDesc;
           Application.ProcessMessages;
         end;
       end;
       Screen.Cursor := crDefault;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDiaUtilAnterior (dData : TDateTime) : TDateTime;
begin
  try
    if DayOfWeek(dData) = 7 then
      dData := dData - 1
    else
    if DayOfWeek(dData) = 1 then
      dData := dData - 2;
    SetiUsefulDiaUtilAnterior := dData;
  except on e : exception do
        SetiMens(0,e.Message);
  end;

end;

function SetiUsefulTirapontos(texto : String) : String;
Begin
    try
      while pos('-', Texto) <> 0 Do
        delete(Texto,pos('-', Texto),1);

      while pos('.', Texto) <> 0 Do
        delete(Texto,pos('.', Texto),1);

      while pos('/', Texto) <> 0 Do
        delete(Texto,pos('/', Texto),1);

      while pos(',', Texto) <> 0 Do
        delete(Texto,pos(',', Texto),1);

      Result := Texto;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


function SetiUsefulAbreFormLogDeAcesso (FClass: TFormClass; var Instance;
OwnerForm:TComponent;Nome: String;Gravar: Boolean):Boolean;
 var
 Servidor:String;
 Banco:String;
 Tabela:String;
Sistema:String;
 Auxilio : String;
 ACN: TADOConnection;
 Buffer:array[0..255] of Char;
 GInitData:TWSADATA;
 sHost:String;
begin
    try
       begin
         WSAStartup($101, GInitData);
         Servidor:= '';
         Banco:='';
         Tabela:='';
         Auxilio :='';
         Sistema := '';
       end;
       if Assigned(TForm(Instance)) then begin
          TForm(Instance).SetFocus;
          TForm(Instance).BringToFront;
       end
       else
          TForm(Instance) := FClass.Create(OwnerForm);
       if Gravar = True then
       begin
        if Servidor = '' then
          Servidor := 'INTERCLU006SQL';
        if Banco = '' then
          Banco := 'InterCadastro';
        if Tabela = '' then
          Tabela := 'LOGACESSOTELAS';
        if Nome = '' then
          Nome := SetiUsefulUsuarioLogado;
        if (Sistema = '') then
          Sistema :=  Application.Title;
        try
          ACN := TADOConnection.Create(nil);
          with ACN do
          begin
            ConnectionString  :=  'Provider=SQLOLEDB.1;'+
                                  'Password=bh001;'+
                                  'Persist Security Info=True;'+
                                  'User ID=solicitacaoeletronica;'+
                                  'Initial Catalog=InterCadastro;'+
                                  'Data Source='+Servidor;
            LoginPrompt := False;
          end;
          Auxilio := (  'insert into '+
                        Servidor+
                        '.'+
                        Banco+
                        '.dbo.'+
                        tabela+
                        ' ' +
                        '(LOG_USUARIO, '+
                        'LOG_IP,'+
                        'LOG_MOMENTO,'+
                        'LOG_TELA,'+
                        'LOG_FORMACESSO,'+
                        'LOG_HOSTNAME,'+
                        'LOG_SISTEMA) ' +
                     'values ' +
                     '(''' +UpperCase(Nome) +
                     ''',  '''+
                     SetiUsefulUsefulIP +
                     ''' , '''+
                     FormatDateTime('mm/dd/yyyy HH:mm:ss',Now)+
                     ''','''+
                     SetiUsefulCompletaString((
                      StringReplace(
                        StringReplace(
                          StringReplace(
                            StringReplace(
                              SetiUsefulRetiraAcentos(
                                TFORM(Instance).Caption),
                                  '/','',[rfReplaceAll]),'.','',[rfReplaceAll]),
                                    '-','',[rfReplaceAll]),' ',' ',
                                      [rfReplaceAll])),
                                        ' ',50,False)+''','''+
                                          TFORM(Instance).ClassName
                                            +''',''' +
                                            SetiUsefulGetComputerNetName
                                              +''','''+Sistema+''')'
                    );
          ACN.Execute(Auxilio);
          finally
            ACN.Free;
          end;
       end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulInsereTextoString(TextoInsere,Frase:String;
Valor:Integer):String;
begin
    try
       insert (TextoInsere,Frase,valor);
       Result := Frase;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
    try
        size := 256;
        if GetComputerName(buffer, size) then
          Result := buffer
        else
          Result := ''
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulFindFile(aPath, FileName : string;
SubDir : Boolean = True) : String;
var
  FD : TWin32findData;

  function _FindDir(wPath : string; var vRes : string) : Boolean;
  var
    H : THandle;
  begin
    _FindDir := False;
    H := FindFirstFile(Pchar(wPath + FileName), FD);
    if H <> INVALID_HANDLE_VALUE then
    try
      repeat
        if (Copy(FD.cFileName, 1, 1) <> '.') then 
        begin 
          vRes := wPath + FD.cFileName; 
          _FindDir := True; 
          Exit; 
        end; 
      until not (FindNextFile(H, FD)); 
    finally
      Windows.FindClose(H); 
    end; 

    if not SubDir then Exit; 

    H := FindFirstFile(PChar(wPath + '*.'), FD); 
    if H <> INVALID_HANDLE_VALUE then 
    try 
      repeat 
        if (FD.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) <> 0 then 
          if Copy(FD.cFileName, 1, 1) <> '.' then
          begin 
            if _FindDir(wPath + FD.cfilename + '\', vRes) then 
            begin 
              Result := True; 
              Exit; 
            end; 
          end; 
      until not (FindNextFile(H, FD)); 
    finally 
      Windows.FindClose(H); 
    end;
  end; 

begin
    try
      if not _FindDir(IncludeTrailingBackslash(aPath), Result) then
        Result := '';
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulGridColumnAdjust(DBGrid: TDBGrid; aChangeAll: boolean);
var
  NewWidth,
  TotalColumnWidth,
  ColumnCount,
  GridClientWidth,
  StepWidth,
  i: integer;
begin
    try
        ColumnCount := DBGrid.Columns.Count;
        if ColumnCount = 0 then Exit;

        // Ermitteln der momentanen Breite des Grids
        // look for the actual size of all columns
        TotalColumnWidth := 0;
        for i := 0 to ColumnCount-1 do
          TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
        if dgColLines in DBGrid.Options then
          TotalColumnWidth := TotalColumnWidth + ColumnCount;

        // Ermitteln der max. Breite des Grids
        // What's the total Grid width?
        GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
        if dgIndicator in DBGrid.Options then begin
          GridClientWidth := GridClientWidth - IndicatorWidth;
          if dgColLines in DBGrid.Options then
            Dec(GridClientWidth);
        end;
        if DBGrid.BorderStyle = bsSingle then begin
          if DBGrid.Ctl3D then // 2 * 2 Pixel
            GridClientWidth := GridClientWidth - 4
          else // 2 * 1 Pixel
            GridClientWidth := GridClientWidth - 2;
        end;

        // Neue Spaltenbreiten setzen: verg��ern
        // change the width(s): extend size/width
        if TotalColumnWidth < GridClientWidth then begin
          StepWidth := (GridClientWidth - TotalColumnWidth) div ColumnCount;
          // Alle Spalten anpassen
          // for all columns
          if aChangeAll then begin
            for i := 0 to ColumnCount-1 do
              DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + StepWidth;
          // Nur letzte Splate anpassen
          // only for the last one
          end else
            DBGrid.Columns[ColumnCount-1].Width :=
              DBGrid.Columns[ColumnCount-1].Width + ColumnCount * StepWidth;
        end

        // Neue Spaltenbreiten setzen: verkleinern
        // change the width(s): reduce size/width
        else if TotalColumnWidth > GridClientWidth then begin
          StepWidth := (TotalColumnWidth - GridClientWidth) div ColumnCount;
          if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
            Inc(StepWidth);
          // Alle Spalten anpassen
          // for all columns
          if aChangeAll then begin
            for i := 0 to ColumnCount-1 do begin
              NewWidth := DBGrid.Columns[i].Width - StepWidth;
              if (NewWidth > 5) then DBGrid.Columns[i].Width := NewWidth;
            end;
          // Nur letzte Splate anpassen
          // only for the last one
          end else begin
            NewWidth :=
              DBGrid.Columns[ColumnCount-1].Width - ColumnCount * StepWidth;
            if (NewWidth > 5) then
              DBGrid.Columns[ColumnCount-1].Width := NewWidth;
          end;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


procedure SetiUsefulutConfiguraGrade(aGrade : TStringGrid);
var
  i : integer;
  j : integer;
  x : array of integer;
begin
    try
        // Vetor x com o total de colunas da grade
        SetLength(x, aGrade.ColCount);

        // Zero todas as posi��es do vetor x
        for i:= 0 to aGrade.ColCount -1 do
          x[i]:= 0;

        // Varrendo todas as linhas da Grade
        for i:= 0 to aGrade.RowCount-1 do
          begin
            // Varrendo todas as Colunas da grade
            for j:= 0 to aGrade.ColCount -1 do
              begin
                // Verificando se a coluna na posi��o j �
                //maior que o vetor x na posi��o j
                // se for maior guardo o valor da coluna na
                //posi��o j no vetor x na posi��o j
                if aGrade.Canvas.TextWidth(aGrade.Cells[j,i]) > x[j] then
                  x[j]:= aGrade.Canvas.TextWidth(aGrade.Cells[j,i]);
              end;
          end;

        // Verifico se a posi��o i do Vetor x � igual a 0
        // se o vetor x na posi��o i for igual a 0
        // estou tribuindo 89 para o vetor x na posi��o i
        for i:= 0 to aGrade.ColCount -1 do
          begin
            if x[i] = 0 then
              x[i]:= 89;
          end;

        // Varrendo todas as Colunas da Grade
        // e Atribuindo o valor do vetor x na posi��o j
        // para a propiedade colWidths da coluna na posi��o j
        // com o valor do vetor x na posi��o j
        for i:= 0 to aGrade.RowCount-1 do
          begin
            for j:= 0 to aGrade.ColCount -1 do
              aGrade.ColWidths[j]:= x[j] + 5;
          end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


function SetiUsefulTratarDiasUteis(data: TDate): TDate;

  //INICIO DAS FUN��ES

  // Tratar final de semana, sabado e domingo jogar para segunda feira
  function TratarFinalSemana(data: TDate): TDate;
  begin
    // Domingo - > + 1 para ir para segunda
    if (DayOfWeek(data) = 1) then
      Result := IncDay(data, 1)
    // Sabado - > + 2 para ir para segunda
    else
    if (DayOfWeek(data) = 7) then
      Result := IncDay(data, 2)
      // Segunda, ter�a, quarta, quinta, sexta - feira , resutlar a pr�pria data
    else
      Result := data;
  end;

  // tratar a data da pascoa, pois descobrindo a pascoa chegaremos a sexta
  //feira santa
  function SetiUsefulSextaFeiraSanta(data: TDate): String;
  var
    dia,
    mes,
    ano: Word;
    x,
    y,
    resto1,
    resto2,
    resto3,
    resto4,
    resto5 : integer;
    diaMes,
    diaMesAno: String;
  begin
      // Para calcular o dia da P�scoa (Domingo), usa-se a f�rmula abaixo,
      // onde o "ANO" deve ser introduzido com 4 d�gitos.
      // O operador MOD � o resto da divis�o. A f�rmula vale para anos entre
      //1901 e 2099.
      // A f�rmula pode ser estendida para outros anos, alterando X e Y
      //conforme a tabela a seguir: olhar no site
      // http://pt.wikipedia.org/wiki/C%C3%A1lculo_da_P%C3%A1scoa
      ano := YearOf(data);

      case ano of
        2000..2099:
          begin
            x := 24;
            Y := 5;
          end;
        2100..2199:
          begin
            x := 24;
            y := 6;
          end;
        2200..2299:
          begin
            x := 25;
            y := 7;
          end;
      end;

      resto1 := ano mod 19;
      resto2 := ano mod 4;
      resto3 := ano mod 7;
      resto4 := ((19 * resto1) + x) mod 30;
      resto5 := ((2 * resto2) + (4 * resto3) + (6 * resto4) + y) mod 7;

      if (resto4 + resto5) < 10 then
      begin
        dia := (resto4 + resto5 + 22);
        mes := 3;
      end
      else
      begin
        dia := (resto4 + resto5 - 9);
        mes := 4;
      end;

      diaMes := FormatFloat('00', dia) + '/' + FormatFloat('00', mes);

      // 1. quando o domingo de P�scoa calculado for em 26 de Abril,
      //corrige-se para uma semana antes, ou seja, 19 de Abril.
      // 2. quando o domingo de P�scoa calculado for em 25 de Abril e
      //d=28 e a>10, ent�o a P�scoa � em 18 de Abril.
      if (diaMes = '26/04') then
        diaMes := '19/04'
      else
      if (diaMes = '25/04') and (resto4 = 25) and (resto1 > 10) then
        diaMes := '18/04';

      // descobrimos a data da pascoa , agora temos que descontar 2
      //para chegar na sexta que seria a sexta-feria santa
      diaMesAno :=
        FormatDateTime('dd/mm/yyyy',
          IncDay(StrToDate(diaMes + '/' + formatFloat('0000', ano)), -2));

      Result := diaMesAno;
  end;

  // corpus christi
  function SetiUsefulCorpusChristi(data: TDate): string;
  var
    sextaSanta: string;
  begin
    // Para calcular a Quinta-feira de Corpus Christi,
    //soma-se 60 dias ao Domingo de P�scoa, 58 pois considera-se a sexta feira.
    sextaSanta := SetiUsefulSextaFeiraSanta(data);
    Result := FormatDateTime('dd/mm/yyyy', IncDay(StrToDate(sextaSanta), 62));
  end;

  // Carnaval
  function Carnaval(data: TDate): string;
  var
    sextaSanta: string;
  begin
    // Para calcular a Ter�a-feira de Carnaval, basta subtrair 47 dias do
    //Domingo de P�scoa, 45 pois considera a sexta.
    sextaSanta := SetiUsefulSextaFeiraSanta(data);
    Result := FormatDateTime('dd/mm/yyyy', IncDay(StrToDate(sextaSanta), - 45));
  end;

  //FIM DAS FUN��ES

var
  dataAux: string;
begin
    try
      // Rotina que verifica se um determinado dia cai nos feriados
      //relacionados abaixo:
      // Se acaso cair, acrescentar sempre um dia a mais, n�o considerar
      //sabados e domingos;
      {01/01 - Confraterniza��o Universal
      21/04 - Tiradentes
      01/05 - Dia do Trabalho
      07/09 - Independ�ncia do Brasil
      12/10 - Nossa Senhora Aparecida
      02/11 - Finados
      15/11 - Proclama��o da Rep�blica
      25/12 - Natal
      ??/?? - Pascoa (a calcular) // rever (Sesxta-Feira Santa)
      ??/?? - Corpus Christi (a calcular) Para calcular a Quinta-feira de
      //Corpus Christi, soma-se 60 dias ao Domingo de P�scoa.
      ??/?? - Feriado carnaval (a calcular) Para calcular a Ter�a-feira de
      //Carnaval, basta subtrair 47 dias do Domingo de P�scoa.}

      // Pegar somente o dd/mm
      dataAux := FormatDateTime('dd/mm', data);

      // Confraterniza��o Universal
      if (dataAux = '01/01') then
        result := TratarFinalSemana(IncDay(data, 1))
      // Tiradentes
      else
      if (dataAux = '21/04') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Dia do Trabalho
      else
      if (dataAux = '01/05') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Independ�ncia do Brasil
      else
      if (dataAux = '07/09') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Nossa Senhora Aparecida
      else
      if (dataAux = '12/10') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Finados
      else
      if (dataAux = '02/11') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Proclama��o da Rep�blica
      else
      if (dataAux = '15/11') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Natal
      else
      if (dataAux = '25/12') then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Sexta - Feira Santa = acrescenta + 3 para cair na segunda - feira
      else
      if FormatDateTime('dd/mm/yyyy', data)
        = (SetiUsefulSextaFeiraSanta(data)) then
        Result := IncDay(data, 3)
      // Corpus Christi
      // Para calcular a Quinta-feira de Corpus Christi, soma-se 60 dias ao
      //Domingo de P�scoa, 62 pois considera-se a sexta feira.
      else
      if FormatDateTime('dd/mm/yyyy', data) = SetiUsefulCorpusChristi(data) then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Ter�a- Feria de carnaval
      // Para calcular a Ter�a-feira de Carnaval, basta subtrair 47 dias
      //do Domingo de P�scoa, 45 pois considera a sexta.
      else
      if FormatDateTime('dd/mm/yyyy', data) = Carnaval(data) then
        Result := TratarFinalSemana(IncDay(data, 1))
      // Nenhuma -> somente verificar o final de semana
      else
        Result := TratarFinalSemana(data)
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
{Retorna a diferenca de dias entre duas datas}
Var Data: TDateTime;
    dia, mes, ano: Word;
begin
    try
      if DataAtual < DataVenc then
         begin
            Result := 'A data data atual n�o pode ser menor que a data inicial';
         end
      else
         begin
            Data := DataAtual - DataVenc;
            DecodeDate( Data, ano, mes, dia);
            Result := FloatToStr(Data);
         end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulRetiraAspaSimples(Texto:String):String;
var
  n : Integer;
  NovoTexto : String;
begin
    try
      NovoTexto := '';
      for n := 1 to length(texto) do
      begin
        if copy(texto, n,1) <> Chr(39) then
          NovoTexto := NovoTexto + copy(Texto, n,1)
        else
          NovoTexto := NovoTexto + ' ';
      end;
      Result:=NovoTexto;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure SetiUsefulAngleTextOut(CV: TCanvas; const sText: String; x, y,
angle,size:integer);
//
// Imprime um texto em outro angulo diferente de 90�
//
// Requer a Printers declarada na clausula uses da unit
//
// Ex:
// Printer.BeginDoc;
// AngleTextOut(Printer.Canvas,'Teste',180,100,0,11);
// Printer.EndDoc;
//
var
  LogFont: TLogFont;
  SaveFont: TFont;
begin
    try
      SaveFont := TFont.Create;
      SaveFont.Assign(CV.Font);
      GetObject(SaveFont.Handle, sizeof(TLogFont), @LogFont);
      with LogFont do
           begin
           lfHeight := Size * 5;
           lfEscapement := angle *10;
           lfQuality := PROOF_QUALITY;
           lfPitchAndFamily := DEFAULT_PITCH or FF_DONTCARE;
           end;
      CV.Font.Handle := CreateFontIndirect(LogFont);
      SetBkMode(CV.Handle, TRANSPARENT);
      CV.TextOut(x, y, sText);
      CV.Font.Assign(SaveFont);
      SaveFont.Free;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulFormataFone(Fone: String; Area: String): string;
// Formata uma cadeia de strings numericos em formato de numero de telefone
var
      DDD : String;
      Prefixo : String;
      Numero : String;
      Telefone : String;
      Caracter : String;
      Ind : Integer;
      Estado : Integer; // 0-DDD, 1-Prefixo, 2-Numero
begin
  try
      Ind := 1;
      DDD := '';
      Prefixo := '';
      Numero := '';
      Estado := -1;
      Telefone := '';
      while ind <= length(Fone) do
      begin
          caracter := Copy(Fone,ind,1);
          if caracter = '(' then
            Estado := 0
          else
          begin
            if caracter = ')' then
            begin
              if Estado = 0 then
                Estado := 1;
            end
            else
            begin
              if caracter = '-' then
              begin
                if Estado = 1 then
                  Estado := 2;
              end;
            end;
          end;
          case Estado of
            0 : DDD := DDD + Caracter;
            1 : Prefixo := Prefixo + Caracter;
            2 : Numero := Numero + Caracter;
          end;
          Ind := Ind + 1;
      end;
      if Estado = -1 then
      begin
          Telefone := Fone;
          if Length(Telefone) = 10 then
          begin
              Result := '('+Copy(Telefone,1,3)+') '+
                            Copy(Telefone,4,3)+'-'+
                            Copy(Telefone,7,4);
          end
          else
          begin
              if Length(Telefone) = 7 then
              begin
                  Result := '('+Area+') '+
                              Copy(Telefone,1,3)+'-'+
                              Copy(Telefone,4,4)
              end	else
          begin
              Result := Fone;
          end;
      end;
  end
  else
  begin
    if Length(DDD) = 0 then
      DDD := Area;
    if Length(Numero) = 0 then
      Result := '('+DDD+') '+Prefixo
    else
      Result := '('+DDD+') '+Prefixo+'-'+Numero;
  end;
  except on e : exception do
        SetiMens(0,e.Message);
  end;
end;

function SetiUsefulGridToExcelFile(Grid: TDbGrid;ExcelFile:
String; TotalRegistros :
Integer):Boolean;
var
  bResult   : Boolean;
  SavePlace : TBookmark;
  i,eline   : Integer;
  Excel     : Variant;
  iSheet    : Integer;
  CorFundo  : TColor;
begin
    try
      if TotalRegistros = 0 then
        TotalRegistros := Grid.DataSource.DataSet.RecordCount;
      bResult:= False;
      if Assigned(Grid.DataSource) then
      begin
        if Grid.DataSource.DataSet.Active then
        begin
            //Rotina que chama um painel com um ProgressBar
            Excel:= CreateOleObject('Excel.Application');
            Excel.Visible:= False;
            Excel.WorkBooks.Add;
            //Definindo o n�mero de worksheets
            if  (TotalRegistros > 65000) then
            begin
              if  ((TotalRegistros Mod 65000) = 0) then
                iSheet := TotalRegistros DIV 5
              else
                iSheet := (TotalRegistros DIV 65000) + 1;
              if  (iSheet > 3) then
                //Adicionando as worksheets que faltam a partir da
                //3 planilha do excel
                for i:= 4 to iSheet do
                  Excel.WorkBooks[1].Sheets.Add(
                                                  null,
                                                  Excel.WorkBooks[1].Sheets[i-1]
                                               );
                end;
                // Save grid Position
                SavePlace:= Grid.DataSource.DataSet.GetBookmark;
                Grid.DataSource.DataSet.First;
                //Sheet atual
                iSheet := 1;
                // Montando cabe�alho da planilha
                if not (Grid.DataSource.DataSet.Eof) then
                begin
                  eline:= 1; // Posicionando na primeira linha da planilha
                            //(Sheet) para por o cabe�alho
                  for i:=0 to (Grid.Columns.Count-1) do
                  begin
                    Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                      := Grid.Columns[i].Title.Caption;
                    Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                      ].ColumnWidth := Grid.Columns[i].Field.DisplayWidth;
                    Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                      ].Font.FontStyle := 'Negrito';
                    Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                      ].Interior.Color :=
                      (ColorToRgb(Grid.Columns[i].Title.Color));
                    Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                      ].Font.Color  :=
                      (ColorToRgb(Grid.Columns[i].Title.Font.Color));
                  end;
                end;
                while not Grid.DataSource.DataSet.Eof do
                //Preenchendo o restante da planilha com os dados
                begin
                  Inc(eline);
                  //Incrementa a posi��o da linha para preencher no excel
                  //Atualiza Progressbar
                  Application.ProcessMessages;
                  //Se passar de 65000 linhas, jogar dado na outra planilha,
                  //remontando os cabe�alhos antes
                  if (eline > 65000) then
                  begin
                     Inc(iSheet);
                     eline := 1;
                     for i:=0 to (Grid.Columns.Count-1) do
                     begin
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)]
                          := Grid.Columns[i].Title.Caption;
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].ColumnWidth := Grid.Columns[i].Field.DisplayWidth;
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Font.FontStyle := 'Negrito';
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Interior.Color
                            := (ColorToRgb(Grid.Columns[i].Title.Color));
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Font.Color
                            := (ColorToRgb(Grid.Columns[i].Title.Font.Color));
                     end;
                     Inc(eline);
                  end;

                  //Para mudar a cor de fundo da linha da planilha
                  If (eline mod 2) = 0 then
                         CorFundo := clInfoBk
                  else
                         CorFundo := clAqua;

                  for i:=0 to (Grid.Columns.Count-1) do
                  begin
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ] := Grid.Columns[i].Field.AsString;
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Interior.Color := (ColorToRgb(CorFundo));
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Font.Color
                            := (ColorToRgb(Grid.Columns[i].Font.Color));
                        Excel.WorkBooks[1].Sheets[iSheet].Cells[eline,(i+1)
                          ].Borders.Color  := (ColorToRgb(clGray));
                  end;
                  Grid.DataSource.DataSet.Next;
                end;

                //Ajustando o tamanho das colunas
                for i:= 1 to iSheet do
                  Excel.WorkBooks[1].WorkSheets[i].Range[
                    'B1','AQ1000'].Columns.AutoFit;

                // Set saved grid position
                Grid.DataSource.DataSet.GotoBookmark(SavePlace);
                // Salvando o arquivo
                Excel.WorkBooks[1].SaveAs(ExcelFile);
                Excel.Quit;
                bResult:= True;
              //  pnlMensagem.Visible := False;
             //   pnlMensagem.Visible := False;
          end;
        end;
      except on e : exception do begin
        SetiMens(0,e.Message);
        bResult:= False;
        Excel.Quit;
      end
    end;
end;

procedure SetiUsefulPatchINT3;
  //Este � um c�digo de debug na pr�pria NTDLL.DLL. Ele � executado se
  //voc� tem �cones com mais de 16 cores
  //em sua aplica��o e em diversos outros pontos, dependendo da vers�o do
  //Windows que est� em uso.
  //Este problema apenas acontece na IDE do Delphi, pois como ela captura os
  //c�digos de breakpoint,
  //assim que executa esta por��o ele p�ra.  // Como declara
  // initialization
  //    PatchINT3;
var
    NOP : Byte;
    BytesWritten : DWORD;
    NtDll : THandle;
    P : Pointer;
begin
    try
        if Win32Platform <> VER_PLATFORM_WIN32_NT then
            Exit;
        NtDll := GetModuleHandle('NTDLL.DLL');
        if NtDll = 0 then
            Exit;
        P := GetProcAddress(NtDll, 'DbgBreakPoint');
        if P = nil then
           Exit;
        try
            if Char(P^) <> #$CC then
                Exit;

            NOP := $90;
            //voltar
            // if WriteProcessMemory(GetCurrentProcess,P, @NOP, 1,
            //BytesWritten) and (BytesWritten = 1) then
            FlushInstructionCache(GetCurrentProcess, P, 1);
        except
        // N�o entre em p�nico se voc� ver uma EAccessViolation aqui,
        // � totalmente inofensiva!
        on EAccessViolation do ;
        else
           raise;
    end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulAjustaStr ( str: String; tam: Integer ): String;
begin
    try
       while Length ( str ) < tam do
        str := str + ' ';
       if Length ( str ) > tam then
        str := Copy ( str, 1, tam );
        Result := str;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;


function SetiUsefulTrocaCaracterEspecial(aTexto : string;
aLimExt : boolean) : string;
const
  //Lista de caracteres especiais
  xCarEsp: array[1..38] of String = ( '�', '�', '�', '�', '�',
                                      '�', '�', '�', '�', '�',
                                      '�', '�','�', '�','�', '�',
                                      '�', '�','�', '�', '�','�',
                                      '�','�', '�', '�', '�', '�',
                                      '�', '�', '�','�','�', '�',
                                      '�','�','�','�');
  //Lista de caracteres para troca
  xCarTro: array[1..38] of String = ('a', 'a', 'a', 'a', 'a',
                                     'A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i',
                                     'I', 'I','o', 'o', 'o','o',
                                     'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u',
                                     'c','C','n', 'N');
  //Lista de Caracteres Extras
  xCarExt: array[1..48] of string = ('<','>','!','@','#','$','%','�','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','�','`',
                                     '�','�','�','�','�','�','�','�','�','�',
                                     '�','�','�','�','�','�','�','�');
var
  xTexto : string;
  i : Integer;
begin
    try
       xTexto := aTexto;
       for i:=1 to 38 do
         xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i],
                    [rfreplaceall]);
       //De acordo com o par�metro aLimExt, elimina caracteres extras.
       if (aLimExt) then
         for i:=1 to 48 do
           xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);
       Result := xTexto;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulValorPorExtenso(vlr: real): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'tr�s', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milh�o', 'bilh�o',
    'trilh�o');
  qualificaP: array[0..4] of string = ('', 'mil', 'milh�es', 'bilh�es',
    'trilh�es');
var
  inteiro: Int64;
  resto: real;
  vlrS, s, saux, vlrP, centavos: string;
  n, unid, dez, cent, tam, i: integer;
  umReal, tem: boolean;
begin
    try
      if (vlr = 0) then begin
        SetiUsefulvalorPorExtenso := 'zero';
        exit;
      end;
      inteiro := trunc(vlr); // parte inteira do valor
      resto := vlr - inteiro; // parte fracion�ria do valor
      vlrS := inttostr(inteiro);
      if (length(vlrS) > 15) then begin
        SetiUsefulvalorPorExtenso := 'Erro: valor superior a 999 trilh�es.';
        exit;
      end;

      s := '';
      centavos := inttostr(round(resto * 100));

      // definindo o extenso da parte inteira do valor
      i := 0;
      umReal := false; tem := false;
      while (vlrS <> '0') do begin
        tam := length(vlrS);
        // retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
        // 1a. parte = 789 (centena)
        // 2a. parte = 456 (mil)
        // 3a. parte = 123 (milh�es)
        if (tam > 3) then begin
          vlrP := copy(vlrS, tam-2, tam);
          vlrS := copy(vlrS, 1, tam-3);
        end else begin // �ltima parte do valor
          vlrP := vlrS;
          vlrS := '0';
        end;
        if (vlrP <> '000') then begin
          saux := '';
          if (vlrP = '100') then
            saux := 'cem'
          else begin
            n := strtoint(vlrP); // para n = 371, tem-se:
            cent := n div 100; // cent = 3 (centena trezentos)
            dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
            unid := (n mod 100) mod 10; // unid = 1 (unidade um)
            if (cent <> 0) then
              saux := centena[cent];
            if ((dez <> 0) or (unid <> 0)) then begin
              if ((n mod 100) <= 19) then begin
                if (length(saux) <> 0) then
                  saux := saux + ' e ' + unidade[n mod 100]
                else
                  saux := unidade[n mod 100];
              end else begin
                if (length(saux) <> 0) then
                  saux := saux + ' e ' + dezena[dez]
                else
                  saux := dezena[dez];
                if (unid <> 0) then
                  if (length(saux) <> 0) then
                    saux := saux + ' e ' + unidade[unid]
                  else
                    saux := unidade[unid];
              end;
            end;
          end;
          if ((vlrP = '1') or (vlrP = '001')) then begin
            // 1a. parte do valor (um real)
            if (i = 0) then
              umReal := true
            else
              saux := saux + ' ' + qualificaS[i];
          end
          else
          if (i <> 0) then
            saux := saux + ' ' + qualificaP[i];
          if (length(s) <> 0) then
            s := saux + ', ' + s
          else
            s := saux;
        end;
        if (((i = 0) or (i = 1)) and (length(s) <> 0)) then
          tem := true; // tem centena ou mil no valor
        i := i + 1; // pr�ximo qualificador: 1- mil, 2- milh�o, 3- bilh�o, ...
      end;
      if (length(s) <> 0) then begin
        if (umReal) then
          s := s + ' real'
        else
        if (tem) then
          s := s + ' reais'
        else
          s := s + ' de reais';
      end;
      // definindo o extenso dos centavos do valor
      // valor com centavos
      if (centavos <> '0') then begin
        // se n�o � valor somente com centavos
        if (length(s) <> 0) then
          s := s + ' e ';
        if (centavos = '1') then
          s := s + 'um centavo'
        else begin
          n := strtoint(centavos);
          if (n <= 19) then
            s := s + unidade[n]
          // para n = 37, tem-se:
          else begin
            // unid = 37 % 10 = 7 (unidade sete)
            unid := n mod 10;
            // dez  = 37 / 10 = 3 (dezena trinta)
            dez := n div 10;
            s := s + dezena[dez];
            if (unid <> 0) then
              s := s + ' e ' + unidade[unid];
            end;
            s := s + ' centavos';
          end;
        end;
        SetiUsefulvalorPorExtenso := s;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure SetiUsefulSetiPrimeiroeUltimoDiaDoMes(mes,ano:String;
var dataIni,dataFin:string);
var
 MesAux,AnoAux:Integer;
begin
    try
      //primeiro dia
      dataIni:='01/'+FormatCurr('00',StrToInt(mes))+'/'+ano;

      //ultimo dia
      MesAux:=StrToInt(mes);
      AnoAux:=StrToInt(ano);

      //se ja estivesse em dezembro
      MesAux:=MesAux+1;

      if MesAux = 13 then
      begin
        MesAux:=1;
        AnoAux:=AnoAux+1;
      end;//if MesAux = 13 then

      dataFin:='01/'+IntToStr(MesAux)+'/'+IntToStr(AnoAux);
      dataFin:=DateToStr(StrToDate(dataFin)-1);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulSetiFirstLastDay(pType: Integer;pDate:TDateTime) :
TDateTime;
var
  vMonth, vYear, vLastDay : Integer;
begin
  Result := Now;

  vMonth := MonthOf(pDate);
  vYear := YearOf(pDate);
  vLastDay := DaysInMonth(pDate);

  //First day
  if pType = 1 then
  begin
    Result := StrToDateTime('01'+'/'+IntToStr(vMonth)+'/'+IntToStr(vYear))
  end else
  //Last day
  if pType = 2 then
    Result :=
      StrToDateTime(
        IntToStr(vLastDay)+'/'+IntToStr(vMonth)+'/'+IntToStr(vYear));
end;

function SetiUseFulSetiValidatePeriod(pIniDate,pFinDate:TDateTime) : Boolean;
begin
  Result := True;
  if pIniDate > pFinDate then
    Result := False;
end;

function SetiUsefulCriptografa(Senha: String): String;
  var i: Integer;
      s: String[255];
      c: array [0..255] of Byte absolute s;
begin
    try
       s := Senha;
       for i := 1 to Ord(s[0]) do
         c[i] := (356 * (Length(Senha) * i)) Xor c[i];
       Result := s;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulDescriptografa(Senha: String): String;
  var i: Integer;
      s: String[255];
      c: array [0..255] of Byte absolute s;
begin
    try
       s := Senha;
       for i := 1 to Length(s) do
        s[i] := AnsiChar((356 * (Length(Senha) * i)) Xor Ord(c[i]));
       Result := s;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulValidaEMail(const EMailIn: String):Boolean;
const
  CaraEsp: array[1..40] of string[1] =
  ( '!','#','$','%','�','&','*',
  '(',')','+','=','�','�','�','�','�',
  '�','�','�','`','�','�',',',';',':',
  '<','>','~','^','?','/','','|','[',']','{','}',
  '�','�','�');
var
  i,cont   : integer;
  EMail    : ShortString;
begin
    try
      EMail := EMailIn;
      Result := True;
      cont := 0;
      if EMail <> '' then
        if (Pos('@', EMail)<>0) and (Pos('.', EMail)<>0) then    // existe @ .
        begin
          if  (Pos('@', EMail) =1) or
              (Pos('@', EMail) = Length(EMail)) or
              (Pos('.', EMail) =1) or
              (Pos('.', EMail)= Length(EMail))
              or (Pos(' ', EMail)<>0) then
              Result := False
          else
          // @ seguido de . e vice-versa
          if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
            Result := False
          else
          begin
            for i := 1 to 40 do            // se existe Caracter Especial
              if Pos(CaraEsp[i], EMail)<>0 then
                Result := False;
              for i := 1 to length(EMail) do
              begin                                 // se existe apenas 1 @
                if EMail[i] = '@' then
                  cont := cont + 1;                    // . seguidos de .
                if (EMail[i] = '.') and (EMail[i+1] = '.') then
                  Result := false;
              end;
              // . no f, 2ou+ @, . no i, - no i, _ no i
              if (cont >=2) or ( EMail[length(EMail)]= '.' )
                or ( EMail[1]= '.' ) or ( EMail[1]= '_' )
                or ( EMail[1]= '-' )  then
                  Result := false;
              // @ seguido de COM e vice-versa
              if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
                Result := False;
              // @ seguido de - e vice-versa
              if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
                Result := False;
              // @ seguido de _ e vice-versa
              if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
                Result := False;
              end;
        end
        else
          Result := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulGetDateInDateTime(Data : TDateTime) : TDate;
begin
    try
      Result := EncodeDate(YearOf(Data), MonthOf(Data), DayOf(Data));
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulVerifDataComDataAtual(Data : TDateTime) : Boolean;
begin
    try
      Result := False;
      if (Data) > (StrToDate(FormatDateTime('dd/mm/yyyy', Now))) then
      begin
        Result := True
      end
      else
      begin
        Result := False;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function SetiUsefulRemovePontosTracos(Texto : String) : String;
begin
    try
      while pos('-', Texto) <> 0 Do
        delete(Texto,pos('-', Texto),1);

      while pos('.', Texto) <> 0 Do
        delete(Texto,pos('.', Texto),1);

      while pos('/', Texto) <> 0 Do
        delete(Texto,pos('/', Texto),1);

      while pos(',', Texto) <> 0 Do
        delete(Texto,pos(',', Texto),1);

      while pos('_', Texto) <> 0 Do
      delete(Texto,pos('_', Texto),1);

      Result := Texto;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

{ TSetiUseFulRegister }

constructor TSetiUseFulRegister.Create;
begin
//
end;

destructor TSetiUseFulRegister.Destroy;
begin
  //
  inherited;
end;

function TSetiUseFulRegister.GetFileId: string;
begin
    Result := FFileID;
end;

procedure TSetiUseFulRegister.SetFileId(const Value: string);
begin
    FFileID := UpperCase(Value);
end;

end.