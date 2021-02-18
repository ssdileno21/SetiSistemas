{
    COMPONENTS:
      TEDIT       : EDT;
      TDBEDIT     : EDT;
      COMBOBOX    : CBX;
      DBCOMBOBOX  : CBX;
      CHECKBOX    : CHB;

    COMPONENTS TYPES:
      STRING FIELD  : S;
      CHAR FIELD    : C;
      NUMBER FIELD  : N;

    COMPONENT NAME EXAMPLE:
      TEDIT : EDT_S_FIELDNAME;
      TCHECKBOX : CBX_S_FIELDNAME;

}


unit ufrmDefaultSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Datasnap.DBClient,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPattern, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.DBCtrls, uMess, Data.DB, Vcl.ImgList, uSetiFramework,
  Data.Win.ADODB, Datasnap.Provider, uSetiUseful, uSetiFrameworkParameters,
  System.StrUtils;

type
  TSearchType = (tsString, tsNumber, tsDate);

  TfrmDefaultSearch = class(TfrmPattern)
    pLeft: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    dbgridResult: TDBGrid;
    imgMenu: TImageList;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    mENU1: TMenuItem;
    Pesquisar1: TMenuItem;
    Selecionar1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDataSourceCds : TDataSource;
    FReturnCds : TClientDataSet;
    FSender: TObject;
    FQry : string;
    FAndForClauseWhere : string;
    FOrderBy : string;
    FCdsFieldsInfo : TClientDataSet;
    FConected : TADOConnection;

    function BuildFormSerch : TClientDataSet;

    function GetReturnCds : TClientDataSet;
    procedure SetReturnCds(Const Value : TClientDataSet);

    procedure Control(State:Integer=0);
    //NOME DO COMPONENTE
    function GetCompFieldName(CompName:string) : string;
    //NOME DA TABELA INFORMADA NA PROPRIEDADE FIELDNAME DO CLIENTEDATASET
    function GetFieldTableName(CdsFieldName:string) : string;
    //NOME DO FIELD INFORMADO NA PROPRIEDADE FIELDNAME DO CLIENTDATASET
    function GetFieldName(CdsFieldName:string; CdsFieldType: String) : string;
    //RETORNAR TIPO DE TDATETIME
    function GetDateTimeType(CdsFieldName:string) : Integer;
    //RETORNAR VALOR TCHECKBOX
    function GetCheckBoxValue(CdsFieldName:string;Checked:Boolean) : string;
  public
      {function BuildFormSerch(Sender : TObject = Nil; Qry: string = '';
      AndForClauseWhere: String = ''; OrderBy: String = ''; CdsFieldsInfo:
      TClientDataSet = Nil; pConect : TADOConnection = Nil
      ) : TClientDataSet;}

    function GetSender: TObject;
    function GetQry : string;
    function GetAndForClauseWhere : string;
    function GetOrderBy : string;
    function GetCdsFieldsInfo : TClientDataSet;

    procedure SetSender(Const Value: TObject);
    procedure SetQry(Const Value : string);
    procedure SetAndForClauseWhere(Const Value : string);
    procedure SetOrderBy(Const Value : string);
    procedure SetCdsFieldsInfo(Const Value : TClientDataSet);

  published
      property qReturnCds : TClientDataSet read GetReturnCds write SetReturnCds;
      property qDataSourceCds : TDataSource read FDataSourceCds write
      FDataSourceCds;

      property qSender: TObject read GetSender write SetSender;
      property qQry : string read GetQry write SetQry;
      property qAndForClauseWhere : string read GetQry write SetQry;
      property qOrderBy : string read GetOrderBy write SetQry;
      property qCdsFieldsInfo : TClientDataSet read GetCdsFieldsInfo write
        SetCdsFieldsInfo;
      property qConected : TADOConnection read FConected write FConected;
  end;


var
  frmDefaultSearch: TfrmDefaultSearch;
  cSetiFramework : TSetiFramework;

