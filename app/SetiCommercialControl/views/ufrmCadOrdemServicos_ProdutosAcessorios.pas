unit ufrmCadOrdemServicos_ProdutosAcessorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, uSetiConnects,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, MIDASLIB;

type
  TfrmCadOrdemServicos_ProdutosAcessorios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel3: TPanel;
    sbIncluirItem: TSpeedButton;
    sbDelItem: TSpeedButton;
    lbAvisoModo: TLabel;
    Panel4: TPanel;
    sbGravarItem: TSpeedButton;
    sbCancelar: TSpeedButton;
    edtNomeProduto: TEdit;
    edtOs: TEdit;
    edtCodProduto: TEdit;
    edtQtdProduto: TEdit;
    edtVlrFinal: TEdit;
    Panel2: TPanel;
    dbgProdutos: TDBGrid;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    dspItens: TDataSetProvider;
    sqlItens: TSQLQuery;
    SetiSqlStoredProc: TSQLStoredProc;
    Label3: TLabel;
    edtVlrVenda: TEdit;
    Label7: TLabel;
    edtEstoque: TEdit;
    procedure FormShow(Sender: TObject);
    procedure sbIncluirItemClick(Sender: TObject);
    procedure edtCodProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure sbGravarItemClick(Sender: TObject);
    procedure edtQtdProdutoExit(Sender: TObject);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure edtCodProdutoChange(Sender: TObject);
    procedure sbDelItemClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FModo : string;
    FOs : Integer;
    FConnects : TSetiConnects;
    FqExisteItem: Boolean;
    FqId_CadProdutos: Integer;
    FqQtd_Produtos: Integer;
    FqVlrFinal: Double;
    FqVlrVenda: Double;

    function ProdutoInformadoExiste : Boolean;
    function ExisteProduto : Boolean;
    function ExistemItens : Boolean;
    function PassaParametros : Boolean;
    function TemEstoque(CodProduto:Integer;QtdProdutos:Integer) : Boolean;
    function ExcluiProduto : Boolean;
    function BuscaQtdEstoque(CodProduto:Integer) : Integer;

    procedure ControleTela;
    procedure ProviderFlag;
    procedure InsereProdutos;
    procedure AtualizaOs;
    procedure CalculaSaldoFinal;
    procedure ListaProdutos;
    procedure BuscaProduto(Id:Integer); //INFO.CADASTRO DE PRODUTOS...
    procedure ValidaInsercao;
    procedure SetaCamposDbgrid;

    procedure SetqExisteItem(const Value: Boolean);
    procedure SetqId_CadProdutos(const Value: Integer);
    procedure SetqQtd_Produtos(const Value: Integer);
    procedure SetqVlrFinal(const Value: Double);
    procedure SetqVlrVenda(const Value: Double);

    property qConnects : TSetiConnects read FConnects write FConnects;
    property qExisteItem : Boolean read FqExisteItem write SetqExisteItem;
    property qId_CadProdutos : Integer read FqId_CadProdutos write
      SetqId_CadProdutos;
    property qQtd_Produtos : Integer read FqQtd_Produtos write SetqQtd_Produtos;
    property qVlrFinal : Double read FqVlrFinal write SetqVlrFinal;
    property qVlrVenda : Double read FqVlrVenda write SetqVlrVenda;

  public
    { Public declarations }
    function GetModo : string;
    function GetOs : Integer;

    procedure SetModo(Const Value : string);
    procedure SetOs(Const Value : Integer);

    property qModo : string read GetModo write SetModo;
    property qOs : Integer read GetOs write SetOs;
  end;

var
  frmCadOrdemServicos_ProdutosAcessorios:
    TfrmCadOrdemServicos_ProdutosAcessorios;

implementation

{$R *.dfm}

uses uMess;

{ TfrmCadOrdemServicos_ProdutosAcessorios }

