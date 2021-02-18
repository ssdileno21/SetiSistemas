unit ufrmCadCompras_Itens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  uSetiConnects, Vcl.ImgList, Vcl.Buttons, uLocate;

type
  TfrmCadCompras_Itens = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgProdutos: TDBGrid;
    sqlItens: TSQLQuery;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    sqlProdutos: TSQLQuery;
    dsItens: TDataSource;
    dsProdutos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    Panel3: TPanel;
    sbIncluirItem: TSpeedButton;
    sbDelItem: TSpeedButton;
    Panel4: TPanel;
    sbGravarItem: TSpeedButton;
    sbCancelar: TSpeedButton;
    edtNomeProduto: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCodCompra: TEdit;
    lbAvisoModo: TLabel;
    edtCodProduto: TEdit;
    edtVlrCusto: TEdit;
    edtQtdProduto: TEdit;
    SetiSqlStoredProc: TSQLStoredProc;
    Label6: TLabel;
    edtVlrFinal: TEdit;
    procedure FormShow(Sender: TObject);
    procedure sbIncluirItemClick(Sender: TObject);
    procedure sbGravarItemClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure dbeCodigoChange(Sender: TObject);
    procedure edtCodProdutoChange(Sender: TObject);
    procedure edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure sbDelItemClick(Sender: TObject);
    procedure edtQtdProdutoChange(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure edtVlrCustoChange(Sender: TObject);
    procedure edtVlrCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtVlrFinalKeyPress(Sender: TObject; var Key: Char);
    procedure edtVlrCustoExit(Sender: TObject);
    procedure edtVlrFinalExit(Sender: TObject);
    procedure edtQtdProdutoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    FLocate : TLocate;
    FIdCompras : Integer;
    FStatusTela : string;
    FModo : string;
    FCdsProvider : TClientDataSet;
    FListProviderForm : string;
    FqExisteItem: Boolean;
    FqVlrCusto: Double;
    FqId_CadProdutos: Integer;
    FqQtdProdutos: Integer;
    FqVlrFinal: Double;

    function ExisteProduto : Boolean;
    function ExisteProdutoCadastrado : Boolean;
    function ExcluiProduto : Boolean;
    function ExistemItens : Boolean;
    function PassaParametros : Boolean;

    procedure ControleTela;
    procedure ProviderForm;
    procedure ProviderFlag;
    procedure SetaCamposDbgrid;
    procedure VlrCusto;
    procedure AtualizaPedido;
    procedure ListaProdutos;
    procedure InsereProdutos;

    function GetStatusTela : string;
    function GetListProviderForm : string;
    function GetDescricaoProd(Id:Integer) : string;

    procedure SetListProviderForm(Const Value : string);
    procedure SetStatusTela(Const Value : string);
    procedure SetqExisteItem(const Value: Boolean);
    procedure SetqId_CadProdutos(const Value: Integer);
    procedure SetqQtdProdutos(const Value: Integer);
    procedure SetqVlrCusto(const Value: Double);
    procedure SetqVlrFinal(const Value: Double);

    property qConnects : TSetiConnects read FConnects write FConnects;
    property qId_CadProdutos : Integer read FqId_CadProdutos
    write SetqId_CadProdutos;
    property qQtdProdutos : Integer read FqQtdProdutos write SetqQtdProdutos;
    property qVlrCusto : Double read FqVlrCusto write SetqVlrCusto;
    property qVlrFinal : Double read FqVlrFinal write SetqVlrFinal;
    property qStatusTela : string read GetStatusTela write SetStatusTela;
    property cLocate : TLocate read FLocate write FLocate;
    property qCdsProvider: TClientDataSet read FCdsProvider write FCdsProvider;
    property qListProviderForm : string read GetListProviderForm write
      SetListProviderForm;

  public
    { Public declarations }

    function GetIdCompras : Integer;
    procedure SetIdCompras(Const Value : Integer);
    property qIdCompras : Integer read GetIdCompras write SetIdCompras;
    function GetModo : string;
    procedure SetModo(Const Value : string);
    property qModo : string read GetModo write SetModo;

  property qExisteItem : Boolean read FqExisteItem write SetqExisteItem;


  end;

var
  frmCadCompras_Itens: TfrmCadCompras_Itens;

implementation

{$R *.dfm}

uses uMess, uSetiConfig, uSetiUseful;

{ TfrmCadCompras_Itens }

procedure TfrmCadCompras_Itens.AtualizaPedido;
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_COMPRAS_ATUALIZA';
    SetiSqlStoredProc.ParamByName('IDCADCOMPRAS').Value := qIdCompras;
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

procedure TfrmCadCompras_Itens.ControleTela;
var
  vSet : Integer;
  vExisteItem : Integer; //existe item?
begin
    ListaProdutos;
    if ExistemItens then
      SetaCamposDbgrid;
    if (qModo = 'ABERTO') then vSet := 0;
    if (qModo = 'INSERT') or (qModo = 'UPDATE') then vSet := 1;
    if (qModo = 'SEARCH') then vSet := 2;
    if (qModo = 'NEW') then vSet := 3;

      lbAvisoModo.Visible := vSet in [0];
      sbIncluirItem.Enabled := vSet in [1,2];
      sbDelItem.Enabled := (vSet in [1,2]) and (qExisteItem);
      edtCodCompra.Enabled := vSet in [3];
      edtCodProduto.Enabled := vSet in [3];
      edtNomeProduto.Enabled := vSet in [3];
      edtVlrCusto.Enabled := vSet in [3];
      edtQtdProduto.Enabled := vSet in [3];
      sbGravarItem.Enabled := vSet in [3];
      sbGravarItem.Enabled := vSet in [3];
      sbCancelar.Enabled := vSet in [3];

      if (vSet in [3]) or (NOT qExisteItem) then
      begin
        edtCodProduto.Clear;
        edtQtdProduto.Clear;
        edtNomeProduto.Clear;
        edtVlrCusto.Clear;
        edtQtdProduto.Clear;
        edtVlrFinal.Clear;
      end;
end;

procedure TfrmCadCompras_Itens.dbeCodigoChange(Sender: TObject);
begin
  if edtCodProduto.Text <> '' then
  begin
    edtNomeProduto.Text := GetDescricaoProd(StrToInt(edtCodProduto.Text));
  end;
end;

procedure TfrmCadCompras_Itens.dbgProdutosCellClick(Column: TColumn);
begin
    SetaCamposDbgrid;
end;

procedure TfrmCadCompras_Itens.edtCodProdutoChange(Sender: TObject);
begin
    if edtCodProduto.Text <> '' then
    begin
      edtNomeProduto.Text := GetDescricaoProd(StrToInt(edtCodProduto.Text));
    end;
end;

procedure TfrmCadCompras_Itens.edtCodProdutoExit(Sender: TObject);
begin
    if (edtCodProduto.Text <> '') then
    begin
      edtVlrCusto.Clear;
      VlrCusto;
    end;
end;

procedure TfrmCadCompras_Itens.edtCodProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TfrmCadCompras_Itens.edtQtdProdutoChange(Sender: TObject);
begin
    edtVlrFinal.Text := FloatToStr((StrToIntDef(edtQtdProduto.Text,0)*
                                  StrToFloatDef(edtVlrCusto.Text,0)));
    edtVlrFinal.Text := CurrToStrF(
      StrToCurrDef(Trim(edtVlrFinal.Text),0),ffNumber,2);
    if (edtQtdProduto.Text <> '') then
      edtVlrFinalExit(Self);
end;

procedure TfrmCadCompras_Itens.edtQtdProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TfrmCadCompras_Itens.edtVlrCustoChange(Sender: TObject);
begin
    edtVlrFinal.Text := FloatToStr((StrToIntDef(edtQtdProduto.Text,0)*
                                  StrToFloatDef(edtVlrCusto.Text,0)));
    if (edtVlrCusto.Text <> '') then
      edtVlrFinalExit(Self);
end;

procedure TfrmCadCompras_Itens.edtVlrCustoExit(Sender: TObject);
var
  Valor : real;
begin
    if (edtVlrCusto.Text <> '') then
    begin
      valor := StrToCurr(edtVlrCusto.Text);
      edtVlrCusto.Text := FormatFloat('#,0.00',(Valor));
    end;
end;

procedure TfrmCadCompras_Itens.edtVlrCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if ( Key in ['.',','] ) then
    begin
      Key := #44;
      if Pos(Key,edtVlrCusto.Text) <> 0 then
      begin
        Beep;
        Key := #0;
      end;
    end;
    if not ( Key in ['0','1','2','3','4','5','6','7','8','9',',',#8,#7] ) then
    begin
      Beep;
      Key := #0;
    end;
end;

procedure TfrmCadCompras_Itens.edtVlrFinalExit(Sender: TObject);
var
  Valor : real;
begin
  if (edtVlrFinal.Text <> '') then
  begin
    valor := StrToCurr(edtVlrFinal.Text);
    edtVlrFinal.Text := FormatFloat('#,0.00',(Valor));
  end;
end;

procedure TfrmCadCompras_Itens.edtVlrFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
   key := #0;
end;

procedure TfrmCadCompras_Itens.FormShow(Sender: TObject);
begin
    ControleTela;
    edtCodCompra.Text := IntToStr(qIdCompras);
end;

function TfrmCadCompras_Itens.GetDescricaoProd(Id: Integer): string;
var
  vsql : TSQLQuery;
begin
    Result := '';
    try
      try
        vsql := TSQLQuery.Create(Nil);
        qConnects := TSetiConnects.Create;
        vsql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        vsql.SQL.Add('SELECT FIRST 1 NOME FROM TBCADPRODUTOS P ');
        vsql.SQL.Add('WHERE P.STATUS = ''S''');
        vsql.SQL.Add('AND P.ID = '+IntToStr(Id));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          Result :=  vsql.FieldByName('NOME').Value;
        end;
      finally
        vsql.Free;
        qConnects.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmCadCompras_Itens.GetIdCompras: Integer;
begin
    Result := FIdCompras
end;

function TfrmCadCompras_Itens.GetListProviderForm: string;
begin
    Result := FListProviderForm;
end;

function TfrmCadCompras_Itens.GetModo: string;
begin
    Result := FModo;
end;

function TfrmCadCompras_Itens.GetStatusTela: string;
begin
    Result := FStatusTela;
end;

procedure TfrmCadCompras_Itens.VlrCusto;
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.Close;
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Add( ' SELECT * FROM TBCADPRODUTOS P ');
      sql.sql.Add( ' WHERE P.STATUS = ''S''');
      sql.SQL.Add( ' AND P.ID = ' + StringReplace(
        edtCodProduto.Text,',','.',[]));
      sql.Open;
      if (not sql.IsEmpty) then
      begin
        edtVlrCusto.Text := StringReplace(
          sql.FieldByName('VLRCUSTO').AsString, '.',',',[]);
      end;
    finally
      sql.Free;
      qConnects.Free;
    end;
end;

procedure TfrmCadCompras_Itens.InsereProdutos;
var
    vSql : TSQLQuery;
begin
  if ExisteProduto then
  begin
    SetiMens(2,'Produto j� inclu�do');
  end else
  begin
    try
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add('  INSERT INTO TBCADCOMPRAS_ITENS ');
      vSql.SQL.Add('  (                              ');
      vSql.SQL.Add('    ID_CADCOMPRAS                ');
      vSql.SQL.Add('   ,ID_CADPRODUTOS               ');
      vSql.SQL.Add('   ,QTDPRODUTOS                  ');
      vSql.SQL.Add('   ,VLRCUSTO                     ');
      vSql.SQL.Add('   ,VLRFINAL                     ');
      vSql.SQL.Add('  )                              ');
      vSql.SQL.Add('  VALUES                         ');
      vSql.SQL.Add('  (                              ');
      vSql.SQL.Add('    :ID_CADCOMPRAS               ');
      vSql.SQL.Add('   ,:ID_CADPRODUTOS              ');
      vSql.SQL.Add('   ,:QTDPRODUTOS                 ');
      vSql.SQL.Add('   ,:VLRCUSTO                    ');
      vSql.SQL.Add('   ,:VLRFINAL                    ');
      vSql.SQL.Add('  );                             ');
      vSql.Params.ParamByName('ID_CADCOMPRAS').AsInteger := qIdCompras;
      vSql.Params.ParamByName('ID_CADPRODUTOS').AsInteger := qId_CadProdutos;
      vSql.Params.ParamByName('QTDPRODUTOS').AsInteger := qQtdProdutos;
      vSql.Params.ParamByName('VLRCUSTO').AsFloat := qVlrCusto;
      vSql.Params.ParamByName('VLRFINAL').AsFloat := qVlrFinal;;
      vSql.ExecSQL;
      SetiMens(1,'Produto inserido com sucesso, voc� poder� remove-lo se'+
                 ' preferir, no t�rmino desta mensagem, ou nas seguintes'+
                 ' condi��es: '+#13+
                 ' * Pedido em aberto;' +#13+
                 ' * Pedido em modo de altera��o;' +#13+
                 ' * Se o pedido for exclu�do;');
    finally
      qConnects.Free;
      vSql.Free;
      SetModo('SEARCH');
      ControleTela;
      ListaProdutos;
    end;
  end;
end;

procedure TfrmCadCompras_Itens.ListaProdutos;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlItens.Close;
      sqlItens.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlItens.SQL.Clear;
      sqlItens.SQL.Add( ' SELECT * FROM TBCADCOMPRAS_ITENS I ');
      sqlItens.SQL.Add( ' WHERE I.ID_CADCOMPRAS = '+IntToStr(qIdCompras));
      cdsItens.Open;
      ProviderFlag;
      cdsItens.Refresh;
      //SetpExisteItem(NOT cdsItens.IsEmpty);
    finally
      qConnects.Free;
    end;
end;

function TfrmCadCompras_Itens.ExcluiProduto: Boolean;
var
  sql : TSQLQuery;
begin
    if ExisteProduto then
    begin
      if SetiMensQuestions(0,'Confirma exclus�o do produto?') then
      begin
        try
          qConnects := TSetiConnects.Create;
          sql := TSQLQuery.Create(Nil);
          sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
          sql.sql.Add( ' DELETE FROM TBCADCOMPRAS_ITENS I ');
          sql.SQL.Add( ' WHERE I.ID_CADCOMPRAS = '+IntToStr(qIdCompras));
          sql.SQL.Add( ' AND I.ID_CADPRODUTOS = '+IntToStr(qId_CadProdutos));
          sql.ExecSQL;
          Result := True;
        finally
          sql.Free;
          qConnects.Free;
          SetModo('INSERT');
          ControleTela;
          ListaProdutos;
        end;
      end;
    end else
      Result := False;
end;

function TfrmCadCompras_Itens.ExistemItens : Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.Close;
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Add( ' SELECT * FROM TBCADCOMPRAS_ITENS I ');
      sql.SQL.Add( ' WHERE I.ID_CADCOMPRAS = '+IntToStr(qIdCompras));
      sql.Open;
      Result := NOT sql.IsEmpty;
      SetqExisteItem(Result);
    finally
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmCadCompras_Itens.ExisteProduto: Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' SELECT * FROM TBCADCOMPRAS_ITENS I ');
      sql.SQL.Add( ' WHERE I.ID_CADCOMPRAS = '+IntToStr(qIdCompras));
      sql.SQL.Add( ' AND I.ID_CADPRODUTOS = '+IntToStr(qId_CadProdutos));
      sql.Open;
      Result := NOT sql.IsEmpty;
    finally
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmCadCompras_Itens.ExisteProdutoCadastrado: Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADPRODUTOS P ');
      sql.sql.Add( ' WHERE P.STATUS = ''S'' ');
      sql.SQL.Add( ' AND P.ID = '+edtCodProduto.Text);
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := True;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmCadCompras_Itens.PassaParametros : Boolean;
begin
    Result := False;
    if qModo = 'NEW' then
    begin
      if EdtCodProduto.Text = '' then
      begin
        SetiMens(1,'C�digo do produto n�o informado.');
        Exit;
      end;
      if edtVlrCusto.Text = '' then
      begin
        SetiMens(1,'Valor de custo n�o informado.');
        Exit;
      end;
      if edtQtdProduto.Text = '' then
      begin
        SetiMens(1,'Quantidade do produto n�o informada.');
        Exit;
      end;
      if edtQtdProduto.Text = '0' then
      begin
        SetiMens(1,'Quantidade do produto dever� ser maior que zero (0).');
        Exit;
      end;
      SetqId_CadProdutos(StrToInt(edtCodProduto.Text));
      SetqVlrCusto(StrToFloat(edtVlrCusto.Text));
      SetqQtdProdutos(StrToInt(edtQtdProduto.Text));
      SetqVlrFinal(qQtdProdutos * qVlrCusto);
      Result := True;
    end;
end;

procedure TfrmCadCompras_Itens.ProviderFlag;
begin
    try
      if NOT dsItens.DataSet.IsEmpty then
      begin
        with dsItens.DataSet do
        begin
          FieldByName('ID_CADCOMPRAS').DisplayLabel := 'C�d.Compra';
          FieldByName('ID_CADPRODUTOS').DisplayLabel := 'C�d.Produtos';
          FieldByName('QTDPRODUTOS').DisplayLabel := 'Qtd.Produtos';
          FieldByName('VLRCUSTO').DisplayLabel := 'Vlr.Produtos';
          FieldByName('VLRFINAL').DisplayLabel := 'Vlr.Final';

          FieldByName('ID_CADCOMPRAS').DisplayWidth := 5;
          FieldByName('ID_CADPRODUTOS').DisplayWidth := 5;
          FieldByName('QTDPRODUTOS').DisplayWidth := 5;
          FieldByName('VLRCUSTO').DisplayWidth := 10;
          FieldByName('VLRFINAL').DisplayWidth := 5;
        end;
      end;
    finally

    end;
end;

procedure TfrmCadCompras_Itens.ProviderForm;
var
  i : Integer;
  vNameArray : string;
  vList : TStringList;
begin
    qCdsProvider := TClientDataSet.Create(Self);
    qCdsProvider.Close;
    qCdsProvider.FieldDefs.Clear;
    qCdsProvider.FieldDefs.add('DESCRIPTION',ftString,50);
    qCdsProvider.CreateDataSet;
    vList := TStringList.Create;
    ExtractStrings([';'],[],PChar(qListProviderForm),vList);
    for i := 0 to vList.Count -1 do
    begin
      vNameArray := vList[i];
      qCdsProvider.Append;
      qCdsProvider.FieldByName('DESCRIPTION').AsString := vNameArray;
      qCdsProvider.Post;
    end;
end;

procedure TfrmCadCompras_Itens.sbCancelarClick(Sender: TObject);
begin
    SetModo('INSERT');
    ControleTela;
end;

procedure TfrmCadCompras_Itens.sbDelItemClick(Sender: TObject);
begin
    SetqId_CadProdutos(dsItens.DataSet.FieldByName('ID_CADPRODUTOS').Value);
    if ExcluiProduto then
      AtualizaPedido;
end;

procedure TfrmCadCompras_Itens.sbGravarItemClick(Sender: TObject);
begin
  if ExisteProdutoCadastrado then
  begin
    if PassaParametros then
    begin
      InsereProdutos;
      //AtualizaPedido;
    end;
  end else
  begin
    SetiMens(2,'Produto n�o cadastrado');
    Exit;
  end;
end;

procedure TfrmCadCompras_Itens.sbIncluirItemClick(Sender: TObject);
begin
    SetModo('NEW');
    ControleTela;
end;

procedure TfrmCadCompras_Itens.SetaCamposDbgrid;
begin
    try
      if NOT dsItens.DataSet.IsEmpty then
      begin
        edtCodProduto.Text :=
          dsItens.DataSet.FieldByName('ID_CADPRODUTOS').AsString;
        edtVlrCusto.Text :=
          StringReplace(dsItens.DataSet.FieldByName('VLRCUSTO').AsString,
                          '.',',',[]);
        edtQtdProduto.Text :=
          dsItens.DataSet.FieldByName('VLRCUSTO').AsString;;
        edtVlrFinal.Text :=
          StringReplace(dsItens.DataSet.FieldByName('VLRFINAL').AsString,
                          '.',',',[]);
      end else
      begin
        edtCodProduto.Clear;
        edtVlrCusto.Clear;
        edtQtdProduto.Clear;
        edtVlrFinal.Clear;
      end;
    finally

    end;
end;

procedure TfrmCadCompras_Itens.SetIdCompras(const Value: Integer);
begin
    FIdCompras := Value;
end;

procedure TfrmCadCompras_Itens.SetListProviderForm(const Value: string);
begin
    FListProviderForm := Value;
end;

procedure TfrmCadCompras_Itens.SetModo(const Value: string);
begin
    FModo := Value;
end;

procedure TfrmCadCompras_Itens.SetqExisteItem(const Value: Boolean);
begin
  FqExisteItem := Value;
end;

procedure TfrmCadCompras_Itens.SetqId_CadProdutos(const Value: Integer);
begin
  FqId_CadProdutos := Value;
end;

procedure TfrmCadCompras_Itens.SetqQtdProdutos(const Value: Integer);
begin
  FqQtdProdutos := Value;
end;

procedure TfrmCadCompras_Itens.SetqVlrCusto(const Value: Double);
begin
  FqVlrCusto := Value;
end;

procedure TfrmCadCompras_Itens.SetqVlrFinal(const Value: Double);
begin
  FqVlrFinal := Value;
end;

procedure TfrmCadCompras_Itens.SetStatusTela(const Value: string);
begin
    FStatusTela := Value;
end;


end.