implementation

{$R *.dfm}

{ TfrmDefaultSearch }

procedure TfrmDefaultSearch.BitBtn1Click(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmDefaultSearch.BitBtn2Click(Sender: TObject);
begin
  inherited;
  //
end;


function TfrmDefaultSearch.BuildFormSerch : TClientDataSet;
var
  i : Integer;
  i2 : Integer;
  vCompFieldName : String;
  vFieldName : String;
  vFieldType : TDataType;
  vActiveValue : String;
  vInactiveValue : String;

  cdsComp : TClientDataSet;
  cdsReturn : TClientDataSet;

  AdoQry : TADOQuery;
begin
  try
    Result := nil;

    if (qQry = '') then
      Exit;

    if NOT Assigned(qCdsFieldsInfo) then
      Exit;

    AdoQry := TADOQuery.Create(Nil);

    {CRIAÇÃO DO CDS DOS COMPONENTES}
    cdsComp := TClientDataSet.Create(Self);
    cdsComp.FieldDefs.Clear;
    cdsComp.FieldDefs.Add('FORMNAME',ftString,50);
    cdsComp.FieldDefs.Add('FORMCAPTION',ftString,50);
    cdsComp.FieldDefs.Add('COMPONENTNAME',ftString,50);
    cdsComp.FieldDefs.Add('COMPONENTTYPE',ftString,50);
    cdsComp.FieldDefs.Add('FIELDTABLENAME',ftString,50);
    cdsComp.FieldDefs.Add('FIELDNAME',ftString,50);
    cdsComp.FieldDefs.Add('FIELDTYPE',ftString,50);
    cdsComp.FieldDefs.Add('FIELDSIZE',ftInteger);
    cdsComp.FieldDefs.Add('DATAFIELD',ftString,50);
    cdsComp.FieldDefs.Add('DISPLAYLABEL',ftString,50);
    cdsComp.FieldDefs.Add('DISPLAYWIDTH',ftInteger);
    cdsComp.FieldDefs.Add('VALUE',ftString,255);
    cdsComp.FieldDefs.Add('KEYVALUE',ftString,100);
    cdsComp.FieldDefs.Add('CHECKEDVALUE',ftBoolean);
    cdsComp.FieldDefs.Add('KEYFIELD',ftString,50);
    cdsComp.FieldDefs.Add('LISTFIELD',ftString,50);
    cdsComp.FieldDefs.Add('ITEMINDEX',ftInteger);
    //DATETIMETYPE: 0: NORMAL; 1:PERÍODO-INI; 2-PERÍODO-FIM
    cdsComp.FieldDefs.Add('DATETIMETYPE',ftInteger);
    cdsComp.CreateDataSet;
    {PERCORRENDO TODOS OS COMPONENTES DA TELA INFORMADA}
    for i := 0 to TForm(qSender).ComponentCount -1 do
    begin
      //SE A TAG DO COMPONENTE FOR DIFERENTE DE 99
      if (TForm(qSender).Components[i].Tag <> SFPcTagNotSearchCompo) then
      begin
        vCompFieldName := '';
        vFieldName := '';
        //CDS DOS COMPONENTES
        with (cdsComp) do
        begin
          //SE O COMPONENTE FOR UM DESSES TIPOS
          if  (TForm(qSender).Components[i] is TEdit) or
              (TForm(qSender).Components[i] is TDBEdit) or
              (TForm(qSender).Components[i] is TCheckBox) or
              (TForm(qSender).Components[i] is TDBCheckBox) or
              (TForm(qSender).Components[i] is TComboBox) or
              (TForm(qSender).Components[i] is TDBComboBox) or
              (TForm(qSender).Components[i] is TDBLookupComboBox) or
              (TForm(qSender).Components[i] is TRadioButton) or
              (TForm(qSender).Components[i] is TRadioGroup) or
              (TForm(qSender).Components[i] is TDBRadioGroup) then
          begin
            // PREENCHENDO INFORMAÇÕES DOS COMPONENTES
            Insert;
            //NOME DO FORM
            FieldByName('FORMNAME').Value := TForm(qSender).Name;
            //CAPTION DO FORM
            FieldByName('FORMCAPTION').Value := TForm(qSender).Caption;
            //NOME DO COMPONENTE
            FieldByName('COMPONENTNAME').Value := TForm(qSender).Components[i].
              Name;
            //INFORMAÇÕES SOBRE COMPONENTE TEDIT
            if (TForm(qSender).Components[i] is TEdit) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TEDIT';
              FieldByName('VALUE').Value  := TEdit(TForm(qSender).
                Components[i]).Text;
              vCompFieldName := GetCompFieldName(TEdit(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE COMPONENTE TDBEDIT
            if (TForm(qSender).Components[i] is TDBEdit) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TDBEDIT';
              FieldByName('DATAFIELD').Value :=
                TDBEdit(TForm(qSender).Components[i]).DataField;
              FieldByName('VALUE').Value  := TDBEdit(TForm(qSender).
                Components[i]).Text;
              vCompFieldName := GetCompFieldName(TDBEdit(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE COMPONENTE TCHECKBOX
            if (TForm(qSender).Components[i] is TCheckBox) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TCHECKBOX';
              FieldByName('CHECKEDVALUE').Value := TCheckBox(TForm(qSender).
                Components[i]).Checked;
              vCompFieldName := GetCompFieldName(TCheckBox(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TDBCECKBOX
            if (TForm(qSender).Components[i] is TDBCheckBox) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TDBCHECKBOX';
              FieldByName('DATAFIELD').Value :=
              TDBCheckBox(TForm(qSender).Components[i]).DataField;
              FieldByName('CHECKEDVALUE').Value := TDBCheckBox(TForm(qSender).
                Components[i]).Checked;
              vCompFieldName := GetCompFieldName(TDBCheckBox(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TCOMBOBOX
            if (TForm(qSender).Components[i] is TComboBox) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TCOMBOBOX';
              FieldByName('VALUE').Value  := TComboBox(TForm(qSender).
                Components[i]).Text;
              FieldByName('ITEMINDEX').Value := TComboBox(TForm(qSender).
                Components[i]).ItemIndex;
              vCompFieldName := GetCompFieldName(TComboBox(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TDBCOMBOBOX
            if (TForm(qSender).Components[i] is TDBComboBox) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TDBCOMBOBOX';
              FieldByName('DATAFIELD').Value := TDBComboBox(TForm(qSender).
                Components[i]).DataField;
              FieldByName('VALUE').Value := TDBComboBox(TForm(qSender).
                Components[i]).Text;
              FieldByName('ITEMINDEX').Value := TDBComboBox(TForm(qSender).
                Components[i]).ItemIndex;
              vCompFieldName := GetCompFieldName(TDBComboBox(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TDBLOOKUPCOMBOBOX
            if (TForm(qSender).Components[i] is TDBLookupComboBox) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TDBLOOKUPCOMBOBOX';
              FieldByName('DATAFIELD').Value := TDBLookupComboBox(
                TForm(qSender).Components[i]).DataField;
              FieldByName('VALUE').Value  := TDBLookupComboBox(TForm(qSender).
                Components[i]).Text;
              FieldByName('KEYFIELD').Value := TDBLookupComboBox(
                TForm(qSender).Components[i]).KeyField;
              FieldByName('LISTFIELD').Value := TDBLookupComboBox(
                TForm(qSender).Components[i]).ListField;
              FieldByName('KEYVALUE').Value := TDBLookupComboBox(
                TForm(qSender).Components[i]).KeyValue;
              vCompFieldName := GetCompFieldName(TDBLookupComboBox(TForm(
                qSender).Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TRADIOBUTTON
            if (TForm(qSender).Components[i] is TRadioButton) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TRadioButton';
              FieldByName('CHECKEDVALUE').Value := TRadioButton(TForm(qSender).
                Components[i]).Checked;
              FieldByName('ITEMINDEX').Value  := TComboBox(TForm(qSender).
                Components[i]).ItemIndex;
              vCompFieldName := GetCompFieldName(TRadioButton(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TRADIOGROUP
            if (TForm(qSender).Components[i] is TRadioGroup) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TRadioGroup';
              FieldByName('ITEMINDEX').Value := TRadioGroup(TForm(qSender).
                Components[i]).ItemIndex;
              vCompFieldName := GetCompFieldName(TRadioGroup(TForm(qSender).
                Components[i]).Name);
            end else
            //INFORMAÇÕES SOBRE O COMPONENTE TDBRADIOGROUP
            if (TForm(qSender).Components[i] is TDBRadioGroup) then
            begin
              FieldByName('COMPONENTTYPE').Value  := 'TDBRadioGroup';
              FieldByName('DATAFIELD').Value := TDBRadioGroup(TForm(qSender).
                Components[i]).DataField;
              FieldByName('ITEMINDEX').Value := TDBRadioGroup(TForm(qSender).
                Components[i]).ItemIndex;
              vCompFieldName := GetCompFieldName(TDBRadioGroup(TForm(qSender).
                Components[i]).Name);
            end;

            {PREENCHENDO INFORMAÇÕES SOBRE O FIELD, INFORMADOS NO
             CLIENTDATASET: CDSFIELDSINFO}
            for I2 := 0 to qCdsFieldsInfo.FieldCount - 1 do
            begin
              //SE A TAG DO COMPONENTE FOR DIFERENTE DE 99
              if (qCdsFieldsInfo.Fields.Fields[i2].Tag <>
                SFPcTagNotSearchField) then
              begin
                  vFieldName := GetFieldName(qCdsFieldsInfo.Fields.Fields[i2].
                    FieldName, FieldByName('COMPONENTTYPE').Value);
                //SE O NOME DO FIELD INFORMADO NO COMPONENTE FOR IGUAL AO
                //NOME DO FIELD INFORMADO NO CDSFIELDINFO
                if (vCompFieldName = vFieldName) then
                begin
                  //NOME DA TABELA, EXTRAIDA DO FIELDNAME DO CDS
                  FieldByName('FIELDTABLENAME').Value := (GetFieldTableName
                    (qCdsFieldsInfo.Fields.Fields[i2].FieldName));
                  //NOME DO FIELD, EXTRAIDO DO FIELDNAME DO CDS
                  FieldByName('FIELDNAME').Value := vFieldName;
                  //TIPO DO FIELD, EXTRAIDO DO CDS
                  FieldByName('FIELDTYPE').Value := (
                    SetiUseFulGetNameFieldType(qCdsFieldsInfo.Fields.
                      Fields[i2].DataType));
                  //TAMANHO DO FIELD, EXTRAIDO DO CDS
                  FieldByName('FIELDSIZE').Value := (qCdsFieldsInfo.Fields.
                    Fields[i2].Size);
                  //CAPTION DO FIELD, EXTRAIDO DO CDS, PARA UTILIZAR NO GRID
                  FieldByName('DISPLAYLABEL').Value := qCdsFieldsInfo.Fields.
                    Fields[i2].DisplayLabel;
                  //TAMANHO DO FIELD, EXTRAIDO DO CDS, PARA UTILIZAR NO GRID
                  FieldByName('DISPLAYWIDTH').Value := qCdsFieldsInfo.Fields.
                    Fields[i2].DisplayWidth;
                  Post;
                end;
              end;
            end;// FIM DO FOR CDSFIELDSINFO




          end;// FIM VERIFICAÇÃO DOS TIPOS DOS COMPONENTES
        end; // FIM "WITH CDS COMPONENTES"
      end; // FIM DA VERIFICAÇÃO DA TAG DO COMPONENTE
    end; // FIM DO FOR TForm(Sender).ComponentCount

    //CONSTRUÇÃO DA QUERY
    //SE O BANCO UTILIZADO FOR SQLSERVER
    if (SFPcTypeDataBase = 'SQLSERVER') then
    begin
      {
      declare @sql nvarchar(4000)
      declare @monthNo int
      declare @minAmount decimal
      set @sql = N'
      select
       SalesPerson
      from
       dbo.SalesData
      where
       mon = @MonthNo
       and amount > @minAmount'

      set @monthNo = 2
      set @minAmount = 100

      exec sp_executesql @sql, N'@monthNo int, @minAmount decimal',
       @monthNo, @minAmount

      }

      AdoQry.Connection := SFPpAdoConnection(True);
      AdoQry.SQL.Clear;
      cdsComp.Open;
      DataSource1.DataSet := cdsComp;
      if NOT (cdsComp.IsEmpty) then
      begin
        cdsComp.First;
        //CRIAÇÃO DAS VARIÁVEIS
        while (NOT cdsComp.Eof) do
        begin
          with (cdsComp) do
          begin
            //SE O FIELD
            if (FieldByName('COMPONENTTYPE').AsString) = 'TEDIT' then
            begin
              //NVARCHAR
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftString) then
              begin
                  AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').AsString+
                                 ' NVARCHAR('+IntToStr(FieldByName('FIELDSIZE').
                                   AsInteger)+'; ');
                  AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                 ' = '+FieldByName('VALUE').AsString);
              end
              else
              //INTEGER
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftInteger) then
              begin
                  AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').AsString+
                                 ' INT; ');
                  AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                 ' = '+FieldByName('VALUE').AsString);
              end
              else
              //FLOAT
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftFloat) then
              begin
                  AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').AsString+
                                 ' NUMERIC(18,2); ');
                  AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                 ' = '+FieldByName('VALUE').AsString);
              end
              else
              //DATE
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftDate) then
              begin
                AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').
                  AsString+ ' DATE; ');
                AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                               ' = CONVERT(VARCHAR,'+
                               FieldByName('VALUE').AsString+',112');
              end
              else
              //TIME
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftTime) then
              begin
                AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').
                  AsString+ ' TIME; ');
                AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                               ' = CONVERT(VARCHAR,'+
                               FieldByName('VALUE').AsString+',114');
              end
              else
              //DATETIME
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftDateTime) then
              begin
                //DATETIME NORMAL = 0;
                if (GetDateTimeType(FieldByName('FIELDTYPE').AsString)) = 0 then
                begin
                  AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').
                    AsString+ ' DATETIME; ');
                  AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                 ' = CONVERT(VARCHAR,'+
                                 FieldByName('VALUE').AsString+',112');
                end
                else
                //DATETIME INICIAL = 1;
                if (GetDateTimeType(FieldByName('FIELDTYPE').AsString)) = 1 then
                begin
                    AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').
                      AsString+ ' DATETIME; ');
                    AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                   ' = CONVERT(VARCHAR,'+
                                   FieldByName('VALUE').AsString+',112'+
                                   ' 00:00:00.000 ');
                end
                else
                //DATETIME FINAL = 2;
                if (GetDateTimeType(FieldByName('FIELDTYPE').AsString)) = 2 then
                begin
                  AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').
                    AsString+ ' DATETIME; ');
                  AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                                 ' = CONVERT(VARCHAR,'+
                                 FieldByName('VALUE').AsString+',112'+
                                 ' 23:59:59.000');
                end
              end;
            end// FIM COMPONENTE TEDIT
            else
            //NCHAR - TCHECKBOX
            if (FieldByName('COMPONENTTYPE').AsString = 'TCHECKBOX') then
            begin
              if (SetiUseFulGetiFieldType(FieldByName('FIELDTYPE').AsString ) =
                ftString) then
              begin
                //GetCheckBoxValue('TESTE_STATUS-DILENO.ENZO',CheckBox1.Checked);

                AdoQry.SQL.Add(' DECLARE @'+FieldByName('FIELDNAME').AsString+
                               ' NCHAR('+IntToStr(FieldByName('FIELDSIZE').
                                   AsInteger)+'; ');
                AdoQry.SQL.Add(' SET @'+FieldByName('FIELDNAME').AsString+
                               ' = '+GetCheckBoxValue(FieldByName('FIELDNAME').
                               AsString,FieldByName('CHECKEDVALUE').Value));
              end;
            end;// FIM COMPONENTE TCHECKBOX
          end;// FIM WITH CDSCOMP
          cdsComp.Next;
        end;// FIM WHILE CDSCOMP
      end;//FIM cdsComp.IsEmpty
    end;//FIM DA VERIFICAÇÃO DO BANCO DE DADOS SQLSERVER
  except on e : exception do
    SetiMens(0,e.Message,'Error');
  end;
