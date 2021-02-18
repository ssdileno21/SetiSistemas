unit ufrmVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.DB,
  Data.SqlExpr, MIDASLIB, uMess, uSetiConnects, uLocate, Vcl.Buttons;

type
  TfrmVendas = class(TForm)
    StatusBar1: TStatusBar;
    sqlVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    sqlItens: TSQLQuery;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    dsVendas: TDataSource;
    dsItens: TDataSource;
    sqlConnVendas: TSQLConnection;
    dsAux: TDataSource;
    dsAux1: TDataSource;
    sqlItensGrid: TSQLQuery;
    dspItensGrid: TDataSetProvider;
    cdsItensGrid: TClientDataSet;
    dsItensGrid: TDataSource;
    pnNameProduto: TPanel;
    Panel17: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    dbeIdCliente: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbeNomeCliente: TLabel;
    dbeCodVenda: TDBEdit;
    Panel1: TPanel;
    Panel15: TPanel;
    Panel18: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    dbgItens: TDBGrid;
    Panel16: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    dbeTotalItens: TDBEdit;
    Panel4: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Panel5: TPanel;
    Panel8: TPanel;
    Image1: TImage;
    dbeId_Produto: TDBEdit;
    dbeQtdProduto: TDBEdit;
    dbeVlrUnitario: TDBEdit;
    edtVlrTotalProduto: TEdit;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SetiSqlStoredProc: TSQLStoredProc;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    Label4: TLabel;
    dbeSubTotal: TDBEdit;
    Panel12: TPanel;
    Label3: TLabel;
    dbeDesconto: TDBEdit;
    Panel13: TPanel;
    Label7: TLabel;
    dbeTotal: TDBEdit;
    SpeedButton10: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbeId_ProdutoChange(Sender: TObject);
    procedure dbeIdClienteChange(Sender: TObject);
    procedure dbeQtdProdutoChange(Sender: TObject);
  private
    { Private declarations }
    FState : Integer;
    FConnects : TSetiConnects;
    FLocate : TLocate;
    FCountProd : Integer;
    FId_FormaPagto : Integer;
    procedure NovaVenda;
    procedure NovoProduto;
    procedure GravaProduto;
    procedure ListaClientes;
    procedure ListaProdutos;
    procedure IncluiProdutos;
    procedure InserirDesconto;
    procedure FinalizaVenda;
    procedure CancelaVenda;
    procedure LimpaProdutos;
    procedure Sair;
    procedure CriaConexao;
    procedure DestroiConexao;
    procedure SetaConexao;
    procedure ProviderFlags(DataSet:TDataSet);
    procedure AbreGrid;
    procedure SetaTotais;
    procedure CancelaItem;
    procedure AtualizarEstoqueVendas;
    procedure FormataValores;
    procedure ConsultaEstoque;
    function DeletarProduto(Id:Integer) : Boolean;

    function GetState : Integer;
    procedure SetState(Const Value : Integer);

    function GetCountProd : Integer;
    procedure SetCountProd(Const Value : Integer);

    function GetId_FormaPagto : Integer;
    procedure SetId_FormaPagto(Const Value : Integer);

    function SelecionaFormaPagto : Integer;

    function GetValorUnitario(Id:Integer) : Double;
    function GetDescricaoProd(Id:Integer) : string;

    function GetNomeCliente(Id:Integer) : string;

    function TemEstoque(CodProduto:Integer;QtdProdutos:Integer) : Boolean;


    property qId_FormaPagto : Integer read GetId_FormaPagto write
    SetId_FormaPagto;
    property qState : Integer read GetState write SetState;
    property qCountProd: Integer read GetCountProd write SetCountProd;
    property qConnects : TSetiConnects read FConnects write FConnects;
    property cLocate : TLocate read FLocate write FLocate;

    {STATE:
        1 : NOVA VENDA;
        2 : INICIOU INCLUSAO PRODUTOS
        3 : FINALIZA VENDA
        4 : CANCELA VENDA}


  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses udmGen, ufrmVendasFinalizar;

{ TfrmVendas }