procedure TfrmCadOrdemServicos_ProdutosAcessorios.AtualizaOs;
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_OS_ATUALIZA';
    SetiSqlStoredProc.ParamByName('ID_OS').Value := qOs;
    SetiSqlStoredProc.ParamByName('LIMPA').Value := 0;
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.ValidaInsercao;
begin
    if edtCodProduto.Text <> '' then
    begin
      if StrToInt(edtEstoque.Text) > 0 then
      begin
        edtQtdProduto.Enabled := True;
        edtQtdProduto.Color := clWindow;
        sbGravarItem.Enabled := True;
      end else
      begin
        edtQtdProduto.Enabled := False;
        edtQtdProduto.Color := clInfoBk;
        sbGravarItem.Enabled := False;
      end;
    end else
    begin
      edtQtdProduto.Enabled := False;
      edtQtdProduto.Clear;
      edtQtdProduto.Color := clInfoBk;
      sbGravarItem.Enabled := False;
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.BuscaProduto(
  Id: Integer);
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADPRODUTOS P ');
      sql.sql.Add( ' WHERE P.STATUS = ''S''');
      sql.SQL.Add( ' AND P.ID = '+edtCodProduto.Text);
      sql.Open;
      if NOT (sql.IsEmpty) then
      begin
        edtNomeProduto.Text := sql.FieldByName('NOME').AsString;
        edtVlrVenda.Text :=
          StringReplace(sql.FieldByName('VLRVENDAUTILIZADO').AsString,
            '.',',',[]);
      end else
      begin
        edtCodProduto.Clear;
        edtNomeProduto.Clear;
      end;
    finally
      sql.Close;
      FreeAndNil(sql);
      //sql.Free;
      qConnects.Free;
    end;

end;

function TfrmCadOrdemServicos_ProdutosAcessorios.BuscaQtdEstoque(
  CodProduto: Integer): Integer;
var
  vsql : TSQLQuery;
  vQtd : Integer;
begin
    Result := 0;
    try
      try
        qConnects := TSetiConnects.Create;
        vsql := TSQLQuery.Create(Nil);
        vsql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        vsql.SQL.Add('SELECT FIRST 1 QTDESTOQUE FROM TBESTOQUE ');
        vsql.SQL.Add('WHERE 1 = 1 ');
        vsql.SQL.Add('AND ID_PRODUTO = '+IntToStr(CodProduto));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          vQtd := vsql.FieldByName('QTDESTOQUE').Value;
          if (vQtd >= 0) then
            Result := vQtd;
        end;
      finally
        FreeAndNil(vsql);
        //vsql.Free;
        qConnects.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.CalculaSaldoFinal;
var
  vVlrVenda : Double;
  vQuantidade : Integer;
  vSaldoFinal : Double;
begin
  vVlrVenda := 0.00;
  vQuantidade := 0;
  vSaldoFinal := 0.00;

  vVlrVenda := StrToFloatDef(edtVlrVenda.Text,0.00);
  vQuantidade := StrToIntDef(edtQtdProduto.Text,0);
  vSaldoFinal := vVlrVenda * vQuantidade;

  edtVlrFinal.Text := StringReplace(FloatToStr(vSaldoFinal),'.',',',[]);

end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.ControleTela;
var
  vSet : Integer;
  vExisteItem : Integer; //existe item?
begin
    ListaProdutos;
    qExisteItem := (NOT cdsItens.IsEmpty);
    if ExistemItens then
      SetaCamposDbgrid;
    if (qModo = 'ABERTO') then vSet := 0;
    if (qModo = 'INSERT') or (qModo = 'UPDATE') then vSet := 1;
    if (qModo = 'SEARCH') then vSet := 2;
    if (qModo = 'NEW') then vSet := 3;
    //if (qExisteItem) then vExisteItem := 1 else vExisteItem := 0;

    edtQtdProduto.Color := clWindow;
    lbAvisoModo.Visible := vSet in [0];
    sbIncluirItem.Enabled := vSet in [1,2];
    sbDelItem.Enabled := (vSet in [1,2]) and (qExisteItem);
    edtCodProduto.Enabled := vSet in [3];
    edtQtdProduto.Enabled := vSet in [3];
    sbGravarItem.Enabled := vSet in [3];
    sbCancelar.Enabled := vSet in [3];
    if (vSet in [3]) or (NOT qExisteItem) then
    begin
      edtCodProduto.Clear;
      edtNomeProduto.Clear;
      edtQtdProduto.Clear;
      edtVlrFinal.Clear;
      edtVlrVenda.Clear;
      edtEstoque.Clear;
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.dbgProdutosCellClick(
  Column: TColumn);
begin
    SetaCamposDbgrid;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.edtCodProdutoChange(
  Sender: TObject);
begin
    edtCodProdutoExit(Self);
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.edtCodProdutoExit(
  Sender: TObject);