end;

procedure TfrmDefaultSearch.Control(State: Integer);
var
  i : Integer;
begin
{
      State = 0 : INITIAL;
      State = 1 : SEARCH;
      State = 2 : CANCELING;
      State = 3 : CLEANING UP;

      TAGS = 99 : DO NOT USE;

      TButtonPen TAGS:
        0 : OTHERS BUTTON;
        1 : SEARCH BUTTON;
        2 : CANCEL BUTTON;
        3 : CLEAR BUTTON;
        4 : SELECT BUTTON;
}

    try
      for I := 0 to ComponentCount -1 do begin
          if (Components[i].Tag <> SFPcTagNotControlComp) then begin
              //TEDIT
              if (Components[i] is TEdit) then begin
                   with (TEdit(Components[i])) do begin
                        //Clear
                        if  (State = 0) or
                            (State = 2) or
                            (State = 3) then begin
                            Clear;
                        end;
                   end;
              end;
          end;
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;

end;

procedure TfrmDefaultSearch.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    try
      if (Assigned(qReturnCds)) then
        qReturnCds := Nil;
      if (Assigned(qDataSourceCds)) then
        qDataSourceCds := Nil;
    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmDefaultSearch.FormCreate(Sender: TObject);
begin
  inherited;
    try
      //Control(0);
      qReturnCds := TClientDataSet.Create(Self);
      qDataSourceCds := TDataSource.Create(Self);
      qDataSourceCds.DataSet := qReturnCds;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmDefaultSearch.FormShow(Sender: TObject);