procedure TfrmVendas.AbreGrid;
begin
    sqlItensGrid.Close;
    sqlItensGrid.SQL.Clear;
    sqlItensGrid.SQL.Add('SELECT                                         ');
    sqlItensGrid.SQL.Add('       TBVENDAS_ITENS.ID_VENDAS                ');
    sqlItensGrid.SQL.Add('      ,TBVENDAS_ITENS.CONTADOR                 ');
    sqlItensGrid.SQL.Add('      ,TBVENDAS_ITENS.ID_PRODUTOS              ');
    sqlItensGrid.SQL.Add('      ,TBCADPRODUTOS.NOME                      ');
    sqlItensGrid.SQL.Add('      ,TBVENDAS_ITENS.QTDPRODUTOS              ');
    sqlItensGrid.SQL.Add('      ,TBVENDAS_ITENS.VLRUNITARIO              ');
    sqlItensGrid.SQL.Add('      ,TBVENDAS_ITENS.VLRTOTAL                 ');
    sqlItensGrid.SQL.Add('FROM TBVENDAS_ITENS                            ');
    sqlItensGrid.SQL.Add('INNER JOIN TBCADPRODUTOS ON '+
      'TBVENDAS_ITENS.ID_PRODUTOS = TBCADPRODUTOS.ID ');
    sqlItensGrid.SQL.Add('WHERE 1 = 1                                   ');
    sqlItensGrid.SQL.Add('AND TBVENDAS_ITENS.ID_VENDAS = :ID_VENDAS ');
    sqlItensGrid.Params.ParamByName('ID_VENDAS').Value :=
      StrToInt(dbeCodVenda.Text);
    cdsItensGrid.FetchParams;
    cdsItensGrid.Open;
    ProviderFlags(cdsItensGrid);
    cdsItensGrid.Refresh;
    SetaTotais;
end;

procedure TfrmVendas.AtualizarEstoqueVendas;
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_VENDAS_ATUALIZAESTOQUE';
    SetiSqlStoredProc.ParamByName('ID_VENDA').Value :=
      StrToInt(dbeCodVenda.Text);
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;

end;

procedure TfrmVendas.CancelaItem;
var
  vtexto : string;
  vIdPrd : Integer;
begin
    if (qState = 1) then
    begin
      if (dbgItens.DataSource.DataSet.RecordCount > 0) then
      begin
        if InputQuery('Informe o c�d. do produto que deseja excluir',
                      'C�d.Produto:',vtexto) then
        begin
          vIdPrd := StrToInt(vtexto);
          if SetiMensQuestions(0,'Confirma exclus�o do produto: '+
            IntToStr(vIdPrd)) then
              DeletarProduto(vIdPrd);
          SetaTotais;
          FormataValores;
        end;
      end;
    end;
end;

procedure TfrmVendas.CancelaVenda;
var
  vsql : TSQLQuery;
  vcont : Integer;
begin
    if (qState = 1) then
    begin
      if (dbeIdCliente.Text = '') then
      begin
        SetiMens(2,'Cliente n�o informado, pressione a tecla F2 e selecione '+
        'o cliente.');
        Exit;
      end;
      if SetiMensQuestions(0,'Confirma cancelamento da venda?') then
      begin
        if cdsVendas.State in [dsInsert] then
        begin
          cdsVendas.FieldByName('DTAVENDA').Value := Now;
          cdsVendas.FieldByName('DTACANCELAMENTO').Value := Now;
          cdsVendas.Post;
          cdsVendas.ApplyUpdates(0);
          cdsVendas.Close;
          if cdsItens.State in [dsInsert] then
          begin
            cdsItens.Cancel;
            cdsItens.Close;
          end;
          dbgItens.DataSource := dsAux;
        end;
      end;
    end;
    SetState(4);
end;

procedure TfrmVendas.ConsultaEstoque;
var
  vtexto : string;
  vIdPrd : Integer;
  vsql : TSQLQuery;
