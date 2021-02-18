unit ufrmCadCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadrao, Vcl.ImgList, Vcl.Menus, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, uSetiConnects;

type
  TfrmCadCompras = class(TfrmCadPadrao)
    Label3: TLabel;
    dbeCodInterno: TDBEdit;
    Label5: TLabel;
    dbmDescricao: TDBMemo;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    dbrStatusPedido: TDBRadioGroup;
    Panel3: TPanel;
    Label4: TLabel;
    dbeQtdItens: TDBEdit;
    Label6: TLabel;
    dbeVlrItens: TDBEdit;
    Label7: TLabel;
    dbeNumNF: TDBEdit;
    Label8: TLabel;
    dbeVlrTotalNf: TDBEdit;
    Label9: TLabel;
    dbeAcrescimos: TDBEdit;
    SetiSqlStoredProc: TSQLStoredProc;
    sbItensPedido: TSpeedButton;
    Label2: TLabel;
    dbeFornecedor: TDBEdit;
    edtFornecedor: TEdit;
    sbEfetivarPedido: TSpeedButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbItensPedidoClick(Sender: TObject);
    procedure dbeAcrescimosKeyPress(Sender: TObject; var Key: Char);
    procedure sbDelClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure dsPadraoDataChange(Sender: TObject; Field: TField);
    procedure sbEfetivarPedidoClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure dbeAcrescimosExit(Sender: TObject);
    procedure dbeFornecedorExit(Sender: TObject);
  private
    { Private declarations }
     FConnects : TSetiConnects;
     FqInserindoProd: Boolean;
     FqUltimoId: Integer;
     function ExistemItens(Atualiza : Boolean) : Boolean;
     function ExisteFornecedor : Boolean;
     procedure AtualizaPedidoCompra(Limpa:Integer=0);
     procedure EfetivarPedidoCompra;
     procedure DeletaProdutos;
     procedure SetqInserindoProd(const Value: Boolean);
     procedure HabilitaEfetivarPedido;
    procedure SetqUltimoId(const Value: Integer);
     property qConnects : TSetiConnects read FConnects write FConnects;
     property qInserindoProd : Boolean read FqInserindoProd write
      SetqInserindoProd;
     property qUltimoId : Integer read FqUltimoId write SetqUltimoId;
  public
    { Public declarations }
  end;

var
  frmCadCompras: TfrmCadCompras;

implementation

{$R *.dfm}

uses ufrmCadFornecedores, ufrmCadCompras_Itens, uMess;

procedure TfrmCadCompras.AtualizaPedidoCompra(Limpa:Integer);
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_COMPRAS_ATUALIZA';
    SetiSqlStoredProc.ParamByName('IDCADCOMPRAS').Value :=
      StrToInt(dbeCodigo.Text);
    SetiSqlStoredProc.ParamByName('LIMPA').Value := Limpa;
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

procedure TfrmCadCompras.dbeAcrescimosExit(Sender: TObject);
var
    Valor : real;
begin
  inherited;

    {if (dbeAcrescimos.Text <> '') then
    begin
      valor := StrToCurr(dbeAcrescimos.Text);
      dbeAcrescimos.Text := FormatFloat('#,0.00',(Valor));
    end;}
end;

procedure TfrmCadCompras.dbeAcrescimosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if ( Key in ['.',','] ) then
    begin
      Key := #44;
      if Pos(Key,dbeAcrescimos.Text) <> 0 then
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

procedure TfrmCadCompras.dbeFornecedorExit(Sender: TObject);
begin
    if dbeFornecedor.Text = '' then
      edtFornecedor.Clear
    else
    if (dbeFornecedor.Text <> '') and (edtFornecedor.Text = '') then
    begin
        if (NOT ExisteFornecedor) then
        begin
            SetiMens(2,'Fornecedor n�o cadastrado.');
            dbeFornecedor.SetFocus;
            dbeFornecedor.Clear;
            edtFornecedor.Clear;
            Exit;
        end;
    end;
  inherited;
end;

procedure TfrmCadCompras.DeletaProdutos;
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' DELETE FROM TBCADCOMPRAS_ITENS ');
      sql.SQL.Add( ' WHERE ID_CADCOMPRAS = '+dbeCodigo.Text);
      sql.ExecSQL;
    finally
      sql.Free;
      qConnects.Free;
    end;