begin
  inherited;
    SetReturnCds(BuildFormSerch);
end;

function TfrmDefaultSearch.GetAndForClauseWhere: string;
begin
    Result := FAndForClauseWhere;
end;

function TfrmDefaultSearch.GetCdsFieldsInfo: TClientDataSet;
begin
    Result := FCdsFieldsInfo;
end;

function TfrmDefaultSearch.GetCheckBoxValue(CdsFieldName: string;
Checked:Boolean): string;
var
  counter : Integer;
  position : Integer;
  position2 : Integer;
  i : Integer;

var nPosicao:Integer;
    sProcura:String;
    nContador:Integer;

    str : string;
begin
    try
      Result := '';

		  counter := Length(CdsFieldName);
      position := -1;
      position2 := -1;

      position := pos('-',CdsFieldName);
      position2 := pos('.',CdsFieldName);

      if (position > 0) then begin
        if (Checked) then
          Result := Copy(CdsFieldName,position2+1,counter)
        else
        begin
          sProcura := Copy(CdsFieldName,position+1,counter);
          str := '';
          nPosicao := 0;
          nContador := 1;
          while nContador < Length(sProcura) do
          begin
            nPosicao := PosEx('.',sProcura,nContador);
            if nPosicao > 0  then
            begin
               str := str + Copy(sProcura,nContador,nPosicao - nContador);
               nContador := nPosicao;
            end;
            Inc(nContador);
          end;
          Result := str;
        end;
      end;

    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;