begin
    edtVlrFinal.Clear;
    if (edtCodProduto.Text <> '') then
    begin
      BuscaProduto(StrToInt(edtCodProduto.Text));
      if (edtCodProduto.Text <> '') then
      begin
        edtEstoque.Text :=
          IntToStr(BuscaQtdEstoque(StrToInt(edtCodProduto.Text)));
        ValidaInsercao;
      end;
    end
    else
    begin
      edtNomeProduto.Clear;
      edtVlrVenda.Clear;
      edtEstoque.Clear;
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.edtCodProdutoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.edtQtdProdutoExit(
  Sender: TObject);
begin
    CalculaSaldoFinal;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.edtQtdProdutoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.ExcluiProduto: Boolean;
var
  sql : TSQLQuery;
begin
    if ProdutoInformadoExiste then
    begin
      if SetiMensQuestions(0,'Confirma exclus�o do produto?') then
      begin
        try
          qConnects := TSetiConnects.Create;
          sql := TSQLQuery.Create(Nil);
          sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
          sql.sql.Add( ' DELETE FROM TBOS_DETALHES_PRODUTOS I ');
          sql.SQL.Add( ' WHERE I.ID_OS = '+IntToStr(qOs));
          sql.SQL.Add( ' AND I.ID_CADPRODUTOS = '+IntToStr(qId_CadProdutos));
          sql.ExecSQL;
          Result := True;
        finally
          FreeAndNil(sql);
          qConnects.Free;
          SetModo('INSERT');
          ControleTela;
          ListaProdutos;
        end;
      end;
    end else
      Result := False;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.ExistemItens: Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.Close;
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Add( ' SELECT * FROM TBOS_DETALHES_PRODUTOS I ');
      sql.SQL.Add( ' WHERE I.ID_OS = '+IntToStr(qOs));
      sql.Open;
      Result := NOT sql.IsEmpty;
      SetqExisteItem(Result);
    finally
      FreeAndNil(sql);
      //sql.Free;
      qConnects.Free;
    end;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.ExisteProduto: Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' SELECT * FROM TBOS_DETALHES_PRODUTOS I ');
      sql.SQL.Add( ' WHERE I.ID_OS = '+IntToStr(qOs));
      sql.SQL.Add( ' AND I.ID_CADPRODUTOS = '+IntToStr(qId_CadProdutos));
      sql.Open;
      Result := NOT sql.IsEmpty;
    finally
      FreeAndNil(sql);
      qConnects.Free;
    end;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.ProdutoInformadoExiste:
Boolean;
var
  sql : TSQLQuery;
begin
    Result := False;
    if (edtCodProduto.Text <> '') then
    begin
      try
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.SQL.Clear;
        sql.sql.Add( ' SELECT * FROM TBCADPRODUTOS P ');
        sql.sql.Add( ' WHERE P.STATUS = ''S''');
        sql.SQL.Add( ' AND P.ID = '+edtCodProduto.Text);
        sql.Open;
        if NOT (sql.IsEmpty) then
          Result := True;
      finally
        sql.Close;
        FreeAndNil(sql);
        qConnects.Free;
      end;
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.FormShow(Sender: TObject);
begin
    edtOs.Text := IntToStr(qOs);
    ControleTela;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.GetModo: string;
begin
    Result := FModo;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.GetOs: Integer;
begin
    Result := FOs;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.InsereProdutos;
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
      vSql.SQL.Add('  INSERT INTO TBOS_DETALHES_PRODUTOS  ');
      vSql.SQL.Add('  (                                   ');
      vSql.SQL.Add('    ID_OS                             ');
      vSql.SQL.Add('   ,ID_CADPRODUTOS                    ');
      vSql.SQL.Add('   ,QTDPRODUTOS                       ');
      vSql.SQL.Add('   ,VLRFINAL                          ');
      vSql.SQL.Add('   ,VLRVENDA                          ');
      vSql.SQL.Add('  )                                   ');
      vSql.SQL.Add('  VALUES                              ');
      vSql.SQL.Add('  (                                   ');
      vSql.SQL.Add('    :ID_OS                            ');
      vSql.SQL.Add('   ,:ID_CADPRODUTOS                   ');
      vSql.SQL.Add('   ,:QTDPRODUTOS                      ');
      vSql.SQL.Add('   ,:VLRFINAL                         ');
      vSql.SQL.Add('   ,:VLRVENDA                         ');
      vSql.SQL.Add('  );                                   ');
      vSql.Params.ParamByName('ID_OS').AsInteger := qOs;
      vSql.Params.ParamByName('ID_CADPRODUTOS').AsInteger := qId_CadProdutos;
      vSql.Params.ParamByName('QTDPRODUTOS').AsInteger := qQtd_Produtos;
      vSql.Params.ParamByName('VLRFINAL').AsFloat := qVlrFinal;
      vSql.Params.ParamByName('VLRVENDA').AsFloat := qVlrVenda;
      vSql.ExecSQL;
      SetiMens(1,'Produto inserido com sucesso.');
    finally
      FreeAndNil(vSql);
      qConnects.Free;
      SetModo('SEARCH');
      ControleTela;
      ListaProdutos;
    end;
  end;