begin
    if (qState = 1) then
    begin
        if InputQuery('Informe o c�d. do produto...',
                      'C�d.Produto:',vtexto) then
        begin
          try
            vIdPrd := StrToInt(vtexto);
            vsql := TSQLQuery.Create(Nil);
            qConnects := TSetiConnects.Create;
            vsql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
            vsql.SQL.Add('SELECT FIRST 1 QTDESTOQUE FROM TBESTOQUE ');
            vsql.SQL.Add('WHERE ID_PRODUTO = '+IntToStr(vIdPrd));
            vsql.Open;
            if not vsql.IsEmpty then
            begin
              SetiMens(1,'Produto: '+IntToStr(vIdPrd)+#13+
                         'Estoque dispon�vel: '+
                            vsql.FieldByName('QTDESTOQUE').AsString);
            end else
              SetiMens(1,'Estoque do produto: '+IntToStr(vIdPrd)+
              ' n�o localizado.');
          finally
            qConnects.Free;
          end;
        end;
    end;
end;

procedure TfrmVendas.CriaConexao;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlConnVendas := qConnects.ConnectsFIREBIRD(False);
      SetaConexao;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendas.dbeIdClienteChange(Sender: TObject);
begin
    if (qState = 1) then
    begin
      if dbeIdCliente.Text <> '' then
        dbeNomeCliente.Caption := GetNomeCliente(StrToInt(dbeIdCliente.Text))
      else
        dbeNomeCliente.Caption := '';
    end;
end;

procedure TfrmVendas.dbeId_ProdutoChange(Sender: TObject);
begin
    if (qState = 1) then
    begin
      if dbeId_Produto.Text <> '' then
      begin
        pnNameProduto.Caption := GetDescricaoProd(StrToInt(dbeId_Produto.Text));
        dbeVlrUnitario.Text := FloatToStr(
                                GetValorUnitario(StrToInt(dbeId_Produto.Text)));
        dbeVlrUnitario.Text := CurrToStrF(
          StrToCurrDef(Trim(dbeVlrUnitario.Text),0),ffNumber,2);
      end
      else
      begin
        pnNameProduto.Caption := '';
        dbeVlrUnitario.Text := '';
      end;
    end else
    begin
      pnNameProduto.Caption := '';
      dbeVlrUnitario.Text := '';
    end;
end;

procedure TfrmVendas.dbeQtdProdutoChange(Sender: TObject);
begin
    if (qState = 1) then
    begin
      if (dbeVlrUnitario.Text <> '') and (dbeQtdProduto.Text <> '') then
      begin
          edtVlrTotalProduto.Text := FloatToStr(
                                        StrToIntDef(dbeQtdProduto.Text,0) *
                                          StrToFloatDef(dbeVlrUnitario.Text,0)
                                                );
          edtVlrTotalProduto.Text := CurrToStrF(
            StrToCurrDef(Trim(edtVlrTotalProduto.Text),0),ffNumber,2);
      end else
      edtVlrTotalProduto.Clear;
    end else
    edtVlrTotalProduto.Clear;
end;

function TfrmVendas.DeletarProduto(Id: Integer) : Boolean;
var
  vsql : TSQLQuery;
  vcont, vcontNew : Integer;
begin
    Result := False;
    if (qState = 1) then
    begin
      vcont := dbgItens.DataSource.DataSet.RecordCount;
      if (vcont > 0) then
      begin
        try
          vsql := TSQLQuery.Create(Nil);
          vsql.SQLConnection := sqlConnVendas;
          vsql.SQL.Add('DELETE FROM TBVENDAS_ITENS ');
          vsql.SQL.Add('WHERE ID_VENDAS = '+dbeCodVenda.Text);
          vsql.SQL.Add('AND ID_PRODUTOS = '+IntToStr(Id));
          vsql.ExecSQL;
          dbgItens.DataSource.DataSet.Refresh;
          vcontNew := dbgItens.DataSource.DataSet.RecordCount;
          Result := (vcontNew < vcont);
        finally
          vsql.Free;
        end;
      end;
    end;
end;

procedure TfrmVendas.DestroiConexao;
begin
    try
      qConnects.Free;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendas.FinalizaVenda;
var
  vcont : Integer;