function TfrmDefaultSearch.GetCompFieldName(CompName: string): string;
var
  SizeFieldName : Integer;
begin
    try
      Result := '';
      SizeFieldName := (Length(CompName)-3);
      Result := copy(UpperCase(CompName), 4, SizeFieldName);
    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;

function TfrmDefaultSearch.GetDateTimeType(CdsFieldName: string): Integer;
var
  counter : Integer;
  position : Integer;
  i : Integer;
begin
    try
      Result := -1;

		  counter := Length(CdsFieldName);
      position := -1;

      position := pos('-',CdsFieldName);

      if (position > 0) then begin
        Result := StrToIntDef(Copy(CdsFieldName,position+1,counter),-1);
      end;

    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;

function TfrmDefaultSearch.GetFieldName(CdsFieldName: string;
CdsFieldType: String): string;
var
  counter : Integer;
  counter2 : Integer;
  position : Integer;
  position2 : Integer;
  i : Integer;
begin
    try
      Result := '';

		  counter := Length(CdsFieldName);
      position := -1;

      if (UpperCase(CdsFieldType) = 'TCHECKBOX') then
      begin
        position := pos('_',CdsFieldName);

        if (position > 0) then begin
          Result := Copy(CdsFieldName,position+1,counter);
        end;
      end else
      begin
        position := pos('_',CdsFieldName);
        position2 := pos('-',CdsFieldName);

        if (position > 0) then
        begin
          if (position2 > 0) then
          begin
            parei aqui



          end;
        end;




      end;
    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;
 {		  counter := Length(CdsFieldName);
      position := -1;
      position2 := -1;

      position := pos('-',CdsFieldName);
      position2 := pos('.',CdsFieldName);

      if (position > 0) then begin
        if (Checked) then
          Result := Copy(CdsFieldName,position2+1,counter)
        else
        begin
          sProcura := Copy(CdsFieldName,position+1,counter);
          str := '';
          nPosicao := 0;
          nContador := 1;
          while nContador < Length(sProcura) do
          begin
            nPosicao := PosEx('.',sProcura,nContador);
            if nPosicao > 0  then
            begin
               str := str + Copy(sProcura,nContador,nPosicao - nContador);
               nContador := nPosicao;
            end;
            Inc(nContador);
          end;
          Result := str;
        end;
      end;         }