end;

{procedure TfrmCadOrdemServicos_ProdutosAcessorios.ListaItens;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlItens.Close;
      sqlItens.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlItens.SQL.Clear;
      sqlItens.SQL.Add( ' SELECT * FROM TBOS_DETALHES D ');
      sqlItens.SQL.Add( ' WHERE D.ID_OS = '+IntToStr(qOs));
      cdsItens.Open;
      ProviderFlag;
      cdsItens.Refresh;
      //SetpExisteItem(NOT cdsItens.IsEmpty);
    finally
      qConnects.Free;
    end;
end;}

procedure TfrmCadOrdemServicos_ProdutosAcessorios.ListaProdutos;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlItens.Close;
      sqlItens.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlItens.SQL.Clear;
      sqlItens.SQL.Add( ' SELECT * FROM TBOS_DETALHES_PRODUTOS I ');
      sqlItens.SQL.Add( ' WHERE I.ID_OS = '+IntToStr(qOs));
      cdsItens.Open;
      ProviderFlag;
      cdsItens.Refresh;
    finally
      qConnects.Free;
    end;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.PassaParametros: Boolean;
var
  vQtdProduto, vQtdEstoque : Integer;
  vValorCusto : Double;
begin
    Result := False;
    if qModo = 'NEW' then
    begin
      if EdtCodProduto.Text = '' then
      begin
        EdtCodProduto.SetFocus;
        SetiMens(1,'C�digo do produto n�o informado.');
        Exit;
      end;
      vValorCusto := StrToFloatDef(edtVlrVenda.Text,0);
      if vValorCusto = 0 then
      begin
        EdtCodProduto.SetFocus;
        SetiMens(1,'O valor de custo deste produto esta zerado.');
        Exit;
      end;
      if edtQtdProduto.Text = '' then
      begin
        edtQtdProduto.SetFocus;
        SetiMens(1,'Quantidade do produto n�o informada.');
        Exit;
      end;
      vQtdProduto := StrToInt(edtQtdProduto.Text);
      if vQtdProduto = 0 then
      begin
        edtQtdProduto.SetFocus;
        SetiMens(1,'Quantidade do produto dever� ser maior que zero (0).');
        Exit;
      end;
      vQtdEstoque := StrToInt(edtEstoque.Text);
      if vQtdEstoque = 0 then
      begin
        edtQtdProduto.SetFocus;
        SetiMens(1,'Quantidade de estoque insuficiente.');
        Exit;
      end;
      if vQtdProduto > vQtdEstoque then
      begin
        edtQtdProduto.SetFocus;
        SetiMens(1,'Quantidade de estoque insuficiente para a '+
                   'quantidade solicitada.');
        Exit;
      end;
      if edtVlrFinal.Text = '' then
      begin
        SetiMens(1,'Valor final n�o calculado.');
        edtQtdProduto.SetFocus;
        Exit;
      end;
      SetqId_CadProdutos(StrToInt(edtCodProduto.Text));
      SetqQtd_Produtos(StrToInt(edtQtdProduto.Text));
      SetqVlrFinal(StrToFloatDef(edtVlrFinal.Text,0));
      SetqVlrVenda(StrToFloatDef(edtVlrVenda.Text,0));
      Result := True;
    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.ProviderFlag;