end;

procedure TfrmCadCompras.dsPadraoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  HabilitaEfetivarPedido;
end;

procedure TfrmCadCompras.EfetivarPedidoCompra;
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_COMPRAS_ATUALIZAESTOQUE';
    SetiSqlStoredProc.ParamByName('ID_COMPRA').Value :=
      StrToInt(dbeCodigo.Text);
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

function TfrmCadCompras.ExistemItens(Atualiza : Boolean): Boolean;
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' SELECT * FROM TBCADCOMPRAS_ITENS I ');
      sql.SQL.Add( ' WHERE I.ID_CADCOMPRAS = '+dbeCodigo.Text);
      sql.Open;
      Result := NOT sql.IsEmpty;
      qConnects.Free;
      if Atualiza then
      begin
        if Result then
        begin
          AtualizaPedidoCompra;
        end else
          AtualizaPedidoCompra(1);
      end;
    finally
      sql.Free;
    end;
end;

procedure TfrmCadCompras.FormCreate(Sender: TObject);
begin
{
    LISTA DE PARAMETROS PARA O FRMFORMPADRAO

    ID    | PROCEDURE               | OBRIGAT�RIO
    -------------------------------------------------
    1     | SetCaptionForm          | S
    2     | SetQryForm              | S
    3     | SetGroupByForm          | N
    4     | SetOrderByForm          | S
    5     | SetTableForm            | S
    6     | SetGenForm              | S
    7     | SetKeyFieldForm         | S
    8     | SetListProviderForm     | S
    9     | SetListMenuForm         | S
    10    | SetListMenuCaptionForm  | S
    11    | SetListRequiredFields   | S

}

    SetCaptionForm('Compras');
    SetQryForm('SELECT                   '+
               '    ID                   '+
               '    ,ID_FORNECEDOR       '+
               '    ,CODIGOINTERNO       '+
               '    ,STATUSPEDIDO        '+
               '    ,NUMNOTAFISCAL       '+
               '    ,VLRNOTAFISCAL       '+
               '    ,QTDTOTALITENS       '+
               '    ,VLRTOTALITENS       '+
               '    ,DATCADASTRO         '+
               '    ,DESCRICAO           '+
               '    ,ACRESCIMOS          '+
               '    ,DATFECHAMENTO       '+
               'FROM TBCADCOMPRAS        '+
              ' WHERE 1 = 1              ');
    SetTableForm('TBCADCOMPRAS');
    SetGenForm('GEN_ID_COMPRAS');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;ID_FORNECEDOR;CODIGOINTERNO;STATUSPEDIDO;'+
    'NUMNOTAFISCAL;VLRNOTAFISCAL;QTDTOTALITENS;VLRTOTALITENS;ACRESCIMOS');
    SetOrderByForm('ORDER BY ID');
    SetListMenuForm('ID');
    SetListMenuCaptionForm('Por Codigo');
    SetListRequiredFields('dbeFornecedor');
    SetListMarriedCompForm(
      '1,dbeFornecedor,edtFornecedor,sbFornecedor,TBCADFORNECEDOR,ID,NOME');
  inherited;
end;


procedure TfrmCadCompras.HabilitaEfetivarPedido;
begin
    sbEfetivarPedido.Enabled := False;
    if qStatus = 'INICIAL' then
      sbEfetivarPedido.Enabled := False
    else
    if NOT dsPadrao.DataSet.IsEmpty then
    begin
      if dsPadrao.DataSet.FieldByName('STATUSPEDIDO').AsString = 'A' then
      begin
        if ExistemItens(False) then
        begin
          if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
            sbEfetivarPedido.Enabled := False else
          sbEfetivarPedido.Enabled := True;
        end else
        begin
          sbEfetivarPedido.Enabled := False;
        end;
      end;
    end;
end;

procedure TfrmCadCompras.sbCancelClick(Sender: TObject);
begin
  if (qStatus = 'INSERT') then
  begin
    if ExistemItens(False) then
      DeletaProdutos;
  end;
  inherited;
  SetqInserindoProd(False);
  HabilitaEfetivarPedido;
end;

