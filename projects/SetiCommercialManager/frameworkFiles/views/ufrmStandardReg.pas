{ID: F1; | CODIGO: FS8-F1;}

unit ufrmStandardReg;

interface

uses
  {Delphi native libraries}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, VCLTee.TeCanvas, VCLTee.TeePenDlg,
  Vcl.ImgList, VCLTee.TeeEdiGrad, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, ADODB, Datasnap.Provider,
  Vcl.Menus,
  {Project libraries}
  uSetiFramework, uMess, uLocate, uMasterSearchScreen, uRegions,
  uSetiUseful, uSetiConnects, uSetiConfig, uMasterControl
  ;

type
  TfrmStandardReg = class(TForm)
    Panel1: TPanel;
    imgButtons: TImageList;
    Panel2: TPanel;
    bpSearch: TButtonPen;
    bpClear: TButtonPen;
    bpSave: TButtonPen;
    bpNew: TButtonPen;
    bpEdit: TButtonPen;
    bpDell: TButtonPen;
    Panel3: TPanel;
    ButtonPen7: TButtonPen;
    ButtonPen8: TButtonPen;
    ButtonPen9: TButtonPen;
    bpCancel: TButtonPen;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    imageSearchReg: TImageList;
    ButtonPen2: TButtonPen;
    pmButtons: TPopupMenu;
    ButtonPen10: TButtonPen;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bpNewClick(Sender: TObject);
    procedure bpEditClick(Sender: TObject);
    procedure bpDellClick(Sender: TObject);
    procedure bpSaveClick(Sender: TObject);
    procedure bpCancelClick(Sender: TObject);
    procedure bpClearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bpSearchClick(Sender: TObject);
//------------------------------------------------------------------------------
  private
    { Private declarations }
    //Variables
    FFileID : string;
    FFormNameFS8F1 : string;
    FTableNameFS8F1 : string;
    FKeyFieldFS8F1 : string;
    FTitleFS8F1 : string;
    FTypeFS8F1 : Integer;
    FReturnFieldFS8F1 : string;
    FQueryFS8F1 : string;
    FRegOldFS8F1 : Integer;
    FRegNewFS8F1 : Integer;
    FWarningFS8F1 : Boolean;
    FCriticalFS8F1 : Boolean;
//..............................................................................
    //OPERATIONS
    FStateFS8F1 : string;
    FDoNotScreeningInsert : Boolean;
//..............................................................................
    //Classes
    FSearch : TMasterSearchScreen;
    FLocate : TLocate;
    FRegions : TRegions;
    FMasterControl : TMasterControl;
//..............................................................................
    //GET AND SET
    function GetFileId : string;
    function GetKeyFieldFS8F1 : string;
    function GetTitleFS8F1 : string;
    function GetTypeFS8F1 : Integer;
    function GetReturnFieldFS8F1 : string;
    function GetQueryFS8F1 : string;
    function GetRegOldFS8F1 : Integer;
    function GetRegNewFS8F1 : Integer;
    function GetWarningFS8F1 : Boolean;
    function GetCriticalFS8F1 : Boolean;
//..............................................................................
    procedure SetFileId(Const Value : string);
    procedure SetKeyFieldFS8F1(Const Value : string);
    procedure SetTitleFS8F1(Const Value : string);
    procedure SetTypeFS8F1(Const Value : Integer);
    procedure SetReturnFieldFS8F1(Const Value : string);
    procedure SetQueryFS8F1(Const Value : string);
    procedure SetRegOldFS8F1(Const Value : Integer);
    procedure SetRegNewFS8F1(Const Value : Integer);
    procedure SetWarningFS8F1(Const Value : Boolean);
    procedure SetCriticalFS8F1(Const Value : Boolean);
//..............................................................................
    //PROPERTY
    property qFileId : string read GetFileId write SetFileId;
    property qKeyFieldFS8F1 : string read GetKeyFieldFS8F1 write
      SetKeyFieldFS8F1;
    property qTitleFS8F1 : string read GetTitleFS8F1 write SetTitleFS8F1;
    property qTypeFS8F1 : Integer read GetTypeFS8F1 write SetTypeFS8F1;
    property qReturnFieldFS8F1 : string read GetReturnFieldFS8F1 write
    SetReturnFieldFS8F1;
    property qQueryFS8F1 : string read GetQueryFS8F1 write SetQueryFS8F1;
    property qRegOldFS8F1 : Integer read GetRegOldFS8F1 write SetRegOldFS8F1;
    property qRegNewFS8F1 : Integer read GetRegNewFS8F1 write SetRegNewFS8F1;
    property qWarningFS8F1 : Boolean read GetWarningFS8F1 write SetWarningFS8F1;
    property qCriticalFS8F1 : Boolean read GetCriticalFS8F1 write
      SetCriticalFS8F1;
//..............................................................................
    //FUNCTIONS
    {FS8-F1-pr-fn-1}
    function fnCompToOpValFS8F1(pComp : TComponent) : Boolean;
    {FS8-F1-pr-fn-2}
    function fnDataSetOldNewRecordFS8F1(pComp : TComponent) : Boolean;
    function fnTableAndFieldsExistsFS8F1(pTableOrField:Integer=-1;
    pTableName:StrinG = '';pFieldName:string= '') : Boolean;
    function fnSearchFS8F1 : Boolean;
    function fnCompValidateFS8F1(pName:string;pValue:Variant) : Variant;
    function fnComponentValidateFS8F1(pName:string) : Boolean;
//------------------------------------------------------------------------------
  public
    { Public declarations }
    //GET AND SET
    function GetFormNameFS8F1 : string;
    function GetTableNameFS8F1 : string;
    procedure SetFormNameFS8F1(Const Value : string);
    procedure SetTableNameFS8F1(Const Value : string);
    property qTableNameFS8F1 : string read GetTableNameFS8F1 write
      SetTableNameFS8F1;
//..............................................................................
    //FUNCTIONS
    {FS8-F1-pu-fn-1}
    function fnSetFieldsFS8F1 : Boolean;
    {FS8-F1-pu-fn-2}
    function fnSearchParamFS8F1(pTable:string='';pKey:string='';pTitle:
      string=''; pType:Integer=-1;pReturnField:string='';pQry:string='') :
        Boolean;
    {FS8-F1-pu-fn-3}
    function fnScreenOpFS8F1 : Boolean;
    {FS8-F1-pu-fn-4}
    function fnFillDataSetOpFS8F1 : Boolean;
//..............................................................................
//OPERATIONS
    //GET AND SET
    function GetStateFS8F1 : string;
    procedure SetStateFS8F1(Const Value : string);
    function GetDoNotScreeningInsert : Boolean;
    procedure SetDoNotScreeningInsert(Const Value : Boolean);

    //FUNCTIONS
    {FS8-F1-PU-FN-5}
    function fnInsertFS8F1 : Boolean;
    {FS8-F1-PU-FN-6}
    function fnUpdateFS8F1 : Boolean;
    {FS8-F1-PU-FN-7}
    function fnDeleteFS8F1 : Boolean;
    {FS8-F1-PU-FN-8}
    function fnSaveFS8F1 : Boolean;
    {FS8-F1-PU-FN-9}
    function fnCancelFS8F1 : Boolean;
    {FS8-F1-PU-FN-10}
    function fnSteps_1_FS8F1(pComp: TComponent) : Boolean;
    {FS8-F1-PU-FN-11}
    function fnSteps_2_FS8F1(pComp: TComponent) : Boolean;
    {FS8-F1-PU-FN-12}
    function fnSteps_3_FS8F1(pComp: TComponent) : Boolean;
    {FS8-F1-PU-FN-13}
    function fnSteps_4_FS8F1(pComp: TComponent) : Boolean;
    {FS8-F1-PU-FN-14}
    function fnSetParamsOpFS8F1(pComp: TComponent) : Boolean;

    property qStateFS8F1 : string read GetStateFS8F1 write SetStateFS8F1;
    property qDoNotScreeningInsert : Boolean read GetDoNotScreeningInsert
    write SetDoNotScreeningInsert;
//..............................................................................
    //PROCEDURES

    {FS8-F1-pu-pr-1}
    procedure fnStandardRegControlFS8F1(pState:Integer = 0; ThereIsData:
      Boolean = False);
    {FS8-F1-pu-pr-2}
    procedure prFieldIdDescValueFS8F1(pType:Integer;pTableName:string;pFieldId:
    string;pFieldDesc:string; pCompId:TComponent; pCompDesc:TComponent);
//------------------------------------------------------------------------------
  protected
    { Protected declarations }
    //PROPERTY
    property qFormNameFS8F1 : string read GetFormNameFS8F1 write
      SetFormNameFS8F1;
    property cSearchFS8F1 : TMasterSearchScreen read FSearch write FSearch;
    property cLocateFS8F1 : TLocate read FLocate write FLocate;
    property cRegionsFS8F1 : TRegions read FRegions write FRegions;
    property cMasterControlFS8F1 : TMasterControl read FMasterControl
    write FMasterControl;
    //property rSRFieldInfor : TSRFieldInfor read FSRFieldInfor write
    //FSRFieldInfor;
  end;

var
  frmStandardReg: TfrmStandardReg;
  ThereIsData:Boolean;

const
      fileID = 'FS8_F1';

implementation

{$R *.dfm}

uses ufrmForms, ufrmMasterSearchScreen,
  udmComponentsDao, udmMasterDataModule;

function TfrmStandardReg.fnSearchFS8F1: Boolean;
begin
  //Fun��o para iniciar a pesquisa: Criando a classe, passando os parametros
  //e setando os valores retornados para os respectivos componentes...
  try
   Result := False;
    cSearchFS8F1 := TMasterSearchScreen.Create;
    //Params: TableName,KeyField,Title,Type,ReturnField,Query
    cSearchFS8F1.SelectedSearch(qTableNameFS8F1,qKeyFieldFS8F1,qTitleFS8F1,
      qTypeFS8F1, qReturnFieldFS8F1,qQueryFS8F1);
    Result := fnSetFieldsFS8F1;
  finally
    cSearchFS8F1.Free;
  end;
end;

function TfrmStandardReg.fnSetFieldsFS8F1: Boolean;
{FS8-F1-pu-fn-1}
var
  i : Integer;
  vItemIndex : Integer;
  vItemCheck : Boolean;