begin
    if (qState = 1) then
    begin
      if (dbeIdCliente.Text = '') then
      begin
        SetiMens(2,'Cliente n�o informado, pressione a tecla F2 e selecione '+
        'o cliente.');
        Exit;
      end;
      if dbgItens.DataSource.DataSet.Active then
      begin
        vcont := dbgItens.DataSource.DataSet.RecordCount;
        if (vcont > 0) then
        begin
          SelecionaFormaPagto;
          if cdsVendas.State in [dsInsert] then
          begin
            if (qId_FormaPagto > 0) then
              cdsVendas.FieldByName('ID_FORMAPAGTO').Value := qId_FormaPagto;
            cdsVendas.FieldByName('DTAVENDA').Value := Now;
            cdsVendas.Post;
            cdsVendas.ApplyUpdates(0);
            AtualizarEstoqueVendas;
            cdsVendas.Close;
          end;
          if cdsItens.State in [dsInsert] then
          begin
            cdsItens.Cancel;
            cdsItens.Close;
          end;
          dbgItens.DataSource := dsAux;
          SetState(3);
          SetiMens(1,'Venda conclu�da!!! Volte sempre!');
        end;
      end else
      begin
        SetiMens(2,'N�o � poss�vel finalizar a venda, nenhum produto '+
        'selecionado');
      end;
    end;
end;

procedure TfrmVendas.FormataValores;
begin
  dbeSubTotal.Text := CurrToStrF(
    StrToCurrDef(Trim(dbeSubTotal.Text),0),ffNumber,2);

  dbeDesconto.Text := CurrToStrF(
    StrToCurrDef(Trim(dbeDesconto.Text),0),ffNumber,2);

  dbeTotal.Text := CurrToStrF(
    StrToCurrDef(Trim(dbeTotal.Text),0),ffNumber,2);
end;

procedure TfrmVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_F1)      then NovaVenda;
    if (Key = VK_F2)      then ListaClientes;
    if (Key = VK_F3)      then ListaProdutos;
    if (Key = VK_F4)      then CancelaItem;
    if (Key = VK_F5)      then InserirDesconto;
    if (Key = VK_F9)      then FinalizaVenda;
    if (Key = VK_F10)     then CancelaVenda;
    if (Key = VK_F11)     then ConsultaEstoque;
    if (Key = VK_RETURN)  then IncluiProdutos;
    if (Key = VK_ESCAPE)  then Sair;
end;

function TfrmVendas.GetCountProd: Integer;
begin
    Result := FCountProd;
end;

function TfrmVendas.GetDescricaoProd(Id: Integer): string;
var
  vsql : TSQLQuery;
begin
    Result := '';
    try
      try
        vsql := TSQLQuery.Create(Nil);
        vsql.SQLConnection := sqlConnVendas;
        vsql.SQL.Add('SELECT FIRST 1 NOME FROM TBCADPRODUTOS ');
        vsql.SQL.Add('WHERE 1 = 1 ');
        vsql.SQL.Add('AND ID = '+IntToStr(Id));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          Result :=  vsql.FieldByName('NOME').Value;
        end;
      finally
        vsql.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmVendas.GetId_FormaPagto: Integer;
begin
    Result := FId_FormaPagto;
end;

function TfrmVendas.GetNomeCliente(Id: Integer): string;
var
  vsql : TSQLQuery;
begin
    Result := '';
    try
      try
        vsql := TSQLQuery.Create(Nil);
        vsql.SQLConnection := sqlConnVendas;
        vsql.SQL.Add('SELECT FIRST 1 NOME FROM TBCADCLIENTES ');
        vsql.SQL.Add('WHERE 1 = 1 ');
        vsql.SQL.Add('AND ID = '+IntToStr(Id));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          Result :=  vsql.FieldByName('NOME').Value;
        end;
      finally
        vsql.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TfrmVendas.GetState: Integer;
begin
    Result := FState;
end;

function TfrmVendas.GetValorUnitario(Id: Integer): Double;
var
  vsql : TSQLQuery;
begin
    Result := 0.00;
    try
      try
        vsql := TSQLQuery.Create(Nil);
        vsql.SQLConnection := sqlConnVendas;
        vsql.SQL.Add('SELECT FIRST 1 VLRVENDAUTILIZADO FROM TBCADPRODUTOS ');
        vsql.SQL.Add('WHERE 1 = 1 ');
        vsql.SQL.Add('AND ID = '+IntToStr(Id));
        vsql.Open;
        if NOT (vsql.IsEmpty) then
        begin
          Result :=  vsql.FieldByName('VLRVENDAUTILIZADO').Value;
        end;
      finally
        vsql.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendas.GravaProduto;