procedure TfrmCadCompras.sbDelClick(Sender: TObject);
begin
  if dsPadrao.DataSet.FieldByName('STATUSPEDIDO').AsString = 'A' then
  begin
    SetqConfirma(True);
    if SetiMensQuestions(0,'Confirmar exclus�o do registro?') then
    begin
      DeletaProdutos;
      inherited;
    end;
  end else
  begin
    SetiMens(2,'Este pedido esta fechado e n�o pode ser exclu�do');
    Exit;
  end;
  SetqInserindoProd(False);
end;

procedure TfrmCadCompras.sbEfetivarPedidoClick(Sender: TObject);
begin
  inherited;
    if (SetiMensQuestions(0,'Deseja efetivar esse pedido? Opera��o '+
                            'irrevers�vel!!!')) then
    begin
      EfetivarPedidoCompra;
      SetqInserindoProd(False);
      dsPadrao.DataSet.Refresh;
      SetiMens(1,'Pedido efetivado com sucesso.');
    end;
end;

procedure TfrmCadCompras.sbInsertClick(Sender: TObject);
begin
  inherited;
    dbrStatusPedido.ItemIndex := 0;
    edtFornecedor.Clear;
    SetqInserindoProd(True);
    dbeCodInterno.SetFocus;
    sbEfetivarPedido.Enabled := False;
end;

procedure TfrmCadCompras.sbItensPedidoClick(Sender: TObject);
begin
  inherited;
    if qInserindoProd then
    begin
      if (SetiMensQuestions(1,'Ao abrir a tela de itens, esse pedido ser�'+
                             ' salvo, deseja continuar?')) then
        Exit else
      begin
        SetqUltimoId(StrToInt(dbeCodigo.Text));
        sbSaveClick(Self);
        if qUltimoId > 0 then
          AbrirUltimoId(qUltimoId);
        sbUpdateClick(Self);
      end;

    end;
    if (qStatus = 'INSERT') or (qStatus = 'UPDATE') or (qStatus = 'ABERTO') then
    begin
      frmCadCompras_Itens := TfrmCadCompras_Itens.Create(Nil);
      frmCadCompras_Itens.SetIdCompras(StrToInt(dbeCodigo.Text));
      if dsPadrao.DataSet.FieldByName('STATUSPEDIDO').AsString = 'F' then
        frmCadCompras_Itens.SetModo('ABERTO')
      else
        frmCadCompras_Itens.SetModo(qStatus);
      frmCadCompras_Itens.ShowModal;
      if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
      begin
        if qStatus = 'INSERT' then
          SetExibirMensInsert(False);
        if qStatus = 'UPDATE' then
          SetExibirMensUpdate(False);
        AtualizaPedidoCompra;
        sbSaveClick(Self);
        sbUpdateClick(Self);
        HabilitaEfetivarPedido;
      end;
    end;
end;

procedure TfrmCadCompras.sbSaveClick(Sender: TObject);
begin
  SetNoModoInicialToSave(True);
  inherited;
  if ValidateToSave then
  begin
    if ExistemItens(True) then
    begin
      dsPadrao.DataSet.Refresh;
      SetqInserindoProd(False);
    end;
    HabilitaEfetivarPedido;
  end;
end;

procedure TfrmCadCompras.sbUpdateClick(Sender: TObject);
begin
  if (NOT dsPadrao.DataSet.IsEmpty) then
  begin
    if (dsPadrao.DataSet.FieldByName('STATUSPEDIDO').AsString = 'F') then
    begin
      SetiMens(2,'Este pedido de compra n�o pode ser alterado.');
      Exit;
    end;
  end;
  inherited;
    HabilitaEfetivarPedido;
end;

procedure TfrmCadCompras.SetqInserindoProd(const Value: Boolean);
begin
  FqInserindoProd := Value;
end;

procedure TfrmCadCompras.SetqUltimoId(const Value: Integer);
begin
    FqUltimoId := Value;
end;

function TfrmCadCompras.ExisteFornecedor: Boolean;
var
  sql : TSQLQuery;
begin
    Result := False;
    if (edtFornecedor.Text <> '') then
    begin
      try
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT * FROM tbcadfornecedor F ');
        sql.SQL.Add( ' WHERE F.ID = '+dbeFornecedor.Text);
        sql.Open;
        Result := NOT sql.IsEmpty;
      finally
        sql.Free;
        qConnects.Free;
      end;
    end;
end;

end.




