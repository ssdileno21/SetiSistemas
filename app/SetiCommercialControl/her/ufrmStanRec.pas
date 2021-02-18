unit ufrmStanRec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Buttons,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, uSetiConnects, uFSPanel, uFSDialogs,
  uFSUF, Vcl.StdCtrls, uSetiUseful;

type
  TfrmStanRec = class(TForm)
    Panel1: TPanel;
    dsStandard: TDataSource;
    sqlStandard: TSQLQuery;
    dspStandard: TDataSetProvider;
    cdsStandard: TClientDataSet;
    ConnStandard: TSQLConnection;
    dsAux: TDataSource;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    SFPanel1: TSFPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsStandardBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsStandardBeforeInsert(DataSet: TDataSet);
    procedure cdsStandardAfterPost(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure cdsStandardAfterDelete(DataSet: TDataSet);
    procedure cdsStandardAfterCancel(DataSet: TDataSet);
    procedure cdsStandardBeforeEdit(DataSet: TDataSet);
  private
    FConnects: TSetiConnects;
    FFormId: Integer;
    FPass: string;
    { Private declarations }
    procedure ProviderFlags;
    procedure TextSetFocus(pObj:TObject);    
    {Function form 1}
    function thereisrecord : Boolean;
    function Criptografa(Senha: String): String;    
  public
    { Public declarations }
    procedure GetFillDescById(IdField:TDBEdit;
                              DescField:TEdit;
                              TableName:string;
                              FieldIdName:string;
                              FieldDescName:string);    
    procedure NumberValidate(Sender: TObject; var Key: Char);
    procedure NaviSetFocus(Button: TNavigateBtn; pObj:TObject);
    property qConnects : TSetiConnects read FConnects write FConnects;
    procedure SetFormId(const Value: Integer);
    procedure SetPass(const Value: string);
    property FormId : Integer read FFormId write SetFormId;
    property Pass : string read FPass write SetPass;
  end;

  type
  TDBNewNavigator = class(TDBNavigator);

var
  frmStanRec: TfrmStanRec;

implementation

{$R *.dfm}

uses udmLogin, udmGen;

procedure TfrmStanRec.cdsStandardAfterCancel(DataSet: TDataSet);
begin
    DBGrid1.DataSource := dsStandard;
end;

procedure TfrmStanRec.cdsStandardAfterDelete(DataSet: TDataSet);
begin
    cdsStandard.ApplyUpdates(0);
end;

procedure TfrmStanRec.cdsStandardAfterPost(DataSet: TDataSet);
begin
    DBGrid1.DataSource := dsStandard;
    cdsStandard.ApplyUpdates(0);
end;

procedure TfrmStanRec.cdsStandardBeforeEdit(DataSet: TDataSet);
begin
    DBGrid1.DataSource := dsAux;
end;

procedure TfrmStanRec.cdsStandardBeforeInsert(DataSet: TDataSet);
begin
    DBGrid1.DataSource := dsAux;
end;

procedure TfrmStanRec.cdsStandardBeforePost(DataSet: TDataSet);
var
  vGen : string;
  vId : string;
begin
    try
      if FormId = 2 then vId := 'ID';
      if FormId = 3 then vId := 'ID';
      if FormId = 4 then vId := 'ID';
      if FormId = 5 then vId := 'ID';
    
      if FormId = 2 then vGen := 'GEN_ID_USUARIO';
      if FormId = 3 then vGen := 'GEN_ID_PRODUTO';
      if FormId = 4 then vGen := 'GEN_ID_CLIENTE';
      if FormId = 5 then vGen := 'GEN_ID_FUNCIONARIO';

      if not (ValidatedFields(DataSet)) then
        Abort;

      if (FormId = 1) then
      begin
        if thereisrecord then
          begin
            SetiMens(Mess29,1);
            Abort;
          end;
      end;

      dmGen := TdmGen.Create(Nil);
      cdsStandard.FieldByName(vId).AsInteger :=
      dmGen.ProximoId(vGen);
      dmGen := Nil;

      if (FormId = 2) then
      begin
        cdsStandard.FieldByName('SENHA').AsString := Criptografa(Pass);
      end;
      if (FormId in [2,3,4,5]) then
      begin
        cdsStandard.FieldByName('STATUS').AsString := 'S';
      end;
      if (FormId = 5) then
      begin
        cdsStandard.FieldByName('VENDEDOR').AsString := 'S';
        cdsStandard.FieldByName('TECNICO').AsString := 'N';
      end;
      
    finally

    end;
end;

function TfrmStanRec.Criptografa(Senha: String): String;
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
        SetiMens(e.Message,0);
    end;
end;

procedure TfrmStanRec.DBGrid1TitleClick(Column: TColumn);
begin
    gridorders(DBGrid1,Column);
end;

procedure TfrmStanRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
      if Assigned(qConnects) then
        qConnects := Nil;
    finally

    end;
end;

procedure TfrmStanRec.FormCreate(Sender: TObject);
begin
    try
      ufAlterNavi(DBNavigator1);
      qConnects := TSetiConnects.Create;
      ConnStandard := qConnects.ConnectsFIREBIRD;
      ConnStandard.Connected := True;
      sqlStandard.SQLConnection := qConnects.ConnectsFIREBIRD;
      cdsStandard.Close;
      cdsStandard.Open;
    except on e : exception do
        SetiMens(e.Message,0);
    end
end;

procedure TfrmStanRec.FormShow(Sender: TObject);
begin
    ProviderFlags;
end;

procedure TfrmStanRec.GetFillDescById(IdField: TDBEdit; DescField: TEdit;
  TableName, FieldIdName, FieldDescName: string);
var
    vQry : TSQLQuery;  
begin
    if IdField.Text <> '' then
    begin
      try
        qConnects := TSetiConnects.Create;
        vQry := TSQLQuery.Create(Nil);
        vQry.SQLConnection :=
          qConnects.ConnectsFIREBIRD(False);
        vQry.SQL.Add('SELECT FIRST 1 '+FieldDescName+' ');
        vQry.SQL.Add('FROM '+TableName +' ');
        vQry.SQL.Add('WHERE '+FieldIdName+ ' = :ID ');
        vQry.Params.ParamByName('ID').Value := StrToInt(IdField.Text);
        vQry.Open;
        if NOT (vQry.IsEmpty) then
        begin
            DescField.Text := vQry.FieldByName(FieldDescName).Value;
        end else
        begin
          IdField.Clear;
          DescField.Clear;
        end;
      finally
        vQry.Free;
        qConnects.Free;
      end;
    end else
    begin
      IdField.Clear;
      DescField.Clear;
    end;
end;

procedure TfrmStanRec.NaviSetFocus(Button: TNavigateBtn; pObj: TObject);
begin
    case Button of
     nbFirst    : TextSetFocus(pObj);
     nbPrior    : TextSetFocus(pObj);
     nbNext     : TextSetFocus(pObj);
     nbLast     : TextSetFocus(pObj);
     nbInsert   : TextSetFocus(pObj);
     nbDelete   : TextSetFocus(pObj);
     nbEdit     : TextSetFocus(pObj);
     nbPost     : TextSetFocus(pObj);
     nbCancel   : TextSetFocus(pObj);
     nbRefresh  : TextSetFocus(pObj);
    end;
end;

procedure TfrmStanRec.NumberValidate(Sender: TObject; var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmStanRec.ProviderFlags;
var
  vSzFieldInt, vSzFieldStr, vSzFieldFlo, vRequired : Integer;

begin
    try
      vSzFieldInt := 10;
      vSzFieldStr := 30;
      vSzFieldFlo := 15;
      vRequired := 1;
      with cdsStandard do
      begin
        if (FormId = 1) then
        begin
          {$region}
          FieldByName('ID').DisplayLabel := 'Cod.';
          FieldByName('NOMEFANTASIA').DisplayLabel := 'Nome fantasia';
          FieldByName('RAZAOSOCIAL').DisplayLabel := 'Raz�o social';
          FieldByName('CNPJ').DisplayLabel := 'CNPJ';
          FieldByName('INSCRICAOESTADUAL').DisplayLabel := 'Insc.Estadual';
          FieldByName('INSCRICAOMUNICIPAL').DisplayLabel := 'Insc.Municipal';
          FieldByName('IEST').DisplayLabel := 'IE.ST.';
          FieldByName('LOGRADOUROCEP').DisplayLabel := 'Cep';
          FieldByName('LOGRADOURO').DisplayLabel := 'Logradouro';
          FieldByName('LOGRADOURONUM').DisplayLabel := 'Numero';
          FieldByName('LOGRADOUROCOMP').DisplayLabel := 'Comp.';
          FieldByName('LOGRADOUROBAIRRO').DisplayLabel := 'Bairro';
          FieldByName('LOGRADOUROUF').DisplayLabel := 'UF.';
          FieldByName('LOGRADOUROCIDADE').DisplayLabel := 'Cidade';
          FieldByName('EMAIL').DisplayLabel := 'Email';
          FieldByName('NUMTELEFONE1').DisplayLabel := 'Tel1';
          FieldByName('NUMTELEFONE2').DisplayLabel := 'Tel2';
          FieldByName('FAX').DisplayLabel := 'Fax';
          FieldByName('DATCADASTRO').DisplayLabel := 'Dat.Cadastro';
          FieldByName('DATALTERACAO').DisplayLabel := 'Dat.Alteracao';
          FieldByName('ID_USUARIOCAD').DisplayLabel := 'Usu.Cadastro';
          FieldByName('ID_USUARIOALT').DisplayLabel := 'Usu.Alteracao';

          FieldByName('ID').DisplayWidth := vSzFieldInt;
          FieldByName('NOMEFANTASIA').DisplayWidth := vSzFieldStr;
          FieldByName('RAZAOSOCIAL').DisplayWidth := vSzFieldStr;
          FieldByName('CNPJ').DisplayWidth := vSzFieldInt;
          FieldByName('INSCRICAOESTADUAL').DisplayWidth := vSzFieldInt;
          FieldByName('INSCRICAOMUNICIPAL').DisplayWidth := vSzFieldInt;
          FieldByName('IEST').DisplayWidth := vSzFieldStr;
          FieldByName('LOGRADOUROCEP').DisplayWidth := vSzFieldInt;
          FieldByName('LOGRADOURO').DisplayWidth := vSzFieldStr;
          FieldByName('LOGRADOURONUM').DisplayWidth := vSzFieldInt;
          FieldByName('LOGRADOUROCOMP').DisplayWidth := vSzFieldStr;
          FieldByName('LOGRADOUROBAIRRO').DisplayWidth := vSzFieldStr;
          FieldByName('LOGRADOUROUF').DisplayWidth := vSzFieldStr;
          FieldByName('LOGRADOUROCIDADE').DisplayWidth := vSzFieldStr;
          FieldByName('EMAIL').DisplayWidth := vSzFieldStr;
          FieldByName('NUMTELEFONE1').DisplayWidth := vSzFieldInt;
          FieldByName('NUMTELEFONE2').DisplayWidth := vSzFieldInt;
          FieldByName('FAX').DisplayWidth := vSzFieldInt;
          FieldByName('DATCADASTRO').DisplayWidth := vSzFieldStr;
          FieldByName('DATALTERACAO').DisplayWidth := vSzFieldStr;
          FieldByName('ID_USUARIOCAD').DisplayWidth := vSzFieldStr;
          FieldByName('ID_USUARIOALT').DisplayWidth := vSzFieldStr;

          FieldByName('ID').Tag := vRequired;
          FieldByName('NOMEFANTASIA').Tag := vRequired;
          FieldByName('RAZAOSOCIAL').Tag := vRequired;
          FieldByName('CNPJ').Tag := vRequired;
          {$endregion}
        end else
        if (FormId = 2) then
        begin
          {$region}
          FieldByName('ID').DisplayLabel := 'Cod.';
          FieldByName('NOME').DisplayLabel := 'Nome';
          FieldByName('LOGIN').DisplayLabel := 'Login';
          FieldByName('SENHA').DisplayLabel := 'Senha';

          FieldByName('ID').DisplayWidth := vSzFieldInt;
          FieldByName('NOME').DisplayWidth := vSzFieldStr;
          FieldByName('LOGIN').DisplayWidth := vSzFieldStr;

          FieldByName('SENHA').Visible := False;
          FieldByName('ID_PERFIL').Visible := False;

          FieldByName('NOME').Tag := vRequired;
          FieldByName('LOGIN').Tag := vRequired;
          FieldByName('SENHA').Tag := vRequired;

          FieldByName('NOME').Required := False;
          FieldByName('LOGIN').Required := False;
          FieldByName('ID_PERFIL').Required := False;
          {$endregion}          
        end else
        if (FormId = 3) then
        begin
          {$region}
          FieldByName('ID').DisplayLabel := 'Cod.';
          FieldByName('NOME').DisplayLabel := 'Nome';
          FieldByName('CODIGOINTERNO').DisplayLabel := 'Cod.Interno';
          FieldByName('CODIGOBARRAS').DisplayLabel := 'Cod.Barras';
          FieldByName('DESCRICAO').DisplayLabel := 'Descri��o';
          FieldByName('VLRCUSTO').DisplayLabel := 'Custo';
          FieldByName('VLRDESPESAS').DisplayLabel := 'Despesas';
          FieldByName('VLRDESPESASOUTROS').DisplayLabel := 'Outras despesas';
          FieldByName('VLRCUSTOFINAL').DisplayLabel := 'Custo final';
          FieldByName('VLRLUCROREQUERIDO').DisplayLabel := 'Lucro requerido';
          FieldByName('VLRVENDASUGERIDO').DisplayLabel := 'Vlr.venda sugerida';
          FieldByName('VLRVENDAUTILIZADO').DisplayLabel
            := 'Vlr.venda utilizada';

          FieldByName('ID').DisplayWidth := vSzFieldInt;
          FieldByName('NOME').DisplayWidth := vSzFieldStr;
          FieldByName('CODIGOINTERNO').DisplayWidth := vSzFieldInt;
          FieldByName('CODIGOBARRAS').DisplayWidth := vSzFieldStr;
          FieldByName('DESCRICAO').DisplayWidth := vSzFieldStr;
          FieldByName('VLRCUSTO').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRDESPESAS').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRDESPESASOUTROS').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRCUSTOFINAL').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRLUCROREQUERIDO').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRVENDASUGERIDO').DisplayWidth := vSzFieldFlo;
          FieldByName('VLRVENDAUTILIZADO').DisplayWidth := vSzFieldFlo;

          FieldByName('IDFORNECEDOR').Visible := False;
          FieldByName('IDPRODUTOGRUPO').Visible := False;
          FieldByName('IDPRODUTOSUBGRUPO').Visible := False;
          FieldByName('IDPRODUTOMARCA').Visible := False;
          FieldByName('IDPRODUTOMODELO').Visible := False;
          FieldByName('PESO').Visible := False;
          FieldByName('LARGURA').Visible := False;
          FieldByName('ALTURA').Visible := False;
          FieldByName('COMPRIMENTO').Visible := False;
          FieldByName('COMISSAO').Visible := False;
          FieldByName('UNIDADEVENDA').Visible := False;
          FieldByName('IDNCM').Visible := False;
          FieldByName('IDCEST').Visible := False;
          FieldByName('IDCFOP').Visible := False;
          FieldByName('IDICMSSITTRIBUTARIA').Visible := False;
          FieldByName('IDICMSORIGEM').Visible := False;
          FieldByName('IDIPISITTRIBUTARIA').Visible := False;
          FieldByName('IDPISSITTRIBUTARIA').Visible := False;
          FieldByName('IDCOFINSSITTRIBUTARIA').Visible := False;
          FieldByName('MOVIMENTAESTOQUE').Visible := False;
          FieldByName('HABNF').Visible := False;
          FieldByName('POSSUICOMPOSICAO').Visible := False;
          FieldByName('USOCONSUMO').Visible := False;
          FieldByName('VENDIDOSEPARADAMENTE').Visible := False;
          FieldByName('COMERCIALIZAPDV').Visible := False;
          FieldByName('ALTERAPRECONAVENDA').Visible := False;
          FieldByName('DTACADASTRO').Visible := False;
          FieldByName('IDUSUARIOCAD').Visible := False;
          FieldByName('DTAATUALIZACAO').Visible := False;
          FieldByName('IDUSUARIOATU').Visible := False;
          FieldByName('STATUS').Visible := False;
          FieldByName('QTDESTOQUEINICIAL').Visible := False;
          FieldByName('UTILIZAREMSERVICOS').Visible := False;

          FieldByName('NOME').Tag := vRequired;
          {$endregion}
        end else
        if (FormId = 4) then
        begin
          {$region}
          FieldByName('ID').DisplayLabel := 'Cod.';                  
          FieldByName('NOME').DisplayLabel := 'Raz�o social';
          FieldByName('NOMEFANTASIA').DisplayLabel := 'Nome fantasia';
          FieldByName('CODIGOINTERNO').DisplayLabel := 'Cod.Interno';
          FieldByName('EMAIL').DisplayLabel := 'Email';
          FieldByName('TIPOPESSOA').DisplayLabel := 'Tipo pessoa';
          FieldByName('CPFCNPJ').DisplayLabel := 'CPFCNPJ';
          FieldByName('NUMTELEFONE').DisplayLabel := 'Num.Telefone';
          FieldByName('NUMCELULAR').DisplayLabel := 'Num.Celular';
          FieldByName('DATANIVERSARIO').DisplayLabel := 'Dta.Aniversario';
          FieldByName('DATCADASTRO').DisplayLabel := 'Dta.Cadastro';
          FieldByName('DATULTMOVIMENTACAO').DisplayLabel := 'Dta.Movimentacao';
          FieldByName('OBSERVACAO').DisplayLabel := 'Observacao';
          FieldByName('LOGRADOUROCEP').DisplayLabel := 'Logradouro cep.';
          FieldByName('LOGRADOURO').DisplayLabel := 'Logradouro';
          FieldByName('LOGRADOURONUM').DisplayLabel := 'Logradouro num.';
          FieldByName('LOGRADOUROCOMP').DisplayLabel := 'Logradouro comp.';
          FieldByName('LOGRADOUROBAIRRO').DisplayLabel := 'Logradouro bairro';
          FieldByName('LOGRADOUROUF').DisplayLabel := 'Logradouro uf.';
          FieldByName('LOGRADOUROCIDADE').DisplayLabel := 'Logradouro cidade';
          FieldByName('STATUS').DisplayLabel := 'Status';
          FieldByName('ID_REGIAO').DisplayLabel := 'Cod.Regiao';
          FieldByName('ID_SETOR').DisplayLabel := 'Cod.Setor';
          FieldByName('ID_ROTA').DisplayLabel := 'Cod.Rota';
          FieldByName('COMPRADORRESP').DisplayLabel := 'Comprador resp.';
          FieldByName('VLRDESCESPECIAL').DisplayLabel := 'Vlr.Desc.Especial';
          FieldByName('INSESTADUAL').DisplayLabel := 'Ins.Estadual';

          FieldByName('ID').Visible := True;             
          FieldByName('NOME').Visible := True; 
          FieldByName('NOMEFANTASIA').Visible := True;
          FieldByName('CODIGOINTERNO').Visible := True;
          FieldByName('EMAIL').Visible := False;
          FieldByName('TIPOPESSOA').Visible := True;
          FieldByName('CPFCNPJ').Visible := False;
          FieldByName('NUMTELEFONE').Visible := False;
          FieldByName('NUMCELULAR').Visible := False;
          FieldByName('DATANIVERSARIO').Visible := False;
          FieldByName('DATCADASTRO').Visible := False;
          FieldByName('DATULTMOVIMENTACAO').Visible := False;
          FieldByName('OBSERVACAO').Visible := False;
          FieldByName('LOGRADOUROCEP').Visible := False;
          FieldByName('LOGRADOURO').Visible := False;
          FieldByName('LOGRADOURONUM').Visible := False;
          FieldByName('LOGRADOUROCOMP').Visible := False;
          FieldByName('LOGRADOUROBAIRRO').Visible := False;
          FieldByName('LOGRADOUROUF').Visible := False;
          FieldByName('LOGRADOUROCIDADE').Visible := False;
          FieldByName('STATUS').Visible := True;
          FieldByName('ID_REGIAO').Visible := True;
          FieldByName('ID_SETOR').Visible := True;
          FieldByName('ID_ROTA').Visible := True;
          FieldByName('COMPRADORRESP').Visible := True;
          FieldByName('VLRDESCESPECIAL').Visible := False;
          FieldByName('INSESTADUAL').Visible := False;

          FieldByName('ID').DisplayWidth := vSzFieldInt;             
          FieldByName('NOME').DisplayWidth := vSzFieldStr; 
          FieldByName('NOMEFANTASIA').DisplayWidth := vSzFieldStr;
          FieldByName('CODIGOINTERNO').DisplayWidth := vSzFieldInt;          
          FieldByName('TIPOPESSOA').DisplayWidth := vSzFieldStr;  
          FieldByName('STATUS').DisplayWidth := vSzFieldStr;
          FieldByName('ID_REGIAO').DisplayWidth := vSzFieldInt;
          FieldByName('ID_SETOR').DisplayWidth := vSzFieldInt;
          FieldByName('ID_ROTA').DisplayWidth := vSzFieldInt;
          FieldByName('COMPRADORRESP').DisplayWidth := vSzFieldStr;  
 
          FieldByName('NOME').Tag := vRequired;
          FieldByName('NOMEFANTASIA').Tag := vRequired;
          FieldByName('TIPOPESSOA').Tag := vRequired;
          FieldByName('CPFCNPJ').Tag := vRequired;
          {$endregion}
        end else
        if (FormId = 5) then
        begin
          {$region}
          FieldByName('ID').DisplayLabel := 'Cod.';
          FieldByName('NOME').DisplayLabel := 'Nome';
          FieldByName('CODIGOINTERNO').DisplayLabel := 'Cod.Interno';
          FieldByName('EMAIL').Visible := False;
          FieldByName('CPFCNPJ').Visible := False;
          FieldByName('NUMTELEFONE').Visible := False;
          FieldByName('NUMCELULAR').Visible := False;
          FieldByName('DATANIVERSARIO').Visible := False;
          FieldByName('DATCADASTRO').DisplayLabel := 'Dta.Cadastro';
          FieldByName('DATULTMOVIMENTACAO').DisplayLabel := 'Dta.Ult.Mov.';
          FieldByName('OBSERVACAO').Visible := False;
          FieldByName('LOGRADOUROCEP').Visible := False;
          FieldByName('LOGRADOURO').Visible := False;
          FieldByName('LOGRADOURONUM').Visible := False;
          FieldByName('LOGRADOUROCOMP').Visible := False;
          FieldByName('LOGRADOUROBAIRRO').Visible := False;
          FieldByName('LOGRADOUROUF').Visible := False;
          FieldByName('LOGRADOUROCIDADE').Visible := False;
          FieldByName('DATADMISSAO').Visible := False;
          FieldByName('DATDESLIGAMENTO').Visible := False;
          FieldByName('VENDEDOR').DisplayLabel := 'Vendedor';
          FieldByName('TECNICO').Visible := False;
          FieldByName('STATUS').Visible := False;


          FieldByName('ID').DisplayWidth := vSzFieldInt;
          FieldByName('NOME').DisplayWidth := vSzFieldStr;
          FieldByName('DATCADASTRO').DisplayWidth := vSzFieldStr;
          FieldByName('DATULTMOVIMENTACAO').DisplayWidth := vSzFieldStr;
          FieldByName('VENDEDOR').DisplayWidth := vSzFieldStr;

          FieldByName('NOME').Tag := vRequired;
          FieldByName('CPFCNPJ').Tag := vRequired;

          {$endregion}
        end;
      end;
    except on e : exception do
        SetiMens(e.Message,0);
    end
end;

procedure TfrmStanRec.SetFormId(const Value: Integer);
begin
  FFormId := Value;
end;

procedure TfrmStanRec.SetPass(const Value: string);
begin
  FPass := Value;
end;

procedure TfrmStanRec.TextSetFocus(pObj: TObject);
begin
    try
      if (pObj is TDBEdit) then
        TDBEdit(pObj).SetFocus;          
      if (pObj is TEdit) then        
        TEdit(pObj).SetFocus;       
    finally

    end;
end;

function TfrmStanRec.thereisrecord: Boolean;
var
  vQry : TSQLQuery;
begin
    Result := False;
    try
      if FormId = 0 then
        Exit;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := qConnects.ConnectsFIREBIRD;
      vQry.Close;
      vQry.SQL.Clear;
        if FormId = 1 then
          vQry.SQL.Add('SELECT COUNT(*) FROM TBCADEMPRESA');
      vQry.Open;
      Result := not (vQry.IsEmpty);
    finally
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

end.