begin
  SetFileId('FS8-F1-pu-fn-1');
  //Fun��o para setar os valores da pesquisas aos componentes da tela...
  try
    try
      Result := False;
      if (Assigned(cSearchFS8F1)) then //Classe de pesquisa...
      begin
        //Query de retorno da pesquisa...
        if NOT (cSearchFS8F1.qMasterRetDataSet.IsEmpty) then
        begin
          for I := 0 to ComponentCount -1 do
          begin
            //TEDIT
            if (Components[i] is TEdit) then
            begin
              with (TEdit(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  //� do tipo TEDIT?...
                  if (GetFieldInfo(0,UpperCase(Name)) = 'EDT') then
                  begin
                    //Seta para o componente TEDIT da tela o seu
                    //respectivo valor...
                    Text :=
                      cSearchFS8F1.qMasterRetDataSet.FieldByName(
                        GetFieldInfo(1,UpperCase(Name))).AsString;
                  end;
                end;
              end;
            end;
            if (Components[i] is TDateTimePicker) then
            begin
              with (TDateTimePicker(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  //� do tipo TEDIT?...
                  if (GetFieldInfo(0,UpperCase(Name)) = 'DTP') then
                  begin
                    //Seta para o componente TEDIT da tela o seu
                    //respectivo valor...
                    DateTime :=
                      cSearchFS8F1.qMasterRetDataSet.FieldByName(
                        GetFieldInfo(1,UpperCase(Name))).AsDateTime;

                     {(TDateTimePicker(Components[i]))
                      cSearchFS8F1.qMasterRetDataSet.FieldByName(
                        GetFieldInfo(1,UpperCase(Name))).AsString;    }
                  end;
                end;
              end;
            end;
            //TRADIOGROUP
            if (Components[i] is TRadioGroup) then
            begin
              with (TRadioGroup(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  if (GetFieldInfo(0,UpperCase(Name)) = 'RGR') then
                  begin
                    vItemIndex :=
                      fnCompValidateFS8F1(Name, cSearchFS8F1.qMasterRetDataSet.
                                            FieldByName(
                                              GetFieldInfo(1,
                                                UpperCase(Name))).AsString);
                      ItemIndex := vItemIndex;
                  end
                end;
              end;
            end;
            //TCOMBOBOX
            if (Components[i] is TComboBox) then
            begin
              with (TComboBox(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  if (GetFieldInfo(0,UpperCase(Name)) = 'COB') then
                  begin
                    vItemIndex :=
                      fnCompValidateFS8F1(Name, cSearchFS8F1.qMasterRetDataSet.
                                            FieldByName(
                                              GetFieldInfo(1,
                                                UpperCase(Name))).AsString);
                      ItemIndex := vItemIndex;
                  end
                end;
              end;
            end;
            //TCHECKBOX
            if (Components[i] is TCheckBox) then
            begin
              with (TCheckBox(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  if (GetFieldInfo(0,UpperCase(Name)) = 'CBX') then
                  begin
                    vItemCheck :=
                      fnCompValidateFS8F1(Name, cSearchFS8F1.qMasterRetDataSet.
                                            FieldByName(
                                              GetFieldInfo(1,
                                                UpperCase(Name))).AsString);
                      Checked := vItemCheck;
                  end
                end;
              end;
            end;
            //TMEMO
            if (Components[i] is TMemo) then
            begin
              //TMEMO
              with (TMemo(Components[i])) do
              begin
                //Valida o tipo e o nome do componente...
                if (fnComponentValidateFS8F1(UpperCase(Name))) then
                begin
                  if (GetFieldInfo(0,UpperCase(Name)) = 'MEM') then
                  begin
                    Clear;
                    Lines.Add(cSearchFS8F1.qMasterRetDataSet.FieldByName(
                                GetFieldInfo(1,UpperCase(Name))).AsString);
                  end
                end;
              end;
            end;
          end;
          Result := True;
        end;
      end;
    finally

    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.fnSetParamsOpFS8F1(pComp: TComponent) : Boolean;
{FS8-F1-PU-FN-14}
var
  vCompType : Integer;    //SETAR UM 'ID' PARA CADA TIPO DE COMPONENTE
  vFieldName : string;    //RETORNA O NOME DO FIELD PELO COMPONENTE
  vTypeDb : string;       //RETORNA O TIPO DO CAMPO NO BANCO DE DADOS
  vTypeDb_ : string;      {RETORNA O TIPO DO CAMPO NO BANCO DE DADOS -
                           SIMPLIFICADO > INT;NUM;DOU;DAT;TIM;TMP;STR <}
  vDefault : string;      //EXISTE VALOR DEFAULT : 'S' OU 'N' - STR
  vDefault_ : Boolean;    //EXISTE VALOR DEFAULT : True ou False - Boolean
  vGenValue : string;     //EXISTE GENERATOR : 'S' OU 'N'
  vGenName : string;      //RETORNA O NOME DO GENERATOR
  vValue : Variant;       //RETORNA O VALOR DO CAMPO
  vId : Integer;          //ID PARA A TABELA
  vTableName : string;    //NOME DA TABELA
  vValueStr : string;
  vValueInt : Integer;
  vValueFlo : Double;
  vValueTmp : TDateTime;
  vValueTim : TTime;
  vValueDat : TDate;
begin
    SetFileId('FS8-F1-PU-FN-14');
    Result := False;
    if (pComp is TEdit) then vCompType := 1;
    if (pComp is TCheckBox) then vCompType := 2;
    if (pComp is TComboBox) then vCompType := 3;
    if (pComp is TRadioGroup) then vCompType := 4;
    if (pComp is TMemo) then vCompType := 5;
    if (pComp is TDateTimePicker) then vCompType := 6;
    //SETAR PARAMETROS PARA PREENCHER CDSSCREENING
    try                                        //..............................................................................
//ESTPS_1 -
//..............................................................................
    //SETA O ID PARA A TABELA OLD
    SetRegOldFS8F1(qRegOldFS8F1 + 1);
    //RETORNA O NOME DO FIELD
    if (vCompType = 1) then
    begin
      vFieldName := UpperCase(GetFieldInfo(1,(TEdit(pComp)).Name));
    end else
    if (vCompType = 2) then
    begin
      vFieldName := UpperCase(GetFieldInfo(1,(TCheckBox(pComp)).Name));
    end else
    if (vCompType = 3) then
    begin
      vFieldName := UpperCase(GetFieldInfo(1,(TRadioGroup(pComp)).Name));
    end else
    if (vCompType = 4) then
    begin
      vFieldName := UpperCase(GetFieldInfo(1,(TComboBox(pComp)).Name));
    end else
    if (vCompType = 5) then
    begin
      vFieldName := UpperCase(GetFieldInfo(1,(TMemo(pComp)).Name));
    end;

    //DB - TIPO DO CAMPO
    vTypeDb := fnTableInforFS1F8(qTableNameFS8F1,vFieldName,2);
    //DB - TIPO DO CAMPO SIMPLIFICADO
    vTypeDb_ := SConfigGetReduceFieldType(vTypeDb);

    //DEFAULT
    vDefault := fnTableInforFS1F8(qTableNameFS8F1,vFieldName,7);
    //VALOR DEFAULT VALIDADO?
    vDefault_ := (vDefault = 'S');

    //GENERATOR
    vGenValue := '';
    vGenName := fnFieldHasGeneratorFS1F8( qTableNameFS8F1,vFieldName);
    if (vGenName <> '') then
      vGenValue := 'S' else vGenValue := 'N';

    //TEDIT
    if (vCompType in [1,4,5]) then
    begin
      if (vTypeDb_ = 'STR') then
        vValue := TEdit(pComp).Text else
      if (vTypeDb_ = 'NUM') or (vTypeDb_ = 'DOU') then
        vValue := StrToFloatDef(TEdit(pComp).Text,-1) else
      if (vTypeDb_ = 'INT') then
        if (vGenName <> 'S') then
          vValue := StrToIntDef(TEdit(pComp).Text,-1) else
      if (vTypeDb_ = 'DAT') then
        vValue := StrToDate(TEdit(pComp).Text) else
      if (vTypeDb_ = 'TIM') then
        vValue := StrToTime(TEdit(pComp).Text) else
      if (vTypeDb_ = 'TMP') then
        vValue := StrToDateTime(TEdit(pComp).Text);
    end;
    //TCHECKBOX
    if (vCompType in [2]) then
    begin
      vValue := fnGetCheckBoxValue( TCheckBox(pComp),
                                    qTableNameFS8F1,
                                    vFieldName);
    end;
    //TRADIOGROUP
    if (vCompType in [3]) then
    begin
      vValue := fnGetRadioGroupValue( TRadioGroup(pComp),
                                      qTableNameFS8F1,
                                      vFieldName);
    end;
    vId         := qRegOldFS8F1;
    vTableName  := qTableNameFS8F1;
    if (vTypeDb_ = 'STR') then
      vValueStr := vValue;
    if (vTypeDb_ = 'INT') then
      vValueInt := vValue;
    if (vTypeDb_ = 'DOU') then
      vValueFlo := vValue;
    if (vTypeDb_ = 'TMP') then
      vValueTmp := vValue;
    if (vTypeDb_ = 'TIM') then
      vValueTim := vValue;
    if (vTypeDb_ = 'DAT') then
      vValueDat := vValue;

    cMasterControlFS8F1.SetIdFS3F1(vId);
    cMasterControlFS8F1.SetTableNameFS3F1(vTableName);
    cMasterControlFS8F1.SetFieldNameFS3F1(vFieldName);
    cMasterControlFS8F1.SetValueStrFS3F1(vValueStr);
    cMasterControlFS8F1.SetValueIntFS3F1(vValueInt);
    cMasterControlFS8F1.SetValueFloFS3F1(vValueFlo);
    cMasterControlFS8F1.SetValueTmpFS3F1(vValueTmp);
    cMasterControlFS8F1.SetValueTimFS3F1(vValueTim);
    cMasterControlFS8F1.SetValueDatFS3F1(vValueDat);
    cMasterControlFS8F1.SetGenFS3F1(vGenValue);
    cMasterControlFS8F1.SetGenNameFS3F1(vGenName);
    cMasterControlFS8F1.SetDefaultFS3F1(vDefault);

    Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

procedure TfrmStandardReg.SetFormNameFS8F1(const Value: String);
begin
    FFormNameFS8F1 := UpperCase(Value);
end;

function TfrmStandardReg.fnSaveFS8F1: Boolean;
{FS8-F1-PU-FN-8}
var
  i :Integer;
begin
    SetFileId('FS8-F1-PU-FN-8');
    Result := False;
    try
      cMasterControlFS8F1 := TMasterControl.Create;
      try
        {OBJETIVO: GRAVAR REGISTROS DE INSERT, UPDATE E DELETE, VERIFICAR
        VARIAVEL STATE}
        if (qStateFS8F1 <> '') then
        begin
          //FOI INFORMADO O NOME DA TABELA?
          if (qTableNameFS8F1 = '') then
          begin
            Exit;
          end;
          //A TABELA EXISTE NO BANCO DE DADOS?
          if not (fnTableAndFieldsExistsFS8F1(0,qTableNameFS8F1)) then
          begin
            Exit;
          end;

          for i := 0 to ComponentCount -1 do
          begin
            //ZERA CHECAGEM DE ERROS N�O CRITICOS
            SetDoNotScreeningInsert(False);
            //ZERA CHECAGEM DE ERROS CRITICOS
            SetCriticalFS8F1(False);
            //VALIDA��O DO COMPONENTE
            if (fnSteps_1_FS8F1(Components[i]) = False) then //VALIDA��O
            begin
              //ERRO CRITICO - COMPONENTE N�O VALIDADO - CANCELA OPERA��O
              Break;
              Exit;
            end else
            //SE FOI VALIDADO, PROSSIGA COM O INSERT, CASO O CONTR�RIO, PROXIMO
            if (qDoNotScreeningInsert = False) then
            begin
              if (qCriticalFS8F1) then
              begin
                Break;
                Exit;
              end;
              //INSERIR DATASET TRIAGEM
              if (fnSteps_2_FS8F1(Components[i]) = False) then //CDS SCREENING
              begin
                //ERRO CRITICO - COMPONENTE N�O VALIDADO - CANCELA OPERA��O
                Break;
                Exit;
              end;// else
              {//EXECUTAR
              if (fnSteps_3_FS8F1(Components[i]) = False) then
              begin
                Break;
                Exit;
              end;}
            end else
            begin
              //ERRO CRITICO - COMPONENTE N�O VALIDADO - CANCELA OPERA��O
              Break;
              Exit;
            end;
          end;
          if (qStateFS8F1 = 'INSERT') then
          begin
            {PREENCHER DATASET NA CONTROL}

          Result := True;
          end else
          if (qStateFS8F1 = 'UPDATE') then
          begin
            {PREENCHER DATASET NA CONTROL}

          Result := True;
          end else
          if (qStateFS8F1 = 'DELETE') then
          begin
            {INFORMAR NA CONTROL, O CAMPO CHAVE PARA DELETE}

          Result := True;
          end;
        end;
      finally
        cMasterControlFS8F1.Free;
      end;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnScreenOpFS8F1 : Boolean;
{pu-fn-3}
begin

  {
    1� ETAPA PARA INSER��O, ATUALIZA��O E EXCLUS�O...

    - CRIA��O CLASSE TMASTERCONTROL;
    - VALIDA��O DA TABELA;
    - CHAMADA PARA O METODO QUE AVALIA E INSERE NOS DATASET OLD E NEW;
    - CHAMADA PARA O METODO GATILHO PARA SALVAR E CANCELAR OPERA��ES NOS
      REGISTROS;
    - DESTROI CLASSE TMASTERCONTROL AO FINAL DE TODO PROCEDIMENTO;
  }

  Result := False;
  SetFileId('FS8-F1-pu-fn-3');
  SetWarningFS8F1(False);
  SetCriticalFS8F1(False);
  try
    cMasterControlFS8F1 := TMasterControl.Create;
    //pType: 1:INSERT; 2:UPDATE; 3:DELETE; 4:CANCEL; 5:SAVE
    try
      //O NOME DA TABELA FOI INFORMADA?
      if (qTableNameFS8F1 = '') then
      begin
        SetCriticalFS8F1(True);
        Exit;
      end;
      //OS TIPOS INFORMADOS EST�O DE ACORDO?
      if NOT (qTypeFS8F1 in [0,1,2,3,4,5]) then
      begin
        SetCriticalFS8F1(True);
        Exit;
      end;
      //A TABELA EXISTE NO BANCO DE DADOS?
      if not (fnTableAndFieldsExistsFS8F1(0,qTableNameFS8F1)) then
      begin
        SetCriticalFS8F1(True);
        Exit;
      end;
      //OCORREU ALGUM ERRO CRITICO?
      if NOT (qCriticalFS8F1) then
      begin
        //A FORMA DE EXECU��O � VIA QUERY? OBS: N�O UTILIZADA AINDA...
        if (qQueryFS8F1 = '') then
        begin

          //SE OS DATASET'S FOREM PREENCHIDOS, PROSSIGA...
          if (fnFillDataSetOpFS8F1) then
          begin
            //SALVAR E CANCELAR - Se opera��o for diferente de 2 - Update new
            if (qTypeFS8F1 <> 2) then
              cMasterControlFS8F1.fnOpFormFS3F1(qTableNameFS8F1,qTypeFS8F1);


          end else
          begin
            Exit;
          end;
        end;
      end else
      Exit;
    finally
      if (Result = False) then
        cMasterControlFS8F1.Free
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.fnSearchParamFS8F1(pTable, pKey, pTitle: string;
  pType: Integer; pReturnField, pQry: string): Boolean;
{pu-fn-2}
begin
  SetFileId('FS8-F1-pu-fn-2');
  Result := False;
  //Fun��o para setar os parametros de pesquisa...
  try
    if not (fnTableAndFieldsExistsFS8F1(0,pTable)) then
      Exit;
    if not (fnTableAndFieldsExistsFS8F1(1,pTable,pKey)) then
      Exit;
    SetTableNameFS8F1(pTable);
    SetKeyFieldFS8F1(pKey);
    SetTitleFS8F1(pTitle);
    SetTypeFS8F1(pType);
    if (pReturnField <> '') then
      if not (fnTableAndFieldsExistsFS8F1(1,pTable,pReturnField)) then
        Exit;
    SetReturnFieldFS8F1(pReturnField);
    SetQueryFS8F1(pQry);
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

procedure TfrmStandardReg.SetCriticalFS8F1(const Value: Boolean);
begin
    FCriticalFS8F1 := Value;
end;

procedure TfrmStandardReg.SetDoNotScreeningInsert(const Value: Boolean);
begin
    FDoNotScreeningInsert := Value;
end;

procedure TfrmStandardReg.SetFileId(const Value: string);
begin
    FFileID := UpperCase(Value);
end;

procedure TfrmStandardReg.SetRegNewFS8F1(const Value: Integer);
begin
    FRegNewFS8F1 := Value;
end;

procedure TfrmStandardReg.SetRegOldFS8F1(const Value: Integer);
begin
    FRegOldFS8F1 := Value;
end;

procedure TfrmStandardReg.SetKeyFieldFS8F1(const Value: string);
begin
    FKeyFieldFS8F1 := Value;
end;

procedure TfrmStandardReg.SetQueryFS8F1(const Value: string);
begin
    FQueryFS8F1 := Value;
end;

procedure TfrmStandardReg.SetReturnFieldFS8F1(const Value: string);
begin
    FReturnFieldFS8F1 := Value;
end;

procedure TfrmStandardReg.SetStateFS8F1(const Value: string);
begin
    FStateFS8F1 := Value;
end;

procedure TfrmStandardReg.SetTableNameFS8F1(const Value: string);
begin
    FTableNameFS8F1 := Value;
end;

procedure TfrmStandardReg.SetTitleFS8F1(const Value: String);
begin
    FTitleFS8F1 := Value;
end;

procedure TfrmStandardReg.SetTypeFS8F1(const Value: Integer);
begin
    FTypeFS8F1 := Value;
end;

procedure TfrmStandardReg.SetWarningFS8F1(const Value: Boolean);
begin
    FWarningFS8F1 := Value;
end;

function TfrmStandardReg.fnUpdateFS8F1: Boolean;
{FS8-F1-pu-fn-6}
begin
    SetFileId('FS8-F1-PU-FN-6');
    Result := False;
    try
      {OBJETIVO: APENAS LIBERAR OS CAMPOS PARA ATUALIZA��O,
      SETAR VARIAVEL STATE PARA UPDATE}
      SetStateFS8F1('UPDATE');
      Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

procedure TfrmStandardReg.fnStandardRegControlFS8F1(pState: Integer;ThereIsData:
Boolean);
{FS8-F1-pu-pr-1}
var
  i : Integer;
  vGen : Boolean;
  vFieldName, vFieldEx : string;
  vDmC : Boolean;
  vStateDescForDb : string;
  vEnableAllDb : Boolean;
  vEnableDb : string;
  vCompName : string;
begin
  SetFileId('FS8-F1-pu-pr-1');
  vGen := False;
//Procedimento para controlar o estado dos compoentes...
{
      State = 0 : INITIAL;
      State = 1 : SEARCH;
      State = 2 : INSERTION;
      State = 3 : EDITION;
      State = 4 : EXCLUSION; NO USE
      State = 5 : SAVING;
      State = 6 : CANCELING;
      State = 7 : CLEANING UP;

      TAGS = 99 : DO NOT USE;

      TButtonPen TAGS:
        0 : OTHERS BUTTON;
        1 : SEARCH BUTTON;
        2 : INSERT BUTTON;
        3 : EDIT BUTTON;
        4 : DELETE BUTTON;
        5 : SAVE BUTTON;
        6 : CANCEL BUTTON;
        7 : CLEAR BUTTON;
}
    try
      if (pState in [0]) then vStateDescForDb := 'ENABLEINITIALSTATE_';
      if (pState in [1]) then vStateDescForDb := 'ENABLESEARCHSTATE_';
      if (pState in [2]) then vStateDescForDb := 'ENABLEINSERTSTATE_';
      if (pState in [3]) then vStateDescForDb := 'ENABLEUPDATESTATE_';
      if (pState in [4]) then vStateDescForDb := 'ENABLEDELETESTATE_';
      if (pState in [5]) then vStateDescForDb := 'ENABLEINITIALSTATE_';
      if (pState in [6]) then vStateDescForDb := 'ENABLEINITIALSTATE_';
      if (pState in [7]) then vStateDescForDb := 'ENABLEINITIALSTATE_';

      if (pState in [0]) then vStateDescForDb := 'VISIBLEINITIALSTATE_';
      if (pState in [1]) then vStateDescForDb := 'VISIBLESEARCHSTATE_';
      if (pState in [2]) then vStateDescForDb := 'VISIBLEINSERTSTATE_';
      if (pState in [3]) then vStateDescForDb := 'VISIBLEUPDATESTATE_';
      if (pState in [4]) then vStateDescForDb := 'VISIBLEDELETESTATE_';
      if (pState in [5]) then vStateDescForDb := 'VISIBLEINITIALSTATE_';
      if (pState in [6]) then vStateDescForDb := 'VISIBLEINITIALSTATE_';
      if (pState in [7]) then vStateDescForDb := 'VISIBLEINITIALSTATE_';

      for I := 0 to ComponentCount -1 do
      begin
        ShowHint := True;
        if (Components[i] is TEdit) then
        begin
          with (TEdit(Components[i])) do
          begin         
              try
              //>> VALIDA��O DO GENERATOR <<
              //VERIFICAR SE � INSERT OU UPDATE
              if (pState in [2,3]) then
              begin
                //VERIFICAR SE O NOME DA TABELA J� FOI INFORMADO
                if (qTableNameFS8F1 <> '') then
                begin
                  vDmC := False;
                  //PEGAR O NOME DO CAMPO E VALIDAR
                  vFieldName := UpperCase(GetFieldInfo(1,Name));
                  vFieldEx := fnTableInforFS1F8(qTableNameFS8F1,vFieldName,1);
                  //VERIFICAR SE � GENERATOR
                  if (vFieldEx <> '') then
                  begin
                    vGen := (fnFieldHasGeneratorFS1F8(qTableNameFS8F1,
                                                      vFieldName) <> '');
                  end;
                end;
              end else
                vGen := False;                
              finally

              end;
              //Color
              if (pState = 0) and (Tag <> SConfigNoTag) then
                Color := clWindow;
              if (pState = 1) and (ThereIsData) and (Tag <> SConfigNoTag) then
                Color := clInfoBk;
              if (pState = 2) and (Tag <> SConfigNoTag) then
              begin
                if vGen then
                  Color := clInfoBk else
                Color := clWindow;
              end;
              if (pState = 3) and (Tag <> SConfigNoTag) then
              begin
                if vGen then
                  Color := clInfoBk else
                Color := clWindow;
              end;
              //Clear
              if (pState = 0) and (Tag <> SConfigNoTag) then
                Clear;
              if (pState = 1) and (NOT ThereIsData) and (Tag <>
                SConfigNoTag) then
                  Clear;
              if (pState = 2) and (Tag <> SConfigNoTag) then
                Clear;
              if (pState = 6) and (Tag <> SConfigNoTag) then
                Clear;
              if (pState = 7) and (Tag <> SConfigNoTag) then
                Clear;
              //Enabled
              if (pState = 0) and (Tag <> SConfigNoTag) then
                Enabled := True;
              if (pState = 1) and (ThereIsData) and (Tag <> SConfigNoTag) then
                Enabled := False;
              if (pState = 2) and (Tag <> SConfigNoTag) then
              begin
                if vGen then
                  Enabled := False else
                Enabled := True;
              end;                                
              if (pState = 3) and (Tag <> SConfigNoTag) then
              begin
                if vGen then
                  Enabled := False else
                Enabled := True;
              end; 
          end;
        end;
        if (Components[i] is TCheckBox) then
        begin
          with (TCheckBox(Components[i])) do
          begin
            //INITIAL;INSERT;CLEAR
            if (pState in [0,2,7]) and (Tag <> SConfigNoTag) then
            begin
              Checked := False;
              Enabled := True;
            end;
            //SEARCH
            if ((pState in [1]) and  (Tag <> SConfigNoTag)) then
            begin
              if (NOT ThereIsData) then
                Checked := False;
              Enabled := False;
            end;
            if ((pState in [3]) and  (Tag <> SConfigNoTag)) then
            begin
              Enabled := True;
            end;
          end;
        end;
        if (Components[i] is TRadioGroup) then
        begin
          with (TRadioGroup(Components[i])) do
          begin
            //INITIAL;INSERT;CLEAR
            if (pState in [0,2,7]) and (Tag <> SConfigNoTag) then
            begin
              ItemIndex := 0;
              Enabled := True;
            end;
            if (pState in [1] ) and (Tag <> SConfigNoTag) then
            begin
              if (NOT ThereIsData) then
                ItemIndex := 0;
              Enabled := False;
            end;
            if ((pState in [3]) and  (Tag <> SConfigNoTag)) then
            begin
              Enabled := True;
            end;
          end;
        end;
        if (Components[i] is TPageControl) then
        begin
          with (TPageControl(Components[i])) do
          begin
            //Active
            if (Tag <> SConfigNoTag) then
              ActivePageIndex := 0;
          end;
        end;
        if (Components[i] is TComboBox) then
        begin
          with (TComboBox(Components[i])) do
          begin
            //Clear
            if ((pState in [0,1,7]) and (Tag <> SConfigNoTag)) then
            begin
              if (NOT ThereIsData) then
                Clear;
              Color := clWindow;
            end;
            if (pState in [1] ) and (Tag <> SConfigNoTag) then
            begin
              if (NOT ThereIsData) then
                ItemIndex := 0;
              Enabled := False;
              Color := clInfoBk;
            end;
            if ((pState in [3]) and  (Tag <> SConfigNoTag)) then
            begin
              Enabled := True;
              Color := clWindow;
            end;
          end;
        end;
        //TDATETIMEPICKER
        if (Components[i] is TDateTimePicker) then
        begin
          with (TDateTimePicker(Components[i])) do
          begin
            if (Tag <> SConfigNoTag) then
            begin
              {
                State = 0 : INITIAL;
                State = 1 : SEARCH;
                State = 2 : INSERTION;
                State = 3 : EDITION;
                State = 4 : EXCLUSION; NO USE
                State = 5 : SAVING;
                State = 6 : CANCELING;
                State = 7 : CLEANING UP;
              }
              vCompName := Name;
              if (qFormNameFS8F1 <> '') then
              begin
                vEnableAllDb := (fnComponentInforFS8F1( qFormNameFS8F1,
                                                        vCompName,
                                                       'ENABLEALLSTATES_'
                                                      ) = 'S');
                if (pState in [0,2,6,7]) then
                  DateTime := Now;
                if (vEnableAllDb) then
                  Enabled := True else
                begin
                    vEnableDb := fnComponentInforFS8F1( qFormNameFS8F1,
                                                        vCompName,
                                                        vStateDescForDb);
                  Enabled := (vEnableDb = 'S');
                end;
              end else
                Enabled := True;
            end;
          end;
        end;
        if (Components[i] is TMemo) then
        begin
          with (TMemo(Components[i])) do
          begin
              if (Tag <> SConfigNoTag) then
              begin
                if ((pState in [0,7]) and (Tag <> SConfigNoTag)) then
                begin
                  Clear;
                  Enabled := True;
                  Color := clWindow;
                end;
                if (pState in [1] ) and (Tag <> SConfigNoTag) then
                begin
                  if (NOT ThereIsData) then
                    Clear;
                  Enabled := False;
                  Color := clInfoBk;
                end;
                if (pState in [2] ) and (Tag <> SConfigNoTag) then
                begin
                  Clear;
                  Enabled := True;
                  Color := clWindow;
                end;
                if ((pState in [3]) and  (Tag <> SConfigNoTag)) then
                begin
                  Enabled := True;
                  Color := clWindow;
                end;
              end;
          end;
        end;
        if (Components[i] is TButtonPen) then
        begin
          with (TButtonPen(Components[i])) do
          begin
            if ((pState in [0,1]) and (Tag = 0)) then
              Enabled := False else
            if ((pState in [2,3]) and (Tag = 0)) then
              Enabled := True;
            //State = 0 : INITIAL;
            // BUTTON IS SEARCH
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 1) and (Tag <> SConfigNoTag) then
              Enabled := True;
            // BUTTON IS INSERT
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 2) and (Tag <> SConfigNoTag) then
              Enabled := True;
            // BUTTON IS EDIT
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 3) and (Tag <> SConfigNoTag) then
              Enabled := False;
            // BUTTON IS DELETE
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 4) and (Tag <> SConfigNoTag) then
              Enabled := False;
            // BUTTON IS SAVE
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 5) and (Tag <> SConfigNoTag) then
              Enabled := False;
            // BUTTON IS CANCEL
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 6) and (Tag <> SConfigNoTag) then
              Enabled := False;
            // BUTTON IS CLEAR
            if ((pState = 0) or (pState = 4) or (pState = 5) or (pState = 6) or
               (pState = 7)) and (Tag = 7) and (Tag <> SConfigNoTag) then
              Enabled := True;

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

            //State = 1 : SEARCH;
            if ((pState = 0) and (Tag = 0)) then
              Enabled := False;
            // BUTTON IS SEARCH
            if (pState = 1) and (Tag = 1) and (Tag <> SConfigNoTag) then
              if (ThereIsData) then
                Enabled := False;
            // BUTTON IS NEW
            if (pState = 1) and (Tag = 2) and (Tag <> SConfigNoTag) then
                Enabled := True;
            // BUTTON IS EDIT
            if (pState = 1) and (Tag = 3) and (Tag <> SConfigNoTag) then
              if (ThereIsData) then
                  Enabled := True
              else
                  Enabled := False;
            // BUTTON IS DELETE
            if (pState = 1) and (Tag = 4) and (Tag <> SConfigNoTag) then
              if (ThereIsData) then
                  Enabled := True
              else
                  Enabled := False;
            // BUTTON IS SAVE
            if (pState = 1) and (Tag = 5) and (Tag <> SConfigNoTag) then
                Enabled := False;
            // EARCH BUTTON IS CANCEL
            if (pState = 1) and (Tag = 6) and (Tag <> SConfigNoTag) then
                if (ThereIsData) then
                  Enabled := True
                else
                  Enabled := False;
            // BUTTON IS CLEAR
            if (pState = 1) and (Tag = 7) and (Tag <> SConfigNoTag) then
                Enabled := True;

            //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
            // BUTTON IS SEARCH
            if ((pState = 2) or (pState = 3))
                and (Tag = 1) and (Tag <> SConfigNoTag) then
                Enabled := False;
            // BUTTON IS NEW
            if ((pState = 2) or (pState = 3))
                and (Tag = 2) and (Tag <> SConfigNoTag) then
                Enabled := False;
            // BUTTON IS EDIT
            if ((pState = 2) or (pState = 3))
                and (Tag = 3) and (Tag <> SConfigNoTag) then
                Enabled := False;
            // BUTTON IS DELETE
            if ((pState = 2) or (pState = 3))
                and (Tag = 4) and (Tag <> SConfigNoTag) then
                Enabled := False;
            // BUTTON IS SAVE
            if ((pState = 2) or (pState = 3))
                and (Tag = 5) and (Tag <> SConfigNoTag) then
                Enabled := True;
            // BUTTON IS CANCEL
            if ((pState = 2) or (pState = 3))
                and (Tag = 6) and (Tag <> SConfigNoTag) then
                Enabled := True;
            // BUTTON IS CLEAR
            if ((pState = 2) or (pState = 3)) and (Tag = 7)
              and (Tag <> SConfigNoTag) then
                Enabled := True;
          end;
        end;
        if (Components[i] is TSpeedButton) then
        begin
          with (TSpeedButton(Components[i])) do
          begin
            if (Tag = 0) and (ThereIsData) and (Tag <> SConfigNoTag) then
              Enabled := True
            else
            begin
              if (Name <> 'sbFormConf') and (Tag <> SConfigNoTag) then
                Enabled := False;
            end;
          end;
        end;
      end;
    except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnSteps_1_FS8F1(pComp: TComponent): Boolean;
{FS8-F1-PU-FN-10}
var
  vFieldTag : integer;    //RETORNA A TAG DO FIELD
  vCompType : Integer;    //SETAR UM 'ID' PARA CADA TIPO DE COMPONENTE
  vCompName : string;     //RETORNA O NOME DO COMPONENTE
  //vFieldName : string;    //RETORNA O NOME DO FIELD PELO COMPONENTE
  vFieldType : string;    //RETORNA O TIPO DO COMPONENTE
  vValSteps_1,vValSteps_2,vValSteps_3:Boolean;//VALIDAR AS STEPS DA ROTINA


begin
    SetFileId('FS8-F1-PU-FN-10');
    Result := False;
    vValSteps_1 := False;
    vValSteps_2 := False;
    vValSteps_3 := False;
    try
      {VALIDA��O DO COMPONENTE}
//..............................................................................
//ESTPS_1 - N�O CRITICO
//..............................................................................
      if (pComp is TEdit) then
      begin
        vFieldTag := (TEdit(pComp).Tag);
        vCompType := 1;
        vValSteps_1 := True;
      end else
//..............................................................................
      if (pComp is TCheckBox) then
      begin
        vFieldTag := (TCheckBox(pComp).Tag);
        vCompType := 2;
        vValSteps_1 := True;
      end else
//..............................................................................
      if (pComp is TRadioGroup) then
      begin
        vFieldTag := (TRadioGroup(pComp).Tag);
        vCompType := 3;
        vValSteps_1 := True;
      end else
//..............................................................................
      if (pComp is TComboBox) then
      begin
        vFieldTag := (TComboBox(pComp).Tag);
        vCompType := 4;
        vValSteps_1 := True;
      end else
//..............................................................................
      if (pComp is TMemo) then
      begin
        vFieldTag := (TMemo(pComp).Tag);
        vCompType := 5;
        vValSteps_1 := True;
      end;
//..............................................................................
      if (pComp is TDateTimePicker) then
      begin
        vFieldTag := (TDateTimePicker(pComp).Tag);
        vCompType := 6;
        vValSteps_1 := True;
      end;
//..............................................................................
      //SE O COMPONENTE N�O ESTIVER CITADO ACIMA, PASSE PARA O PROXIMO.
      if (vValSteps_1 = False) then
      begin
        SetDoNotScreeningInsert(True);
        Result := True;
        Exit;
      end;
      //SE A TAG DO COMPONENT FOR IGUAL A 99, PASSE PARA O PROXIMO.
      if (vFieldTag = 99) then
      begin
        SetDoNotScreeningInsert(True);
        Result := True;
        Exit;
      end;
{
//..............................................................................
//ESTPS_2 - CRITICO
//..............................................................................
      vCompName := (TEdit(pComp)).Name;
      vFieldName := UpperCase(GetFieldInfo(1,(vCompName)));
      vValSteps_2 := (fnTableInforFS1F8(qTableNameFS8F1, vFieldName, 1) <> '');
      //SE ESTA STEPS FOR FALSE - ERRO CRITICO - CANCELA A OPERA��O
      if (vValSteps_2 = False) then
      begin
        Result := False;
        Exit;
      end;
}
//..............................................................................
//ESTPS_3
//..............................................................................
      //TEDIT
      if (vCompType = 1) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TEdit(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'EDT');
      end else
//..............................................................................
      //TCHECKBOX
      if (vCompType = 2) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TCheckBox(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'CBX');
      end else
//..............................................................................
      //TRADIOGROUP
      if (vCompType = 3) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TRadioGroup(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'RGR');
      end else
//..............................................................................
      //TCOMBOBOX
      if (vCompType = 4) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TComboBox(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'CBO');
      end else
//..............................................................................
      //TMEMO
      if (vCompType = 5) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TMemo(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'MEM');
      end else
//..............................................................................
      //TDATETIMEPICKER
      if (vCompType = 6) then
      begin
        //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
        vFieldType := UpperCase(GetFieldInfo(0,(TDateTimePicker(pComp)).Name));
        //N�O CORRESPONDENTE AO SELECIONADO?
        vValSteps_3 := (vFieldType <> 'DTP');
      end;
//..............................................................................
      //SE ESTA STEPS FOR FALSE - ERRO CRITICO - CANCELA A OPERA��O
      if (vValSteps_3 = False) then
      begin
        SetCriticalFS8F1(True);
        Result := False;
        Exit;
      end;
      //SE CHEGOU AT� AQUI, O COMPONENTE ESTA VALIDADO...
      Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnSteps_2_FS8F1(pComp: TComponent): Boolean;
{FS8-F1-PU-FN-11}
var
  vCompName : string;     //RETORNA O NOME DO COMPONENTE
  vFieldName : string;    //RETORNA O NOME DO FIELD PELO COMPONENTE
  vRequiredField : string;    //RETORNAR SE O CAMPO � OBRIGATORIO
  vGenField : Boolean;  //O CAMPO POSSUI UM GENERATOR?
  vDefaultField : Boolean; //O CAMPO POSSUI VALOR DEFAULT?
  vValSteps_1,vValSteps_2,vValSteps_3:Boolean;//VALIDAR AS STEPS DA ROTINA
  vCompType : Integer;    //SETAR UM 'ID' PARA CADA TIPO DE COMPONENTE
  vCaption : string;  //RETORNA O CAPTION DO COMPONENTE
begin

    //INSERIR DATASET TRIAGEM

    SetFileId('FS8-F1-PU-FN-11');
    Result := False;
    if (pComp is TEdit) then vCompType := 1;
    if (pComp is TCheckBox) then vCompType := 2;
    if (pComp is TComboBox) then vCompType := 3;
    if (pComp is TRadioGroup) then vCompType := 4;
    if (pComp is TMemo) then vCompType := 5;
    if (pComp is TDateTimePicker) then vCompType := 6;
    try
//..............................................................................
//ESTPS_1 - CRITICO
//..............................................................................
      vCompName := (TEdit(pComp)).Name;
      vFieldName := UpperCase(GetFieldInfo(1,(vCompName)));
      vValSteps_2 := (fnTableInforFS1F8(qTableNameFS8F1, vFieldName, 1) <> '');
      //SE ESTA STEPS FOR FALSE - ERRO CRITICO - CANCELA A OPERA��O
      if (vValSteps_2 = False) then
      begin
        SetCriticalFS8F1(True);
        Result := False;
        Exit;
      end;
//..............................................................................
//ESTPS_2 - VALIDA ALGUMAS INFORMA��ES DO FIELD - CRITICO
//..............................................................................
      vRequiredField := '';
      vGenField := False;
      //O CAMPO � OBRIGAT�RIO?
      vRequiredField := fnTableInforFS1F8(qTableNameFS8F1,vFieldName,5);
      //O CAMPO TEM VALOR DEFAULT?
      vDefaultField := (fnTableInforFS1F8(qTableNameFS8F1,vFieldName,7) = 'S');
      //O CAMPO TEM GENERATOR?
      vGenField := (fnFieldHasGeneratorFS1F8(qTableNameFS8F1,vFieldName) <> '');

      //TEDIT
      if (vCompType = 1) then
      begin
        //SE FOR OBRIGAT�RIO E N�O ESTIVER INFORMADO O VALOR...
        if (vRequiredField = 'S') and (TEdit(pComp).Text = '') then
        begin
          //SE N�O FOR GENERATOR
          if (vGenField = False) and (vDefaultField = False) then
          begin
            SetiMens(2,Mess22+vCaption);
            SetCriticalFS8F1(True);
            Exit;
          end
        end;
      end else
      //TCHECKBOX
      if (vCompType = 2) then
      begin
        //SE FOR OBRIGAT�RIO E N�O ESTIVER CHECADO...
        if (vRequiredField = 'S') and (TCheckBox(pComp).Checked = False) then
        begin
          //SE N�O TIVER VALOR DEFAULT
          if (vDefaultField = False) then
          begin
            SetiMens(2,Mess24+vCaption);
            SetCriticalFS8F1(True);
            Exit;
          end;
        end;
      end else
      //TRADIOGROUP
      if (vCompType = 3) then
      begin
        if (vRequiredField = 'S') and (TRadioGroup(pComp).ItemIndex = -1) then
        begin
          //SE N�O TIVER VALOR DEFAULT
          if (vDefaultField = False) then
          begin
            SetiMens(2,Mess25+vCaption);
            SetCriticalFS8F1(True);
            Exit;
          end;
        end;
      end else
      //TCOMBOBOX
      if (vCompType = 4) then
      begin
        if (vRequiredField = 'S') and (TComboBox(pComp).Text = '') then
        begin
          //SE N�O TIVER VALOR DEFAULT
          if (vDefaultField = False) then
          begin
            SetiMens(2,Mess25+vCaption);
            SetCriticalFS8F1(True);
            Exit;
          end;
        end;
      end else
      //TMEMO
      if (vCompType = 5) then
      begin
        if (vRequiredField = 'S') and (TMemo(pComp).Text = '') then
        begin
          //SE N�O TIVER VALOR DEFAULT
          if (vDefaultField = False) then
          begin
            SetiMens(2,Mess25+vCaption);
            SetCriticalFS8F1(True);
            Exit;
          end;
        end;
      end;
//..............................................................................
//ESTPS_3 - SETANDO OS PARAMETROS
//..............................................................................
      Result := fnSetParamsOpFS8F1(pComp);

      {PAREI AQUI, JA ESTOU PREENCHENDO TODOS OS PARAMETROS NA FUNCAO ACIMA
      PARA O CONTROL, AGORA � CRIAR UM METODO NA CONTROL, PARA SETAR OS
      VALORES NA DAO, PARA PREENCHER O SCREENING... DEUS TE ABEN�OE, VAI
      DAR TUDO CERTO...}

    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnSteps_3_FS8F1(pComp: TComponent): Boolean;
{FS8-F1-PU-FN-12}
begin
    SetFileId('FS8-F1-PU-FN-12');
    Result := False;

    try
      Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnSteps_4_FS8F1(pComp: TComponent): Boolean;
{FS8-F1-PU-FN-13}
begin
    SetFileId('FS8-F1-PU-FN-13');
    Result := False;

    try
      Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

procedure TfrmStandardReg.bpCancelClick(Sender: TObject);
begin
  fnStandardRegControlFS8F1;
end;

procedure TfrmStandardReg.bpClearClick(Sender: TObject);
begin
 fnStandardRegControlFS8F1(7);
end;

procedure TfrmStandardReg.bpSaveClick(Sender: TObject);
begin
  //SE FOR UPDATE = 0 - OLD
  if (qTypeFS8F1 in [0]) then
      SetTypeFS8F1(2);
  if (fnScreenOpFS8F1) then
    fnStandardRegControlFS8F1;
end;

procedure TfrmStandardReg.bpSearchClick(Sender: TObject);
begin
  try
    //Chamando a pesquisa...
    cSearchFS8F1 := TMasterSearchScreen.Create;
    //Params: TableName,KeyField,Title,Type,ReturnField,Query
    cSearchFS8F1.SelectedSearch(  qTableNameFS8F1,
                                  qKeyFieldFS8F1,
                                  qTitleFS8F1,
                                  qTypeFS8F1,
                                  qReturnFieldFS8F1,
                                  qQueryFS8F1);
    fnStandardRegControlFS8F1(1,fnSetFieldsFS8F1);
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.fnDeleteFS8F1: Boolean;
{FS8-F1-PU-FN-7}
begin
    SetFileId('FS8-F1-PU-FN-7');
    Result := False;
    try
      {OBJETIVO: APENAS LIBERAR OS CAMPOS PARA DELETAR REGISTRO,
      SETAR VARIAVEL STATE PARA DELETE}
      SetStateFS8F1('DELETE');
      Result := True;
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnCancelFS8F1: Boolean;
{FS8-F1-PU-FN-9}
begin
    SetFileId('FS8-F1-PU-FN-9');
    try
      {OBJETIVO: CANCELAR OPERA��ES DE INSERT, UPDATE E DELETE, VERIFICAR
      VARIAVEL STATE}
    except on e : exception do
      SetiMens(0,e.Message+ErrorInf+qFileId);
    end;
end;

function TfrmStandardReg.fnComponentValidateFS8F1(pName: string): Boolean;
var
  vFieldType, vFieldName : string;
begin
  //Fun��o para validar o tipo e o nome do componente...
  Result := False;
  try
    vFieldType := '';
    vFieldName := '';
    vFieldType := (GetFieldInfo(0,pName)); //Pega o nome do tipo: EDT,RGR,CBX...
    if (TypeFieldValidate((pName))) then //Validata o tipo...
    begin
      vFieldName := (GetFieldInfo(1,pName));//Pega o nome do componente...
      //Nome existe na tabela?...
      if (fnTableAndFieldsExistsFS8F1(1,qTableNameFS8F1,vFieldName)) then
        Result := True;
    end;
  finally

  end;
end;

function TfrmStandardReg.fnTableAndFieldsExistsFS8F1(pTableOrField:Integer;
pTableName : string; pFieldName:string): Boolean;
var
  vField : string;
begin
//Fun��o para validar se a tabela ou o field existem no banco de dados...
  Result := False;
  try
    try
      vField := '';
      //vField := GetFieldInfo(1,pFieldName);
      vField := pFieldName;
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      //if table exists
      if (dmMasterDataModule.fnTableInforFS8F1(pTableName) = True) then
      begin
        with (dmMasterDataModule) do
        begin
          if (pTableOrField = 0) then //table exists
              Result := True else
          if (pTableOrField = 1) then //field exists
          begin
            SetiCds.Close;
            SetiCds.Filtered := False;
            SetiCds.Filter := 'FIELDNAME_ = '+QuotedStr(vField);
            SetiCds.Filtered := True;
            SetiCds.Open;
            Result := (NOT(SetiCds.IsEmpty));
            SetiCds.Filtered := False;
          end;
        end;
      end;
    finally
      dmMasterDataModule.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

procedure TfrmStandardReg.bpNewClick(Sender: TObject);
begin
  SetTypeFS8F1(1);
  fnStandardRegControlFS8F1(2);
end;

procedure TfrmStandardReg.bpEditClick(Sender: TObject);
begin
  SetTypeFS8F1(0);
  fnStandardRegControlFS8F1(3);
end;

procedure TfrmStandardReg.bpDellClick(Sender: TObject);
begin
  SetTypeFS8F1(3);
  fnStandardRegControlFS8F1(4);
end;

function TfrmStandardReg.fnFillDataSetOpFS8F1 : Boolean;
{FS8-F1-pu-fn-4}
var
  i : Integer;
  vCount, vCountOld : Integer;
  vName : string;
  vSaveCount : Integer;
begin

  {
    2� ETAPA PARA INSER��O, ATUALIZA��O E EXCLUS�O...

    - CHAMADA PARA O METODO QUE REALIZA A VALIDA��O DE TODOS OS COMPONENTES
      DA TELA ANTES DE EXECUTAR AS OPERA��ES;
    - CHAMADA PARA O METODO QUE GRAVA OS REGISTROS VALIDADOS NO METODO ACIMA,
      NOS CDS OLD E NEW, A CHAMADA � REALIZADA PELA MASTERCONTROL QUE UTILIZA
      COMPONENTES DO MASTERDAO;
    - RETORNA BOOLEAN, VERIFICCA SE REALMENTE ALGUM REGISTRO FOI INSERIDO;
  }


  {pType: 0:UPDATA_OLD_VALUES; 1:INSERT; 2:UPDATE; 3:DELETE; 4:CANCEL; 5:SAVE}
  SetFileId('FS8-F1-pu-fn-4');
  Result := False;
  try
    try
      //A CLASSE MASTER CONTROL ESTA CRIADA?
      SetCriticalFS8F1(NOT (Assigned(cMasterControlFS8F1)));

      //O DATASET OLD ESTA CRIADO? APENAS PARA O TIPO 0
      SetCriticalFS8F1(NOT (Assigned(cMasterControlFS8F1.qCdsSetOldFS3F1)));

      //O DATASET NEW ESTA CRIADO? APENAS PARA OS TIPOS 1,2,
      //SetCriticalFS8F1(NOT (Assigned(cMasterControlFS8F1.qDataSetNewFS3F1)));
      //EXISTE ALGUM ERRO CRITICO?
      if (qCriticalFS8F1) then
        Exit
      else
      //N�O EXISTE ERRO CRITICO?
      begin
        SetRegOldFS8F1(0);
        SetRegNewFS8F1(0);
        vSaveCount := 0;
        //SOMENTE PARA OS TIPOS: UPDATE OLD, INSERT E UPDATE NEW
        if (qTypeFS8F1 in [0,1,2]) then
        begin
          //PERCORRE OS COMPONENTES DA TELA
          for I := 0 to ComponentCount -1 do
          begin
            //PROSSIGA AT� EXISTIR UM ERRO CRITICO
            if (qCriticalFS8F1 = False) then
            begin
              //SE O COMPONENTE ESTIVER VALIDADO
              if (fnCompToOpValFS8F1(Components[i])) then
              begin
                //GRAVA REGISTROS NO DATASET
                if fnDataSetOldNewRecordFS8F1(Components[i]) then
                  vSaveCount := vSaveCount + 1;
              end;
            end else
            Exit;
          end;
          if (qTypeFS8F1 in [0]) then
          begin
            {if Assigned(cMasterControlFS8F1.qDataSetOldFS3F1) then
            begin
              if (qCriticalFS8F1 = False) then
              begin
                if NOT (cMasterControlFS8F1.qDataSetOldFS3F1.IsEmpty) then
                begin
                  Result := True;
                end;
              end;
            end;}
          end;
        end;
      end;
    finally

    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

procedure TfrmStandardReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if Assigned(cRegionsFS8F1) then
      cRegionsFS8F1.Free;
  finally

  end;
end;

procedure TfrmStandardReg.FormCreate(Sender: TObject);
begin
  try
    //
  finally

  end;
end;

procedure TfrmStandardReg.FormShow(Sender: TObject);
begin
    try
      fnStandardRegControlFS8F1;
    finally

    end;
end;

function TfrmStandardReg.fnDataSetOldNewRecordFS8F1(pComp : TComponent):
Boolean;
{FS8-F1-pr-fn-2}
var
  vCount, vCompType : Integer;
  vName, vTypeDb, vTypeDb_ : string;
  vValue : Variant;
  vValueForm : string;
  vId : Integer;
  vTableName : string;
  vFieldName : string;
  vValueStr : string;
  vValueInt : Integer;
  vValueFlo : Double;
  vValueTmp : TDateTime;
  vValueTim : TTime;
  vValueDat : TDate;
  vGen : string;
  vGenName : string;
  vDefault : string;
  vDef : Boolean;
begin

  {
    4� ETAPA PARA INSER��O, ATUALIZA��O E EXCLUS�O...

    - OBS: ESTA FUN��O � EXECUTADA SOMENTE SE O FIELD PASSOU POSITIVAMENTE PELA
      FUN��O DE VALIDA��O FNCOMPTOOPVAL;
    - SETAR OS VALORES CORRESPONDENTES AO FIELDS DOS CDS OLD E NEW NA CLASSE
      MASTERCONTROL;
    - CHAMAR METODO DA MASTERCONTROL QUE REALIZAR� AS OPERA��ES DE ACORDO COM
      OS VALORES INFORMADO NO ITEM ANTERIOR;
    - RETORNO BOOLEAN - VALIDA��O SE OS REGISTROS FORAM EXECUTADOS COM EXITO;
  }

  SetFileId('FS8-F1-pr-fn-2');
  Result := False;
  try
    //SE O COMPONENTE EXISTE...
    if NOT (Assigned(pComp)) then
      Exit;
    //SE O MASTERCONTROL N�O ESTIVER CRIADO...
    if NOT (Assigned(cMasterControlFS8F1)) then
      Exit;
    //SETA O ID PARA A TABELA OLD
    SetRegOldFS8F1(qRegOldFS8F1 + 1);

    if (pComp is TEdit) then
    begin
      vCompType := 1;
      //RETORNA O NOME DO FIELD
      vName := UpperCase(GetFieldInfo(1,(TEdit(pComp)).Name));
    end;
    if (pComp is TCheckBox) then
    begin
      vCompType := 2;
      //RETORNA O NOME DO FIELD
      vName := UpperCase(GetFieldInfo(1,(TCheckBox(pComp)).Name));
    end;
    if (pComp is TRadioGroup) then
    begin
      vCompType := 3;
      //RETORNA O NOME DO FIELD
      vName := UpperCase(GetFieldInfo(1,(TRadioGroup(pComp)).Name));
    end;
    if (pComp is TComboBox) then
    begin
      vCompType := 4;
      //RETORNA O NOME DO FIELD
      vName := UpperCase(GetFieldInfo(1,(TComboBox(pComp)).Name));
    end;
    if (pComp is TMemo) then
    begin
      vCompType := 5;
      //RETORNA O NOME DO FIELD
      vName := UpperCase(GetFieldInfo(1,(TMemo(pComp)).Name));
    end;

    //RETORNA O TIPO DO CAMPO NO BANCO DE DADOS
    vTypeDb := fnTableInforFS1F8(qTableNameFS8F1,vName,2);

    {RETORNA O TIPO DO CAMPO NO BANCO DE DADOS - SIMPLIFICADO
    INT;NUM;DOU;DAT;TIM;TMP;STR}
    vTypeDb_ := SConfigGetReduceFieldType(vTypeDb);

    //POSSUI VALOR DEFAULT
    vDefault := fnTableInforFS1F8(qTableNameFS8F1,vName,7);
    vDef := (vDefault = 'S');

    vGen := '';
    vGenName := fnFieldHasGeneratorFS1F8( qTableNameFS8F1,
                                          vName);
    if (vGenName <> '') then
      vGen := 'S' else vGen := 'N';

    //TEDIT
    if (vCompType in [1,4,5]) then
    begin
      if (vTypeDb_ = 'STR') then
        vValue := TEdit(pComp).Text else
      if (vTypeDb_ = 'NUM') or (vTypeDb_ = 'DOU') then
        //vValueForm := StringReplace(TEdit(pComp).Text,',','.',[rfReplaceAll]);
        vValue := StrToFloatDef(TEdit(pComp).Text,-1) else
      if (vTypeDb_ = 'INT') then
        if (vGen <> 'S') then
          vValue := StrToIntDef(TEdit(pComp).Text,-1) else
      if (vTypeDb_ = 'DAT') then
        vValue := StrToDate(TEdit(pComp).Text) else
      if (vTypeDb_ = 'TIM') then
        vValue := StrToTime(TEdit(pComp).Text) else
      if (vTypeDb_ = 'TMP') then
        vValue := StrToDateTime(TEdit(pComp).Text);
    end;
    //TCHECKBOX
    if (vCompType in [2]) then
    begin
      vValue := fnGetCheckBoxValue( TCheckBox(pComp),
                                    qTableNameFS8F1,
                                    vName);
    end;
    //TRADIOGROUP
    if (vCompType in [3]) then
    begin
      vValue := fnGetRadioGroupValue( TRadioGroup(pComp),
                                      qTableNameFS8F1,
                                      vName);
    end;
     {
      qDataSetOldFS3F1.FieldDefs.Add('FIELDVALUE_TMP',ftDateTime);
      qDataSetOldFS3F1.FieldDefs.Add('FIELDVALUE_TIM',ftTime);
      qDataSetOldFS3F1.FieldDefs.Add('FIELDVALUE_DAT',ftDate);
     }

    {vValueStr := '';
    vValueInt := -1;
    vValueFlo := -1;
    vValueTmp := -1;
    vValueTim := -1;
    vValueDat := -1;}

    vId         := qRegOldFS8F1;
    vTableName  := qTableNameFS8F1;
    vFieldName  := vName;
    if (vTypeDb_ = 'STR') then
      vValueStr := vValue;
    if (vTypeDb_ = 'INT') then
      vValueInt := vValue;
    if (vTypeDb_ = 'DOU') then
      vValueFlo := vValue;
    if (vTypeDb_ = 'TMP') then
      vValueTmp := vValue;
    if (vTypeDb_ = 'TIM') then
      vValueTim := vValue;
    if (vTypeDb_ = 'DAT') then
      vValueDat := vValue;
    {
      FAZER UM ESQUEMA AQUI PARA ELE VERIFICAR QUAL O COMPOENTE, TIPO, TEDIT,
      E VERIFICAR O VALOR DO MESMO FOI INFORMADO, SENAO TIVER INFORMADO, NAO SETAR
      LEMBRA DA DATA '23/12/1989'? POIS �
      APOS ISSO, CONFIGURAR O CDS NEW.
      DEPOIS DISSO, SETAR O OLD OU NEW PARA O SAVE
      CONFIGURAR O ESQUEMA PARA CANCELAR
      CONFIGURAR O ESQUEMA PARA DELETAR
      DEUS ME ABEN�OE!!! VOU CONSEGUIR!!! AM�M
    }


    cMasterControlFS8F1.SetIdFS3F1(vId);
    cMasterControlFS8F1.SetTableNameFS3F1(vTableName);
    cMasterControlFS8F1.SetFieldNameFS3F1(vName);
    //if (vValueStr <> '') then
      cMasterControlFS8F1.SetValueStrFS3F1(vValueStr);
    //if (vValueInt <> -1) then
      cMasterControlFS8F1.SetValueIntFS3F1(vValueInt);
    //if (vValueFlo <> -1) then
      cMasterControlFS8F1.SetValueFloFS3F1(vValueFlo);
    //if (vValueTmp <> -1) then
      cMasterControlFS8F1.SetValueTmpFS3F1(vValueTmp);
    //if (vValueTim <> -1) then
      cMasterControlFS8F1.SetValueTimFS3F1(vValueTim);
    //if (vValueDat <> -1) then
      cMasterControlFS8F1.SetValueDatFS3F1(vValueDat);
    cMasterControlFS8F1.SetGenFS3F1(vGen);
    cMasterControlFS8F1.SetGenNameFS3F1(vGenName);
    cMasterControlFS8F1.SetDefaultFS3F1(vDefault);

    if (cMasterControlFS8F1.fnInsertRecordsCdsOldNewFS3F1(0) = True)
      then
    begin
        Result := True;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.fnCompToOpValFS8F1(pComp: TComponent): Boolean;
{FS8-F1-pr-fn-1}
var
  vNameComp, vName,vCapt,vMand,vTypeField,vTypeDb,vValue : string;
  vTag : integer;
  vValComp, vDefault : Boolean;
  vValInt, vCompType : Integer;
  vScreening : Boolean;
  vGen : Boolean;

begin

  {
    3� ETAPA PARA INSER��O, ATUALIZA��O E EXCLUS�O...

    - VALIDA TODOS OS COMPONENTES DA TELA, DE ACORDO COM AS INFORMA��ES OBTIDAS
      NA DESCRI��O DE CADA FIELD DA SUA RESPECTIVA TABELA E TAMB�M DE ACORDO
      COM O NOME DO CAMPO NO FORMUL�RIO;
    - � VERIFICADO SE A INFORMA��O DO COMPONENTE � OBRIGAT�RIA, SE POSSUI VALOR
      DEFAULT E SE UTILIZA UM GENERATOR;
  }

  SetFileId('FS8-F1-pr-fn-1');
  Result := False;
  vTag := -1;
  vCompType := -1;
  try
    if NOT (Assigned(pComp)) then
      Exit;
    if NOT (Assigned(dmMasterDataModule)) then
      Exit;
    //SABER O TIPO DO COMPONENTE E PEGAR A TAG
    //SETAR O ID DO COMPONENTE NA VARIAVEL VCOMPTYPE
    vScreening := False;
//..............................................................................
    if (pComp is TEdit) then
    begin
      vTag := (TEdit(pComp).Tag);
      vCompType := 1;
      vScreening := True;
    end else
//..............................................................................
    if (pComp is TCheckBox) then
    begin
      vTag := (TCheckBox(pComp).Tag);
      vCompType := 2;
      vScreening := True;
    end else
//..............................................................................
    if (pComp is TRadioGroup) then
    begin
      vTag := (TRadioGroup(pComp).Tag);
      vCompType := 3;
      vScreening := True;
    end else
//..............................................................................
    if (pComp is TComboBox) then
    begin
      vTag := (TComboBox(pComp).Tag);
      vCompType := 4;
      vScreening := True;
    end else
//..............................................................................
    if (pComp is TMemo) then
    begin
      vTag := (TMemo(pComp).Tag);
      vCompType := 5;
      vScreening := True;
    end;
//..............................................................................
    if (vScreening ) then
    begin
      //PROSSEGUIR SOMENTE SE A TAG FOR DIFERENTE DE -1 E 99
      //........................................................................
      if (vTag = 0) then
      begin
        //RETORNA O NOME DO COMPONENTE
        vNameComp := (TEdit(pComp)).Name;
        vName := UpperCase(GetFieldInfo(1,(vNameComp)));
        if (fnTableInforFS1F8(qTableNameFS8F1, vName, 1) <> '') then
        begin
          //CONTADOR DE VALIDA��ES
          vValInt := 0;
          //....................................................................
          //RETORNA E VALIDA O TIPO DO COMPONENTE
          //TEDIT
          if (vCompType = 1) then
          begin
            //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
            vTypeField := UpperCase(GetFieldInfo(0,(TEdit(pComp)).Name));
            //N�O CORRESPONDENTE AO SELECIONADO?
            SetCriticalFS8F1(vTypeField <> 'EDT');
          end else
          //....................................................................
          //TCHECKBOX
          if (vCompType = 2) then
          begin
            //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
            vTypeField := UpperCase(GetFieldInfo(0,(TCheckBox(pComp)).Name));
            //N�O CORRESPONDENTE AO SELECIONADO?
            SetCriticalFS8F1(vTypeField <> 'CBX');
          end else
          //....................................................................
          //TRADIOGROUP
          if (vCompType = 3) then
          begin
            //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
            vTypeField := UpperCase(GetFieldInfo(0,(TRadioGroup(pComp)).Name));
            //N�O CORRESPONDENTE AO SELECIONADO?
            SetCriticalFS8F1(vTypeField <> 'RGR');
          end else
          //....................................................................
          //TCOMBOBOX
          if (vCompType = 4) then
          begin
            //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
            vTypeField := UpperCase(GetFieldInfo(0,(TComboBox(pComp)).Name));
            //N�O CORRESPONDENTE AO SELECIONADO?
            SetCriticalFS8F1(vTypeField <> 'CBO');
          end else
          //....................................................................
          //TMEMO
          if (vCompType = 5) then
          begin
            //RETORNA O TIPO DO COMPONENTE INFORMADO NO NOME
            vTypeField := UpperCase(GetFieldInfo(0,(TMemo(pComp)).Name));
            //N�O CORRESPONDENTE AO SELECIONADO?
            SetCriticalFS8F1(vTypeField <> 'MEM');
          end;
          //....................................................................
          if (qCriticalFS8F1) then
          begin
            SetiMens(2,Mess23+qFileId);
            Exit;
          end;
          vValInt := vValInt + 1; //1� VALIDA��O
          vTypeDb := fnTableInforFS1F8(qTableNameFS8F1, vName, 2);
          //....................................................................
          if (vTypeDb <> '') then
            vValInt := vValInt + 1; //2� VALIDA��O
          if (fnComponentValidateFS8F1(UpperCase(vNameComp))) then
            vValInt := vValInt + 1; //3� VALIDA��O
          //....................................................................
          vCapt := fnTableInforFS1F8(qTableNameFS8F1, vName, 3);
          if (vCapt <> '') then
            vValInt := vValInt + 1; //4� VALIDA��O
          //....................................................................
          //PROSSEGUIR SE O N�MERO DE VALIDA��ES ATINGIR O VALOR - 4
          vValComp := vValInt in [4];
          SetCriticalFS8F1(vValComp = False);
          if (qCriticalFS8F1) then
          begin
            SetiMens(2,Mess23+qFileId);
            Exit;
          end;
          //....................................................................
          vMand := '';
          vGen := False;
          vValInt := 0;
          //O CAMPO � OBRIGAT�RIO?
          vMand := fnTableInforFS1F8(qTableNameFS8F1,vName,5);
          //O CAMPO TEM VALOR DEFAULT?
          vDefault := (fnTableInforFS1F8(qTableNameFS8F1,vName,7) = 'S');
          //O CAMPO TEM GENERATOR?
          vGen := (fnFieldHasGeneratorFS1F8(qTableNameFS8F1,vName) <> '');
          {O CAMPO � TEDIT? ELE PODE SER GENERATOR...
           O CAMPO � TEDIT? ELE PODE TER VALOR DEFAULT...
           O CAMPO N�O � TEDIT? ELE N�O PODE SER GENERATOR, MAS PODE SER
           DEFAULT...}
          //....................................................................
          //TEDIT
          if (vCompType = 1) then
          begin
            if (vMand = 'S') and (TEdit(pComp).Text = '') then
            begin
              if (vGen) then
                SetWarningFS8F1(False)
              else
              if (vDefault) then
                SetWarningFS8F1(False)
              else
                SetCriticalFS8F1(True);
            end else
              SetWarningFS8F1(False);
          end else
          //....................................................................
          //TCHECKBOX
          if (vCompType = 2) then
          begin
            if (vMand = 'S') and (TCheckBox(pComp).Checked = False) then
            begin
              if (vDefault) then
                SetWarningFS8F1(False)
              else
                SetCriticalFS8F1(True);
            end else
              SetWarningFS8F1(False)
          end else
          //....................................................................
          //TRADIOGROUP
          if (vCompType = 3) then
          begin
            if (vMand = 'S') and (TRadioGroup(pComp).ItemIndex = -1) then
            begin
              if (vDefault) then
                SetWarningFS8F1(False)
              else
                SetCriticalFS8F1(True)
            end else
              SetWarningFS8F1(False);
          end else
          //....................................................................
          //TCOMBOBOX
          if (vCompType = 4) then
          begin
            if (vMand = 'S') and (TComboBox(pComp).Text = '') then
            begin
              if (vDefault) then
                SetWarningFS8F1(False)
              else
                SetCriticalFS8F1(True)
            end else
              SetWarningFS8F1(False);
          end else
          //....................................................................
          //TMEMO
          if (vCompType = 5) then
          begin
            if (vMand = 'S') and (TMemo(pComp).Text = '') then
            begin
              if (vDefault) then
                SetWarningFS8F1(False)
              else
              SetCriticalFS8F1(True)
            end else
              SetWarningFS8F1(False);
          end;
          //....................................................................
          if (qCriticalFS8F1) then
          begin
            SetiMens(2,Mess22+vCapt);
            if (vCompType = 1) then
              TEdit(pComp).SetFocus else
            if (vCompType = 2) then
              TCheckBox(pComp).SetFocus else
            if (vCompType = 3) then
              TRadioGroup(pComp).SetFocus else
            if (vCompType = 4) then
              TComboBox(pComp).SetFocus else
            if (vCompType = 5) then
              TMemo(pComp).SetFocus;
            Exit;
          end;
          if (qWarningFS8F1) then
            Exit;
          vValComp := True;
        end else
          Exit;
      end;//TAG
      Result := vValComp;
    end else//SCREENING
    Exit;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

procedure TfrmStandardReg.prFieldIdDescValueFS8F1(pType: Integer; pTableName,
  pFieldId, pFieldDesc: string; pCompId:TComponent; pCompDesc:TComponent);
{pu-pr-2}
var
  vResult : Variant;
  vValueInt : Integer;
  vValueDesc : string;
  ProcId : TNotifyEvent;
  ProcDesc : TNotifyEvent;
begin
  SetFileId('FS8-F1-pu-pr-2');
  try
    if (not Assigned(pCompId)) or (not Assigned(pCompDesc)) then
      Exit;
    if (pCompId is TEdit) and (pCompDesc is TEdit) then
    begin
      ProcId := (pCompId as TEdit).OnChange;
      ProcDesc := (pCompDesc as TEdit).OnChange;

      if ((pCompId as TEdit).Text = '')
        and ((pCompDesc as TEdit).Text = '') then
        Exit;

      if (pType = 1) and ((pCompId as TEdit).Text = '') then
      begin
        (pCompDesc as TEdit).OnChange := nil;
        (pCompDesc as TEdit).Clear;
        (pCompDesc as TEdit).OnChange := ProcDesc;
      end;

      if (pType = 0) and ((pCompDesc as TEdit).Text = '') then
      begin
        (pCompId as TEdit).OnChange := nil;
        (pCompId as TEdit).Clear;
        (pCompId as TEdit).OnChange := ProcId;
      end;

      //Se o tipo for 0 - retornar id ou 1 - retornar desc...
      if (pType in [0,1]) then
      begin
        //A tabela existe?
        if not (fnTableAndFieldsExistsFS8F1(0,pTableName)) then
          Exit;
        //O campo id existe?
        if not (fnTableAndFieldsExistsFS8F1(1,pTableName,pFieldId)) then
          Exit;
        //O campo descri��o existe?
        if not (fnTableAndFieldsExistsFS8F1(1,pTableName,pFieldDesc)) then
          Exit;
        //Se o tipo for para retornar ID...
        if (pType = 0) then
        begin
          (pCompId as TEdit).OnChange := nil;
          (pCompId as TEdit).Clear;
          (pCompId as TEdit).OnChange := ProcId;
          //Jogando para variavel de valor da descri��o, o valor sem espa�os...
          vValueDesc := Trim((pCompDesc as TEdit).Text);
          if (vValueDesc <> '') then
          begin
            dmMasterDataModule := TdmMasterDataModule.Create(Nil);
            vResult := dmMasterDataModule.fnGetFieldInforIdFS8F1( pTableName,
                                                                  pFieldId,
                                                                  pFieldDesc,
                                                                  vValueDesc);
            dmMasterDataModule.Free;
            if vResult <> -1 then
            begin
              (pCompId as TEdit).OnChange := nil;
              (pCompId as TEdit).Text := IntToStr(vResult);
              (pCompId as TEdit).OnChange := ProcId;
            end
            else
            begin
              (pCompId as TEdit).OnChange := nil;
              (pCompId as TEdit).Clear;
              (pCompId as TEdit).OnChange := ProcId;
            end;
          end;
        end else
        //Se o tipo for para retornar DESC...
        if (pType = 1) then
        begin
          (pCompDesc as TEdit).OnChange := nil;
          (pCompDesc as TEdit).Clear;
          (pCompDesc as TEdit).OnChange := ProcDesc;
          //Jogando para variavel de valor do id, o valor verificando nulos...
          vValueInt := StrToIntDef((pCompId as TEdit).Text,-1);
          if (vValueInt <> -1) then
          begin
            dmMasterDataModule := TdmMasterDataModule.Create(Nil);
            vResult := dmMasterDataModule.fnGetInforDescrFS8F1(  pTableName,
                                                                 pFieldId,
                                                                 pFieldDesc,
                                                                 vValueInt);
            dmMasterDataModule.Free;
            if vResult <> '' then
            begin
              (pCompDesc as TEdit).OnChange := nil;
              (pCompDesc as TEdit).Text := vResult;
              (pCompDesc as TEdit).OnChange := ProcDesc;
            end
            else
            begin
              (pCompDesc as TEdit).OnChange := nil;
              (pCompDesc as TEdit).Clear;
              (pCompDesc as TEdit).OnChange := ProcDesc;
            end;
          end;
        end;
      end;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.GetCriticalFS8F1: Boolean;
begin
    Result := FCriticalFS8F1;
end;

function TfrmStandardReg.GetDoNotScreeningInsert: Boolean;
begin
    Result := FDoNotScreeningInsert;
end;

function TfrmStandardReg.GetFileId: string;
begin
    Result := FFileID;
end;

function TfrmStandardReg.GetFormNameFS8F1: string;
begin
    Result := FFormNameFS8F1;
end;

function TfrmStandardReg.GetRegNewFS8F1: Integer;
begin
    Result := FRegNewFS8F1;
end;

function TfrmStandardReg.GetRegOldFS8F1: Integer;
begin
    Result := FRegOldFS8F1;
end;

function TfrmStandardReg.GetKeyFieldFS8F1: string;
begin
    Result :=  FKeyFieldFS8F1;
end;

function TfrmStandardReg.GetQueryFS8F1: string;
begin
    Result :=  FQueryFS8F1;
end;

function TfrmStandardReg.GetReturnFieldFS8F1: string;
begin
    Result :=  FReturnFieldFS8F1;
end;

function TfrmStandardReg.GetStateFS8F1: string;
begin
    Result := FStateFS8F1;
end;

function TfrmStandardReg.GetTableNameFS8F1: string;
begin
    Result :=  FTableNameFS8F1;
end;

function TfrmStandardReg.GetTitleFS8F1: string;
begin
    Result :=  FTitleFS8F1;
end;

function TfrmStandardReg.GetTypeFS8F1: Integer;
begin
    Result :=  FTypeFS8F1;
end;

function TfrmStandardReg.GetWarningFS8F1: Boolean;
begin
    Result := FWarningFS8F1;
end;

function TfrmStandardReg.fnInsertFS8F1: Boolean;
{FS8-F1-PU-FN-5}
begin
  SetFileId('FS8-F1-PU-FN-5');
  Result := False;
  try
    {OBJETIVO: APENAS LIBERAR OS CAMPOS PARA REGISTRO,
    SETAR VARIAVEL STATE PARA INSERT}
    SetStateFS8F1('INSERT');
    Result := True;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

function TfrmStandardReg.fnCompValidateFS8F1(pName: string;
  pValue: Variant): Variant;
var
  vList : TStringList;
  i : Integer;
  vFieldName, vFieldType : string;
  vcount : Integer;
  vCds : TClientDataSet;
  vType, vType_ : string;
  vVal : boolean;
  vValue : Variant;
begin
  Result := False;
  try
    try
      vFieldName := UpperCase(GetFieldInfo(1,pName));
      vFieldType := UpperCase(GetFieldInfo(0,pName));
      dmMasterDataModule := TdmMasterDataModule.Create(Nil);
      //Cria��o da tabela tempor�ria
      vCds := TClientDataSet.Create(Self);
      vCds.Close;
      vCds.FieldDefs.Clear;
      vCds.FieldDefs.Add('ID',ftInteger);
      vCds.FieldDefs.Add('VALUENUM',ftFloat);
      vCds.FieldDefs.Add('VALUESTR',ftString,255);
      vCds.FieldDefs.Add('VALUEDAT',ftDateTime);
      vCds.CreateDataSet;
      //Abre clientdataset com informa��es da tabela...
      if (dmMasterDataModule.fnTableInforFS8F1(qTableNameFS8F1) = True) then
      begin
        with (dmMasterDataModule) do
        begin
          //CONFERE SE � RADIO GROUP OU COMBOBOX
          if (vFieldType = 'RGR') or (vFieldType = 'CBX') then
          begin
            SetiCds.Close;
            SetiCds.Filtered := False;
            SetiCds.Filter := 'UPPER(FIELDNAME_) = '
              +UpperCase(QuotedStr((vFieldName)));
            SetiCds.Filtered := True;
            SetiCds.Open;
            if (NOT(SetiCds.IsEmpty)) then
            begin
              vType := Trim(SetiCds.FieldByName('FIELDTYPE_').AsString);
              if (vType = SConfigFireTIMESTAMP) then
                vType_ := 'DTA' else
              if (vType = SConfigFireCHAR) or
                 (vType = SConfigFireVARCHAR) then
                vType_ := 'STR' else
              if (vType = SConfigFireSMALLINT) or
                 (vType = SConfigFireINTEGER) or
                 (vType = SConfigFireBIGINT) or
                 (vType = SConfigFireSMALLINT) or
                 (vType = SConfigFireFLOAT) or
                 (vType = SConfigFireDOUBLEPRECISION) or
                 (vType = SConfigFireNUMERIC) or
                 (vType = SConfigFireDECIMAL) then
                vType_ := 'NUM';
              vList := TStringList.Create;
              ExtractStrings([';'],[],
              PChar(SetiCds.FieldByName('FIELDFIXEDVALUE_').AsString),vList);
              vcount := 0;
              for i := 0 to vList.Count -1 do
              begin
                if (vcount = 0) then
                  vcount := 0;
                vCds.Append;
                vCds.FieldByName('ID').Value := vcount;
                if (vType_ = 'DTA') then
                  vCds.FieldByName('VALUEDAT').Value := vList[i] else
                if (vType_ = 'STR') then
                  vCds.FieldByName('VALUESTR').Value := vList[i] else
                if (vType_ = 'NUM') then
                  vCds.FieldByName('VALUENUM').Value := vList[i];
                vCds.Post;
                vcount := vcount + 1;
              end;
              vCds.Open;
              if NOT (vCds.IsEmpty) then
              begin
                vCds.First;
                while not (vCds.Eof) do
                begin
                  if (vType_ = 'DTA') then
                  vValue := vCds.FieldByName('VALUEDTA').Value;
                  if (vType_ = 'STR') then
                  vValue := StringReplace(vCds.FieldByName('VALUESTR').Value,
                            ' ',EmptyStr,[rfReplaceAll]);
                  if (vType_ = 'NUM') then
                  vValue := Trim(vCds.FieldByName('VALUENUM').Value);

                  if (vType_ = 'DTA') then
                  begin
                    if (vValue) = (QuotedStr(pValue)) then
                      vVal := True;
                  end;
                  if (vType_ = 'STR') then
                  begin
                    if (vValue) = (pValue) then
                      vVal := True;
                  end;
                  if (vType_ = 'NUM') then
                  begin
                    if (vValue) = (StringReplace(pValue,',','.',
                      [rfReplaceAll])) then
                        vVal := True;
                  end;
                  if (vVal = True) then
                  begin
                    if (vFieldType = 'RGR') then
                      Result := vCds.FieldByName('ID').AsInteger;
                    if (vFieldType = 'CBX') then
                      Result := True;
                    Exit;
                  end;
                  vCds.Next;
                end;
                if (vVal = False) then
                begin
                  if (vFieldType = 'RGR') then
                    Result := -1;
                  if (vFieldType = 'CBX') then
                    Result := False;
                end;
              end;
            end;
            SetiCds.Filtered := False;
          end;
        end;
      end;
    finally
      dmMasterDataModule.Free;
      vCds.Free;
    end;
  except on e : exception do
    SetiMens(0,e.Message+ErrorInf+qFileId);
  end;
end;

end.