var
  cont : Integer;
  vsql : TSQLQuery;
  vVlr : Double;
  vQtd : Integer;
begin
    if (qState = 1) then
    begin
      try
        if cdsItens.State in [dsInsert] then
        begin
          try
            vVlr := 0;
            vsql := TSQLQuery.Create(Nil);
            vsql.SQLConnection := sqlConnVendas;
            vsql.SQL.Add('SELECT VLRVENDAUTILIZADO FROM TBCADPRODUTOS ');
            vsql.SQL.Add('WHERE 1 = 1 ');
            vsql.SQL.Add('AND ID = '+dbeId_Produto.Text);
            vsql.Open;
            if NOT (vsql.IsEmpty) then
            begin
              vVlr := vsql.FieldByName('VLRVENDAUTILIZADO').Value;
              vQtd := StrToInt(dbeQtdProduto.Text);
              cdsItens.FieldByName('VLRUNITARIO').Value := vVlr;
              cdsItens.FieldByName('VLRTOTAL').Value := (vVlr * vQtd);
            end;
          finally
            vsql.Free;
          end;
          if vVlr = 0 then
          begin
            SetiMens(2,'Produto sem o valor de venda.');
            Exit;
          end;
          cdsItens.FieldByName('ID_VENDAS').Value := StrToInt(dbeCodVenda.Text);
          cdsItens.Post;
          if (qCountProd = 1) then
            SetCountProd(qCountProd +1) else
          if (qCountProd > 1) then
            SetCountProd(qCountProd +1);
          cdsItens.ApplyUpdates(0);
          NovoProduto;
          AbreGrid;
          dbeId_Produto.SetFocus;
        end;
      except on e : exception do
          SetiMens(0,e.Message);
      end;
    end;
end;

procedure TfrmVendas.IncluiProdutos;
begin
    if (qState = 1) then
    begin
      if (dbeId_Produto.Text = '') then
      begin
        SetiMens(2,'C�digo do produto n�o informado.');
        Exit;
      end;
      if (dbeQtdProduto.Text = '') then
      begin
        SetiMens(2,'Quantidade do produto n�o informada.');
        Exit;
      end;
      if (dbeIdCliente.Text = '') then
      begin
        SetiMens(2,'Cliente n�o informado, pressione a tecla F2 e selecione '+
        'o cliente.');
        Exit;
      end;
      if (TemEstoque(StrToInt(dbeId_Produto.Text),
                      StrToInt(dbeQtdProduto.Text))) then
        GravaProduto;
        FormataValores;
    end;
end;

procedure TfrmVendas.InserirDesconto;
var
  vtexto : string;
  vvalor : Double;
begin
    vtexto := '0,00';
    try
      if (qState = 1) then
      begin
        if InputQuery('Informe o valor do desconto','R$ :',vtexto) then
        begin
          vvalor := StrToFloatDef(vtexto,0);
          if (vvalor > cdsVendas.FieldByName('VLR_TOTAL_FINAL').Value) then
          begin
            SetiMens(2,'Desconto maior que o valor total.');
            Exit;
          end;

          cdsVendas.FieldByName('VLR_DESCONTOS').Value := vvalor;
          cdsVendas.FieldByName('VLR_TOTAL_FINAL').Value :=
          (cdsVendas.FieldByName('VLR_TT_VENDA').Value -
           cdsVendas.FieldByName('VLR_DESCONTOS').Value);
          FormataValores;
        end;
      end;
    except
      SetiMens(2,'Informe apenas um valor n�merico.');
      Exit;
    end;
end;

procedure TfrmVendas.LimpaProdutos;
begin
    if (qState = 1) then
    begin

    end;
end;