begin
    try
      if NOT dsItens.DataSet.IsEmpty then
      begin
        with dsItens.DataSet do
        begin
          FieldByName('ID_OS').DisplayLabel := 'O.S';
          FieldByName('ID_CADPRODUTOS').DisplayLabel := 'C�d.Produtos';
          FieldByName('QTDPRODUTOS').DisplayLabel := 'Qtd.Produtos';
          FieldByName('VLRVENDA').DisplayLabel := 'Vlr.Venda';
          FieldByName('VLRFINAL').DisplayLabel := 'Vlr.Final';

          FieldByName('ID_OS').DisplayWidth := 5;
          FieldByName('ID_CADPRODUTOS').DisplayWidth := 5;
          FieldByName('QTDPRODUTOS').DisplayWidth := 5;
          FieldByName('VLRVENDA').DisplayWidth := 10;
          FieldByName('VLRFINAL').DisplayWidth := 5;
        end;
      end;
    finally

    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.sbCancelarClick(
  Sender: TObject);
begin
    SetModo('INSERT');
    ControleTela;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.sbDelItemClick(
  Sender: TObject);
begin
    SetqId_CadProdutos(dsItens.DataSet.FieldByName('ID_CADPRODUTOS').Value);
    ExcluiProduto;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.sbGravarItemClick(
  Sender: TObject);
begin
  if (ProdutoInformadoExiste) then
  begin
      if (PassaParametros) then
      begin
          InsereProdutos;
          //AtualizaOs;
      end;
  end else
  begin
    SetiMens(2,'O produto informado n�o existe ou esta inativo no cadastro');
    Exit;
  end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.sbIncluirItemClick(
  Sender: TObject);
begin
    SetModo('NEW');
    ControleTela;
    edtCodProduto.SetFocus;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetaCamposDbgrid;
begin
    try
      if NOT dsItens.DataSet.IsEmpty then
      begin
        edtCodProduto.Text :=
          dsItens.DataSet.FieldByName('ID_CADPRODUTOS').AsString;
        if edtCodProduto.Text <> '' then
        begin
          edtEstoque.Text :=
            IntToStr(BuscaQtdEstoque(StrToInt(edtCodProduto.Text)));
        end;
        edtQtdProduto.Text :=
          dsItens.DataSet.FieldByName('QTDPRODUTOS').AsString;
        edtVlrFinal.Text :=
          StringReplace(dsItens.DataSet.FieldByName('VLRFINAL').AsString,
                          '.',',',[]);
        edtVlrVenda.Text :=
          StringReplace(dsItens.DataSet.FieldByName('VLRVENDA').AsString,
                          '.',',',[]);
      end else
      begin
        edtCodProduto.Clear;
        edtVlrVenda.Clear;
        edtQtdProduto.Clear;
        edtVlrFinal.Clear;
        edtVlrVenda.Clear;
      end;
    finally

    end;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetModo(const Value: string);
begin
    FModo := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetOs(const Value: Integer);
begin
    FOs := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetqExisteItem(
  const Value: Boolean);
begin
    FqExisteItem := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetqId_CadProdutos(
  const Value: Integer);
begin
    FqId_CadProdutos := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetqQtd_Produtos(
  const Value: Integer);
begin
    FqQtd_Produtos := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetqVlrVenda(
  const Value: Double);
begin
    FqVlrVenda := Value;
end;

procedure TfrmCadOrdemServicos_ProdutosAcessorios.SetqVlrFinal(
  const Value: Double);
begin
    FqVlrFinal := Value;
end;

function TfrmCadOrdemServicos_ProdutosAcessorios.TemEstoque(CodProduto,
  QtdProdutos: Integer): Boolean;
var
  vsql : TSQLQuery;
  vQtd : Integer;
begin
    Result := False;
    try
      try
        qConnects := TSetiConnects.Create;
        vsql := TSQLQuery.Create(Nil);
        vsql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        vsql.SQL.Add('SELECT FIRST 1 QTDESTOQUE FROM TBESTOQUE ');
        vsql.SQL.Add('WHERE 1 = 1 ');
        vsql.SQL.Add('AND ID_PRODUTO = '+IntToStr(CodProduto));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          vQtd := vsql.FieldByName('QTDESTOQUE').Value;
          if (QtdProdutos > vQtd) then
          begin
            SetiMens(2,'Estoque insuficiente! - Qtd.atual: '+IntToStr(vQtd));
          end else
            Result := True;
        end;
      finally
        FreeAndNil(vsql);
        qConnects.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