function TfrmDefaultSearch.GetFieldTableName(CdsFieldName: string): string;
var
  counter : Integer;
  position : Integer;
  i : Integer;
begin
    try
      Result := '';

		  counter := Length(CdsFieldName);
      position := -1;

      position := pos('_',CdsFieldName);

      if (position > 0) then begin
        Result := Copy(CdsFieldName,1,position-1);
      end;

    except on e : exception do
      SetiMens(0,e.Message,'Error');
    end;
end;

function TfrmDefaultSearch.GetOrderBy: string;
begin
    Result := FOrderBy;
end;

function TfrmDefaultSearch.GetQry: string;
begin
    Result := FQry;
end;

function TfrmDefaultSearch.GetReturnCds: TClientDataSet;
begin
    Result := FReturnCds;
end;

function TfrmDefaultSearch.GetSender: TObject;
begin
    Result := FSender;
end;

procedure TfrmDefaultSearch.SetAndForClauseWhere(const Value: string);
begin
    FAndForClauseWhere := Value;
end;

procedure TfrmDefaultSearch.SetCdsFieldsInfo(const Value: TClientDataSet);
begin
    FCdsFieldsInfo := Value;
end;

procedure TfrmDefaultSearch.SetOrderBy(const Value: string);
begin
    FOrderBy := Value;
end;

procedure TfrmDefaultSearch.SetQry(const Value: string);
begin
    FQry := Value;
end;

procedure TfrmDefaultSearch.SetReturnCds(const Value: TClientDataSet);
begin
    FReturnCds := Value;
end;

procedure TfrmDefaultSearch.SetSender(const Value: TObject);
begin
    FSender := Value;
end;

end.