procedure TfrmVendas.ListaClientes;
begin
    if (qState = 1) then
    begin
        try
          cLocate := TLocate.Create;
          dbeIdCliente.Text := cLocate.GetSearch(0,
                                                  NIL,
                                                  'TBCADCLIENTES',
                                                  'NOME',
                                                  'ID',
                                                  'ID',
                                                  'Pesquisa cliente',
                                                  '',
                                                  'AND STATUS = ''S''',
                                                  '',
                                                  'ORDER BY ID');
        finally
          cLocate.Free;
        end;
    end;
end;

procedure TfrmVendas.ListaProdutos;
begin
    if (qState = 1) then
    begin
        try
          cLocate := TLocate.Create;
          dbeId_Produto.Text := cLocate.GetSearch(0,
                                                  NIL,
                                                  'TBCADPRODUTOS',
                                                  'NOME',
                                                  'ID',
                                                  'ID',
                                                  'Pesquisa produtos',
                                                  '',
                                                  'AND STATUS = ''S''',
                                                  '',
                                                  'ORDER BY ID');
        finally
          cLocate.Free;
        end;
    end;
end;

procedure TfrmVendas.NovaVenda;
begin
    try
        if (qState <> 1) then
        begin
          SetState(1);
          CriaConexao;
          try
            dsItensGrid.DataSet.Close;
            dmGen := TdmGen.Create(Nil);
            cdsVendas.Close;
            cdsVendas.Open;
            cdsVendas.Append;
            SetCountProd(1);
            cdsVendas.FieldByName('ID').Value := dmGen.ProximoId('GEN_ID_VENDAS');
            cdsVendas.FieldByName('ID_CLIENTE').Value := 1;
            cdsVendas.FieldByName('QTD_TT_ITENS').Value := 0;
            cdsVendas.FieldByName('VLR_TT_VENDA').Value := 0.00;
            cdsVendas.FieldByName('VLR_DESCONTOS').Value := 0.00;
            cdsVendas.FieldByName('VLR_TOTAL_FINAL').Value := 0.00;
            NovoProduto;
          finally
            dmGen.Free;
            dbgItens.DataSource := dsItensGrid;
            FormataValores;
          end;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendas.NovoProduto;
var
  cont : Integer;
begin
    if (qState = 1) then
    begin
      try
        sqlItens.Close;
        sqlItens.SQL.Clear;
        sqlItens.SQL.Add('SELECT              ');
        sqlItens.SQL.Add('      ID_VENDAS     ');
        sqlItens.SQL.Add('      ,CONTADOR     ');
        sqlItens.SQL.Add('      ,ID_PRODUTOS  ');
        sqlItens.SQL.Add('      ,QTDPRODUTOS  ');
        sqlItens.SQL.Add('      ,VLRUNITARIO  ');
        sqlItens.SQL.Add('      ,VLRTOTAL     ');
        sqlItens.SQL.Add('FROM TBVENDAS_ITENS ');
        cdsItens.Open;
        ProviderFlags(cdsItens);
        cdsItens.Append;
        cdsItens.FieldByName('CONTADOR').Value := qCountProd;
        dbeId_Produto.SetFocus;
      except on e : exception do
          SetiMens(0,e.Message);
      end;
    end;
end;

procedure TfrmVendas.ProviderFlags(DataSet: TDataSet);
begin
    if (qState = 1) then
    begin
      if (DataSet = cdsVendas) then
      begin
        //PAREI AQUI
      end;
      if (DataSet = cdsItensGrid) then
      begin
        cdsItensGrid.FieldByName('ID_VENDAS').Visible := False;
        cdsItensGrid.FieldByName('CONTADOR').DisplayLabel := 'Seq.';
        cdsItensGrid.FieldByName('CONTADOR').DisplayWidth := 5;
        cdsItensGrid.FieldByName('ID_PRODUTOS').DisplayLabel := 'Cod';
        cdsItensGrid.FieldByName('ID_PRODUTOS').DisplayWidth := 5;
        cdsItensGrid.FieldByName('NOME').DisplayLabel := 'Descricao';
        cdsItensGrid.FieldByName('NOME').DisplayWidth := 30;
        cdsItensGrid.FieldByName('QTDPRODUTOS').DisplayLabel := 'Qtd';
        cdsItensGrid.FieldByName('QTDPRODUTOS').DisplayWidth := 6;
        cdsItensGrid.FieldByName('VLRUNITARIO').DisplayLabel := 'Vlr.Unit.';
        cdsItensGrid.FieldByName('VLRUNITARIO').DisplayWidth := 10;
        cdsItensGrid.FieldByName('VLRTOTAL').DisplayLabel := 'Vlr.Total';
        cdsItensGrid.FieldByName('VLRTOTAL').DisplayWidth := 10;
      end;
      if (DataSet = cdsItens) then
      begin
        cdsItens.FieldByName('ID_VENDAS').ProviderFlags := [pfInKey,pfInUpdate];
        cdsItens.FieldByName('CONTADOR').ProviderFlags := [pfInUpdate];
        cdsItens.FieldByName('ID_PRODUTOS').ProviderFlags := [pfInUpdate];
        cdsItens.FieldByName('QTDPRODUTOS').ProviderFlags := [pfInUpdate];
        cdsItens.FieldByName('VLRUNITARIO').ProviderFlags := [pfInUpdate];
        cdsItens.FieldByName('VLRTOTAL').ProviderFlags := [pfInUpdate];
        TFloatField(cdsItens.FieldByName('VLRUNITARIO')).DisplayFormat :=
        '#,###,##0.00';
      end;
    end;
end;

procedure TfrmVendas.Sair;
var
  val : Boolean;
begin
    val := True;
    if (qState = 1) then
    begin
      SetiMens(2,'Antes de sair, finalize ou cancele a venda primeiro.');
      val := False;
    end;
    if val then
      Close;
end;

function TfrmVendas.SelecionaFormaPagto: Integer;
begin
    try
      if (qState = 1) then
      begin
        frmVendasFinalizar := TfrmVendasFinalizar.Create(Self);
        if (frmVendasFinalizar.ShowModal = mrOk) then
        begin
          SetId_FormaPagto( frmVendasFinalizar.dbgFormaPagto.DataSource.
                              DataSet.FieldByName('ID').Value);
        end;
        FreeAndNil(frmVendasFinalizar);
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendas.SetaConexao;
begin
    if Assigned(qConnects) then
    begin
      sqlVendas.SQLConnection := sqlConnVendas;
      sqlItens.SQLConnection := sqlConnVendas;
      sqlItensGrid.SQLConnection := sqlConnVendas;
    end;
end;

procedure TfrmVendas.SetaTotais;
var
  vsql : TSQLQuery;
  vVlr : Double;
  vVlrDesc : Double;
begin
    if (qState = 1) then
    begin
      cdsVendas.FieldByName('QTD_TT_ITENS').Value := cdsItensGrid.RecordCount;
    try
      vVlr := 0;
      vVlrDesc := 0;
      vsql := TSQLQuery.Create(Nil);
      vsql.SQLConnection := sqlConnVendas;
      vsql.SQL.Add('SELECT SUM(VLRTOTAL) as SUBTOTAL '+
                   'FROM TBVENDAS_ITENS ');
      vsql.SQL.Add('WHERE 1 = 1 ');
      vsql.SQL.Add('AND ID_VENDAS = '+dbeCodVenda.Text);
      vsql.Open;
      if NOT (vsql.IsEmpty) then
      begin
        vVlr := vsql.FieldByName('SUBTOTAL').Value;
        cdsVendas.FieldByName('VLR_TT_VENDA').Value := vVlr;
        vVlrDesc := StrToFloatDef(dbeDesconto.Text,0);
        cdsVendas.FieldByName('VLR_TOTAL_FINAL').Value := (vVlr - vVlrDesc) ;
      end;
    finally
      vsql.Free;
    end;


    end;
end;

procedure TfrmVendas.SetCountProd(const Value: Integer);
begin
    FCountProd := Value;
end;

procedure TfrmVendas.SetId_FormaPagto(const Value: Integer);
begin
    FId_FormaPagto := Value;
end;

procedure TfrmVendas.SetState(const Value: Integer);
begin
    FState := Value;
end;

function TfrmVendas.TemEstoque(CodProduto: Integer;QtdProdutos:Integer
): Boolean;
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
        vsql.Free;
        qConnects.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

end.
