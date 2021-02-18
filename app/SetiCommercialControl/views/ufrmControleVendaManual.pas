unit ufrmControleVendaManual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, uLocate, Vcl.Menus, MIDASLIB, Data.DB, uSetiUseful, uFSUF,
  uFSDialogs;

type
  TfrmControleVendaManual = class(TForm)
    Panel4: TPanel;
    sbInsert: TSpeedButton;
    sbUpdate: TSpeedButton;
    sbDel: TSpeedButton;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    sbPrint: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    sbFormaPagto: TSpeedButton;
    edtFormaPagto: TEdit;
    dbeFormaPagto: TDBEdit;
    Label3: TLabel;
    dbeTotalPagar: TDBEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    dbeCodigo: TDBEdit;
    dbeCliente: TDBEdit;
    edtCliente: TEdit;
    dbeVendedor: TDBEdit;
    edtVendedor: TEdit;
    sbCliente: TSpeedButton;
    sbVendedor: TSpeedButton;
    Panel12: TPanel;
    lbLogradouro: TLabel;
    lbLogradouroNum: TLabel;
    lbLogradouroComp: TLabel;
    lbLogradouroBairro: TLabel;
    lbLogradouroCidade: TLabel;
    lbLogradouroUf: TLabel;
    lbLogradouroCep: TLabel;
    Label11: TLabel;
    dbRegiao: TDBText;
    Label12: TLabel;
    DBText1: TDBText;
    Label13: TLabel;
    DBText2: TDBText;
    Panel13: TPanel;
    sbCancelarVenda: TSpeedButton;
    sbSearch: TButton;
    PopupMenu1: TPopupMenu;
    sbSearch1: TMenuItem;
    sbSearch2: TMenuItem;
    sbSearch3: TMenuItem;
    sbSearch4: TMenuItem;
    sbSearch0: TMenuItem;
    dsPedido: TDataSource;
    dsHistoricoCliente: TDataSource;
    dsVendas: TDataSource;
    dsCliente: TDataSource;
    dsEstoque: TDataSource;
    sbPagamento: TSpeedButton;
    Label4: TLabel;
    dbeDtaPagto: TDBEdit;
    dbrSituacao: TDBRadioGroup;
    sbCalendar: TSpeedButton;
    Panel14: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    sbAtualizaVenda: TSpeedButton;
    edtContagem: TEdit;
    edtEstoque: TEdit;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    dbgVendas: TDBGrid;
    Panel15: TPanel;
    Label7: TLabel;
    sbAtualizaEstoque: TSpeedButton;
    edtQtdEstoque: TEdit;
    DBNavigator2: TDBNavigator;
    dbgEstoque: TDBGrid;
    DBNavigator3: TDBNavigator;
    dbgHistorico: TDBGrid;
    sbAbrirVenda: TSpeedButton;
    sbGerarNovaVenda: TSpeedButton;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    edtVlrUnitario: TEdit;
    procedure FormShow(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbSearch0Click(Sender: TObject);
    procedure sbSearch1Click(Sender: TObject);
    procedure sbSearch2Click(Sender: TObject);
    procedure sbSearch3Click(Sender: TObject);
    procedure sbSearch4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeClienteChange(Sender: TObject);
    procedure dbeClienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbeVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure dbeVendedorChange(Sender: TObject);
    procedure sbClienteClick(Sender: TObject);
    procedure sbVendedorClick(Sender: TObject);
    procedure sbFormaPagtoClick(Sender: TObject);
    procedure dbeFormaPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeFormaPagtoChange(Sender: TObject);
    procedure dbgHistoricoDblClick(Sender: TObject);
    procedure edtEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure edtContagemKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure dbgVendasCellClick(Column: TColumn);
    procedure sbAtualizaVendaClick(Sender: TObject);
    procedure dbgVendasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgEstoqueDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sbAtualizaEstoqueClick(Sender: TObject);
    procedure sbPagamentoClick(Sender: TObject);
    procedure sbCancelarVendaClick(Sender: TObject);
    procedure dbgHistoricoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgVendasTitleClick(Column: TColumn);
    procedure dbgHistoricoTitleClick(Column: TColumn);
    procedure dbgEstoqueTitleClick(Column: TColumn);
    procedure sbCalendarClick(Sender: TObject);
    procedure edtEstoqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbAbrirVendaClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure edtVlrUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure sbGerarNovaVendaClick(Sender: TObject);
    procedure dbgEstoqueCellClick(Column: TColumn);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure edtQtdEstoqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbPrintClick(Sender: TObject);
  private
    FRegExists: Boolean;
    FidStatus: Integer;
    FLocate : TLocate;
    FSetiUserFulDB : TSetiUserFulDB;
    FqRetornoPesquisa: Variant;
    FcSetiUserFulSearching: TSetiUserFulSearching;
    FPedidoId: Integer;
    FGridColIndex: Integer;
    FVlrUnitatioSemFormat: string;
    FNpVendedor: Integer;
    FNpPedidoId: Integer;
    FNpClienteId: Integer;
    FNpPedidoIdNovo: Integer;
    { Private declarations }

    function AbrirPedido(pPedidoId:Integer) : Boolean;
    function AbrirDadosClientes(pClienteId:Integer) : Boolean;
    function AbrirVenda(pPedidoId:Integer) : Boolean;
    function AbrirEstoque(pPedidoId:Integer) : Boolean;
    function AbrirHistorico(pClienteId:Integer) : Boolean;

    function NovoPedido : Boolean;
    function EditarPedido : Boolean;
    function GravarPedido : Boolean;
    function ExcluirPedido : Boolean;
    function ImprimirPedido : Boolean;

    procedure ButtonsControl;
    procedure ComponentsControl(pClear:Boolean=False);
    procedure SetRegExists(const Value: Boolean);
    procedure SetidStatus(const Value: Integer);
    procedure SetqRetornoPesquisa(const Value: Variant);
    procedure Iniciar(pPedidoId:Integer=0;pTipo:Integer=0);
    procedure AbrirDm;
    procedure FecharDataSets(pTipo:Integer=0);
    procedure SetPedidoId(const Value: Integer);
    procedure ReabrirPedido;
    procedure AtualizaEstoqueContagem;
    procedure AtualizaEstoqueAtual;
    procedure PagamentoPedido;
    procedure CancelarPedido;
    procedure SetGridColIndex(const Value: Integer);
    procedure SetVlrUnitatioSemFormat(const Value: string);
    procedure GerarNovoPedido;
    procedure SetNpClienteId(const Value: Integer);
    procedure SetNpPedidoId(const Value: Integer);
    procedure SetNpVendedor(const Value: Integer);
    procedure SetNpPedidoIdNovo(const Value: Integer);

    property cLocate : TLocate read FLocate write FLocate;
    property cSetiUserFulDB : TSetiUserFulDB read FSetiUserFulDB
    write FSetiUserFulDB;
    property GridColIndex : Integer read FGridColIndex write SetGridColIndex;
    property VlrUnitatioSemFormat : string read FVlrUnitatioSemFormat
    write SetVlrUnitatioSemFormat;

    property NpPedidoId : Integer read FNpPedidoId write SetNpPedidoId;
    property NpClienteId : Integer read FNpClienteId write SetNpClienteId;
    property NpVendedor : Integer read FNpVendedor write SetNpVendedor;
    property NpPedidoIdNovo : Integer read FNpPedidoIdNovo write SetNpPedidoIdNovo;



  public
    { Public declarations }
    property qidStatus : Integer read FidStatus write SetidStatus;
    property qRegExists : Boolean read FRegExists write SetRegExists;
    property qRetornoPesquisa : Variant read FqRetornoPesquisa
    write SetqRetornoPesquisa;
    property cSetiUserFulSearching : TSetiUserFulSearching
    read FcSetiUserFulSearching write FcSetiUserFulSearching;
    property qPedidoId : Integer read FPedidoId write SetPedidoId;

  end;

var
  frmControleVendaManual: TfrmControleVendaManual;

implementation

{$R *.dfm}

uses udmControleVendaManual, ufrmCadFormaPagto, uQrpControleVendaManualFicha;

{ TfrmControleVendaManual }

function TfrmControleVendaManual.AbrirDadosClientes(pClienteId: Integer) :
Boolean;
var
  vVal : Boolean;
begin
    Result := False;
    try
      if (pClienteId > 0) then
      begin
        if Assigned(dmControleVendaManual) then
        begin
          vVal := dmControleVendaManual.ClienteAbrir(pClienteId);
          dsCliente.DataSet := dmControleVendaManual.coClienteCds;
          dsCliente.DataSet.Refresh;
          SetidStatus(1);
          Result := vVal;
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.AbrirDm;
begin
    try
      dmControleVendaManual := TdmControleVendaManual.Create(Nil);
      dmControleVendaManual.SetQryPedido(
      ' SELECT                        '+#13+
      '          *                    '+#13+
      '          FROM TBVENDAMANUAL T '+#13+
      ' WHERE 1 = 1                   ');
      dmControleVendaManual.SetQryAnd(
      ' AND T.ID = :ID                ');
      dmControleVendaManual.SetKeyFieldName('ID');
      dsPedido.DataSet := dmControleVendaManual.coPedidoCds;
      dmControleVendaManual.SetInNewMode(True);
    finally

    end;
end;

function TfrmControleVendaManual.AbrirEstoque(pPedidoId: Integer) : Boolean;
var
  vVal : Boolean;
begin
    Result := False;
    try
      if (pPedidoId > 0) then
      begin
          vVal := dmControleVendaManual.EstoqueAbrir(pPedidoId);
          dsEstoque.DataSet := dmControleVendaManual.coEstoqueCds;
          SetidStatus(1);
          Result := vVal;
      end;
    finally

    end;

end;

function TfrmControleVendaManual.AbrirHistorico(pClienteId: Integer) : Boolean;
var
  vVal : Boolean;
begin
    Result := False;
    try
      if (pClienteId > 0) then
      begin
          vVal := dmControleVendaManual.HistoricoAbrir(pClienteId);
          dsHistoricoCliente.DataSet := dmControleVendaManual.coHistoricoCds;
          SetidStatus(1);
          Result := vVal;
      end;
    finally

    end;
end;

function TfrmControleVendaManual.AbrirPedido(pPedidoId:Integer) : Boolean;
var
  vVal : Boolean;
begin
    Result := False;
    try
      if (pPedidoId > 0) then
      begin
          dmControleVendaManual.SetKeyVAlue(pPedidoId);
          vVal := dmControleVendaManual.PedidoAbrir;
          dsPedido.DataSet := dmControleVendaManual.coPedidoCds;
          SetidStatus(1);
          Result := vVal;
      end;
    finally

    end;
end;

function TfrmControleVendaManual.AbrirVenda(pPedidoId: Integer) : Boolean;
var
  vVal : Boolean;
begin
    Result := False;
    try
      if (pPedidoId > 0) then
      begin
          vVal := dmControleVendaManual.VendaAbrir(pPedidoId);
          dsVendas.DataSet := dmControleVendaManual.coVendasCds;
          SetidStatus(1);
          Result := vVal;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.AtualizaEstoqueAtual;
begin
    try
      if Assigned(dmControleVendaManual.coEstoqueCds) then
      begin
        dmControleVendaManual.SetAtPedidoId(StrToInt(dbeCodigo.Text));
        dmControleVendaManual.SetAtEProdutoId(
          dbgEstoque.DataSource.DataSet.FieldByName(
            'ID_VENDAMANUAL_ITEM').AsInteger
        );
        dmControleVendaManual.SetAtEQtdEstoque(
          StrToIntDef(edtQtdEstoque.Text,-1));
        if (dmControleVendaManual.AtualizaEstoqueAtual) then
        begin
          dmControleVendaManual.EstoqueAbrir(StrToInt(dbeCodigo.Text));
          edtQtdEstoque.Clear;
          sbSaveClick(Self);
          sbUpdateClick(Self);
        end;
        edtQtdEstoque.SetFocus;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.AtualizaEstoqueContagem;
var
  vQtdEstoque, vQtdContagem, vTotal : Integer;
begin
    try
      vQtdEstoque := StrToIntDef(edtEstoque.Text,-1);
      vQtdContagem := StrToIntDef(edtContagem.Text,-1);
      if (vQtdEstoque = -1) then
        Exit;

      vTotal := (vQtdEstoque - vQtdContagem);
      if (vTotal < 0) then
      begin
        SetiMens('Contagem maior que o estoque',2);
        Exit;
      end;
      if Assigned(dmControleVendaManual.coVendasCds) then
      begin
        dmControleVendaManual.SetAtPedidoId(StrToInt(dbeCodigo.Text));
        dmControleVendaManual.SetAtProdutoId(
          dbgVendas.DataSource.DataSet.FieldByName('ID_PRODUTO').AsInteger
        );
        dmControleVendaManual.SetAtEstoque(StrToIntDef(edtEstoque.Text,-1));
        dmControleVendaManual.SetAtContagem(StrToIntDef(edtContagem.Text,-1));
        dmControleVendaManual.SetAtVlrUnitarioVenda(
          StrToFloatDef(VlrUnitatioSemFormat,0.00));
        if (dbeCliente.Text = '') then
        begin
          SetiMens('Para atualizar as vendas, ser� necess�rio informar o '+
          'cliente e gravar a venda com a informa��o do mesmo preenchida.',2);
          Exit;
        end else
        dmControleVendaManual.SetAtClienteID(StrToInt(dbeCliente.Text));
        if (dmControleVendaManual.AtualizaVendas) then
        begin
          dmControleVendaManual.VendaAbrir(StrToInt(dbeCodigo.Text));
          edtEstoque.Clear;
          edtContagem.Clear;
          sbSaveClick(Self);
          sbUpdateClick(Self);
        end;
          edtEstoque.SetFocus;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.ButtonsControl;
begin
    try
        sbSearch.Enabled          := (qidStatus in [0,1]);
        sbInsert.Enabled          := (qidStatus in [0,1]);
        sbUpdate.Enabled          := (qidStatus in [1]) and qRegExists;
        sbDel.Enabled             := (qidStatus in [1]) and qRegExists;
        sbSave.Enabled            := (qidStatus in [2,3]);
        sbCancel.Enabled          := (qidStatus in [1,2,3]);
        sbPrint.Enabled           := (qidStatus in [1]) and qRegExists;
        sbCancelarVenda.Enabled   := (qidStatus in [1]) and qRegExists;
        sbCliente.Enabled         := (qidStatus in [2,3]);
        sbVendedor.Enabled        := (qidStatus in [2,3]);
        sbFormaPagto.Enabled      := (qidStatus in [2,3]);
        sbAtualizaVenda.Enabled   := (qidStatus in [2,3]);
        sbAtualizaEstoque.Enabled := (qidStatus in [2,3]);
        sbAbrirVenda.Enabled      := (qidStatus in [1]) and qRegExists;
        sbGerarNovaVenda.Enabled  := (qidStatus in [1]) and qRegExists;

        sbPagamento.Enabled       :=
          (qidStatus in [3]) and (qRegExists) and (dbrSituacao.ItemIndex = 0);
        sbCalendar.Enabled        := (qidStatus in [2,3]);
    finally

    end;
end;

procedure TfrmControleVendaManual.CancelarPedido;
begin
    try
      if Assigned(dmControleVendaManual.coPedidoCds) then
      begin
        dmControleVendaManual.SetAtPedidoId(StrToInt(dbeCodigo.Text));
        dmControleVendaManual.SetCaClienteId(StrToIntDef(
          dbeCliente.Text,-1));
        dmControleVendaManual.SetCaVendedorId(StrToIntDef(
          dbeVendedor.Text,-1));
        if (dmControleVendaManual.CancelarPedido) then
        begin
          edtEstoque.Clear;
          edtContagem.Clear;
          sbSaveClick(Self);
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.ComponentsControl(pClear:Boolean);
var
    i : Integer;
begin
    try
      for i := 0 to ComponentCount -1 do
      begin
        if Components[i].Tag <> 99 then
        begin
            if (Components[i] is TDBEdit) and (pClear = false) then
              TDBEDIT(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TEdit) and (pClear = false) then
              TEdit(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TMaskEdit) and (pClear = false) then
              TMaskEdit(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBRadioGroup) and (pClear = false) then
              TDBRadioGroup(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBMemo) and (pClear = false) then
              TDBMemo(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBComboBox) and (pClear = false) then
              TDBComboBox(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBLookupComboBox) and (pClear = false) then
              TDBLookupComboBox(Components[i]).ReadOnly := (qidStatus in [0,1])
            else
            if (Components[i] is TDBCheckBox) and (pClear = false) then
              TDBCheckBox(Components[i]).ReadOnly := (qidStatus in [0,1]);
            if (qidStatus in [0,2]) or (pClear) then
            begin
              if (Components[i] is TDBEdit) then
                TDBEDIT(Components[i]).Clear;
              if (Components[i] is TEdit) then
                TEdit(Components[i]).Clear;
              if (Components[i] is TMaskEdit) then
                TMaskEdit(Components[i]).Clear;
              if (Components[i] is TDBMemo) then
                TDBMemo(Components[i]).Lines.Clear;
              if (Components[i] is TDBComboBox) then
                TDBComboBox(Components[i]).Clear;
              if (Components[i] is TDBLookupComboBox) then
                TDBLookupComboBox(Components[i]).KeyValue := 0;
              if (Components[i] is TDBCheckBox) then
                TDBCheckBox(Components[i]).Checked := False;
              if (Components[i] is TCheckBox) then
                TCheckBox(Components[i]).Checked := False;
            end;
            if (qidStatus in [0]) or (pClear) then
            begin
              if (Components[i] is TDBText) then
                TDBText(Components[i]).Visible := False;
            end else
            begin
              if (Components[i] is TDBText) then
                TDBText(Components[i]).Visible := True;
            end;
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.dbeClienteChange(Sender: TObject);
begin
    try
      cSetiUserFulDB := TSetiUserFulDB.Create;
      cSetiUserFulDB.SetiUsefulDBFillDescById(
          dbeCliente,
          edtCliente,
          'TBCADCLIENTES',
          'ID',
          'NOME',
          'AND STATUS = ''S''');
      if (dbeCliente.Text <> '') then
      begin
        AbrirDadosClientes(StrToInt(dbeCliente.Text));
        AbrirHistorico(StrToInt(dbeCliente.Text));
      end else
      begin
        FecharDataSets(2);
        FecharDataSets(5);
      end;
    finally
      cSetiUserFulDB := Nil;
    end;
end;

procedure TfrmControleVendaManual.dbeClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.dbeFormaPagtoChange(Sender: TObject);
begin
    try
      cSetiUserFulDB := TSetiUserFulDB.Create;
      cSetiUserFulDB.SetiUsefulDBFillDescById(
          dbeFormaPagto,
          edtFormaPagto,
          'TBFORMAPAGTO',
          'ID',
          'DESCRICAO','');
    finally
      cSetiUserFulDB := Nil;
    end;
end;

procedure TfrmControleVendaManual.dbeFormaPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.dbeVendedorChange(Sender: TObject);
begin
    try
      cSetiUserFulDB := TSetiUserFulDB.Create;
      cSetiUserFulDB.SetiUsefulDBFillDescById(
          dbeVendedor,
          edtVendedor,
          'TBCADFUNCIONARIOS',
          'ID',
          'NOME',
          'AND STATUS = ''S''');
    finally
      cSetiUserFulDB := Nil;
    end;
end;

procedure TfrmControleVendaManual.dbeVendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.dbgEstoqueCellClick(Column: TColumn);
begin
    if Assigned(dmControleVendaManual.coVendasCds) then
    begin
        edtQtdEstoque.Text :=
        dbgEstoque.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
    end;
end;

procedure TfrmControleVendaManual.dbgEstoqueDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if Column.Field = dbgEstoque.DataSource.DataSet.FieldByName('NOME') then
    begin
      dbgEstoque.Canvas.Brush.Color := clSilver;
      dbgEstoque.Canvas.Font.Color  := clNavy;
      dbgEstoque.Canvas.FillRect( rect );
      dbgEstoque.Canvas.Font.Style := [fsBold];
      dbgEstoque.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgEstoque.DataSource.DataSet.FieldByName('VLRESTOQUE') then
    begin
      dbgEstoque.Canvas.Brush.Color := clSilver;
      dbgEstoque.Canvas.Font.Color  := clBlue;
      dbgEstoque.Canvas.FillRect( rect );
      dbgEstoque.Canvas.Font.Style := [fsBold];
      dbgEstoque.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
end;

procedure TfrmControleVendaManual.dbgEstoqueTitleClick(Column: TColumn);
begin
  SetiUsefulOrdenaGrid(dbgEstoque,Column);
end;

procedure TfrmControleVendaManual.dbgHistoricoDblClick(Sender: TObject);
begin
    if Assigned(dmControleVendaManual.coPedidoCds) then
      if dmControleVendaManual.coPedidoCds.State in [dsBrowse] then
      begin
        if not (
          dbgHistorico.DataSource.DataSet.FieldByName('COD').IsNull) then
        begin
          SetPedidoId(
                dbgHistorico.DataSource.DataSet.FieldByName('COD').Value);
          FecharDataSets(0);
          ReabrirPedido;
        end;
      end;
end;

procedure TfrmControleVendaManual.dbgHistoricoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if dbgHistorico.DataSource.DataSet.FieldByName('SITUACAO').Value = 'C' then
    begin
      dbgHistorico.Canvas.Font.Color:= clSilver;
      dbgHistorico.DefaultDrawDataCell(Rect,
        dbgHistorico.columns[datacol].field, State);
    end else
    if dbgHistorico.DataSource.DataSet.FieldByName('SITUACAO').Value = 'P' then
    begin
      dbgHistorico.Canvas.Font.Color:= clBlue;
      dbgHistorico.DefaultDrawDataCell(Rect,
        dbgHistorico.columns[datacol].field, State);
    end;
end;

procedure TfrmControleVendaManual.dbgHistoricoTitleClick(Column: TColumn);
begin
  SetiUsefulOrdenaGrid(dbgHistorico,Column);
end;

procedure TfrmControleVendaManual.dbgVendasCellClick(Column: TColumn);
begin
    if Assigned(dmControleVendaManual.coVendasCds) then
    begin
        edtEstoque.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
        edtContagem.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM').AsString;
        edtVlrUnitario.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('VLRVENDAUTILIZADO').AsString;
    end;
end;

procedure TfrmControleVendaManual.dbgVendasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('NOME') then
    begin
      dbgVendas.Canvas.Brush.Color := clSilver;
      dbgVendas.Canvas.Font.Color  := clNavy;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE') then
    begin
      dbgVendas.Canvas.Brush.Color := clInfoBk;
      dbgVendas.Canvas.Font.Color  := clNavy;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM') then
    begin
      dbgVendas.Canvas.Brush.Color := clInfoBk;
      dbgVendas.Canvas.Font.Color  := clTeal;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('QTDVENDA') then
    begin
      dbgVendas.Canvas.Brush.Color := clSilver;
      dbgVendas.Canvas.Font.Color  := clNavy;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('VLRVENDAUTILIZADO') then
    begin
      dbgVendas.Canvas.Brush.Color := clSilver;
      dbgVendas.Canvas.Font.Color  := clTeal;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
    if Column.Field =
      dbgVendas.DataSource.DataSet.FieldByName('VLRVENDA') then
    begin
      dbgVendas.Canvas.Brush.Color := clSilver;
      dbgVendas.Canvas.Font.Color  := clRed;
      dbgVendas.Canvas.FillRect( rect );
      dbgVendas.Canvas.Font.Style := [fsBold];
      dbgVendas.DefaultDrawColumnCell( Rect, DataCol, Column, state);
    end;
end;

procedure TfrmControleVendaManual.dbgVendasTitleClick(Column: TColumn);
begin
  SetiUsefulOrdenaGrid(dbgVendas,Column);
end;

procedure TfrmControleVendaManual.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if Assigned(dmControleVendaManual.coVendasCds) then
    begin
        edtEstoque.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
        edtContagem.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM').AsString;
        edtVlrUnitario.Text :=
        dbgVendas.DataSource.DataSet.FieldByName('VLRVENDAUTILIZADO').AsString;
    end;
end;

procedure TfrmControleVendaManual.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if Assigned(dmControleVendaManual.coVendasCds) then
    begin
        edtQtdEstoque.Text :=
        dbgEstoque.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
    end;
end;

procedure TfrmControleVendaManual.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in ['0'..'9',',',#8]) then key :=#0;
end;

function TfrmControleVendaManual.EditarPedido: Boolean;
begin
    try
      if Assigned(dmControleVendaManual) then
      begin
        dmControleVendaManual.PedidoEditar;
        SetPedidoId(StrToInt(dbeCodigo.Text));
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.edtContagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   try
      if (dsPedido.DataSet.State in [dsEdit]) then
      begin
        if (Key in [VK_UP]) then
        begin
          dbgVendas.DataSource.DataSet.Prior;
        end else
        if (Key in [VK_DOWN]) then
        begin
          dbgVendas.DataSource.DataSet.Next;
        end else
        if (Key in [VK_F12]) then
        begin
          sbAtualizaVendaClick(Self);
        end;
      end;
      if (Key in [VK_UP,VK_DOWN]) then
      begin
        if Assigned(dmControleVendaManual.coVendasCds) then
        begin
            edtEstoque.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
            edtContagem.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM').AsString;
            edtVlrUnitario.Text :=
            dbgVendas.DataSource.DataSet.
              FieldByName('VLRVENDAUTILIZADO').AsString;
        end;
      end;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TfrmControleVendaManual.edtContagemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.edtEstoqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   try
      if (dsPedido.DataSet.State in [dsEdit]) then
      begin
        if (Key in [VK_UP]) then
        begin
          dbgVendas.DataSource.DataSet.Prior;
        end else
        if (Key in [VK_DOWN]) then
        begin
          dbgVendas.DataSource.DataSet.Next;
        end else
        if (Key in [VK_F12]) then
        begin
          sbAtualizaVendaClick(Self);
        end;
      end;
      if (Key in [VK_UP,VK_DOWN]) then
      begin
        if Assigned(dmControleVendaManual.coVendasCds) then
        begin
            edtEstoque.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
            edtContagem.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM').AsString;
            edtVlrUnitario.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('VLRVENDAUTILIZADO').AsString;
        end;
      end;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TfrmControleVendaManual.edtEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.edtQtdEstoqueKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    try
      if (dsPedido.DataSet.State in [dsEdit]) then
      begin
        if (Key in [VK_UP]) then
        begin
          dbgEstoque.DataSource.DataSet.Prior;
        end else
        if (Key in [VK_DOWN]) then
        begin
          dbgEstoque.DataSource.DataSet.Next;
        end else
        if (Key in [VK_F12]) then
        begin
          sbAtualizaEstoqueClick(Self);
        end;
      end;
      if (Key in [VK_UP,VK_DOWN]) then
      begin
        if Assigned(dmControleVendaManual.coVendasCds) then
        begin
            edtQtdEstoque.Text :=
            dbgEstoque.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.edtQtdEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not (key in ['0'..'9',#8]) then
    key := #0;
end;

procedure TfrmControleVendaManual.edtVlrUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',',',#8]) then key :=#0;
end;

function TfrmControleVendaManual.ExcluirPedido: Boolean;
begin
    try
      if Assigned(dmControleVendaManual) then
      begin
        dmControleVendaManual.PedidoExcluir;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    try
      if Assigned(dmControleVendaManual) then
        dmControleVendaManual.Free;
    finally

    end;
end;

procedure TfrmControleVendaManual.FormCreate(Sender: TObject);
begin
    try
      AbrirDm;
      cSetiUserFulSearching := TSetiUserFulSearching.Create;
    finally

    end;
end;

procedure TfrmControleVendaManual.FormShow(Sender: TObject);
begin
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
end;

procedure TfrmControleVendaManual.GerarNovoPedido;
var
  vPedidoOld : Integer;
begin
    try
      if Assigned(dmControleVendaManual.coPedidoCds) then
      begin
        if dmControleVendaManual.coPedidoCds.State in [dsBrowse] then
        begin
          if not (dmControleVendaManual.coEstoqueCds.IsEmpty) then
          begin
            vPedidoOld := StrToInt(dbeCodigo.Text);
            SetNpPedidoId(StrToIntDef(dbeCodigo.Text,-1));
            SetNpClienteId(StrToIntDef(dbeCliente.Text,-1));
            SetNpVendedor(StrToIntDef(dbeVendedor.Text,-1));
            if NOT Assigned(cSetiUserFulDB) then
              cSetiUserFulDB := TSetiUserFulDB.Create;
            if (cSetiUserFulDB.VendaManualExisteProdutoEstoque(NpPedidoId)) then
            begin
              SetNpPedidoId(StrToIntDef(dbeCodigo.Text,-1));
              SetNpClienteId(StrToIntDef(dbeCliente.Text,-1));
              SetNpVendedor(StrToIntDef(dbeVendedor.Text,-1));
              if (NpClienteId = -1) then
              begin
                SetiMens('Cliente n�o informado',2);
                Exit;
              end;
              if (NpVendedor = -1) then
              begin
                SetiMens('Vendedor n�o informado',2);
                Exit;
              end;
              sbInsertClick(Self);
              dbeCliente.Text := IntToStr(NpClienteId);
              dbeVendedor.Text := IntToStr(NpVendedor);
              SetNpPedidoIdNovo(StrToIntDef(dbeCodigo.Text,-1));
              sbSaveClick(Self);
              dmControleVendaManual.VendaAbrir(NpPedidoIdNovo);
              edtEstoque.Clear;
              edtContagem.Clear;
              dmControleVendaManual.SetInNewMode(False);
              sbSaveClick(Self);
              dmControleVendaManual.SetInNewMode(True);
              SetidStatus(3);
              ButtonsControl;
              ComponentsControl;
              dmControleVendaManual.SetVMdmPedidoIDOld(vPedidoOld);
              dmControleVendaManual.SetVMdmPedidoIDONew(
                StrToIntDef(dbeCodigo.Text,-1));
              dmControleVendaManual.ImportarItensEstoquePedidoNovo;
              EditarPedido;
              dmControleVendaManual.SetInNewMode(False);
              sbSaveClick(Self);
              dmControleVendaManual.SetInNewMode(True);
              edtEstoque.Enabled := True;
              edtContagem.Enabled := True;
              edtVlrUnitario.Enabled := True;
              edtQtdEstoque.Enabled := True;
              edtEstoque.SetFocus;
            end else
            begin
              SetiMens('N�o existem produtos lan�ados no estoque atual.');
              Exit;
            end;
          end else Exit;
        end else Exit;
      end else Exit;
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

function TfrmControleVendaManual.GravarPedido: Boolean;
begin
    Result := False;
    try
      if Assigned(dmControleVendaManual) then
        dmControleVendaManual.PedidoGravar;
    finally

    end;
end;

function TfrmControleVendaManual.ImprimirPedido: Boolean;
begin
    Result := False;
    try
      if Assigned(dmControleVendaManual) then
      begin
        if (dmControleVendaManual.coPedidoCds.State in [dsBrowse]) then
        begin
          qrpControleVendaManualFicha :=
            TqrpControleVendaManualFicha.Create(Self);
            qrpControleVendaManualFicha.SetqClienteId(
              StrToIntDef(dbeCliente.Text,-1));
            qrpControleVendaManualFicha.SetqPedidoId(
              StrToIntDef(dbeCodigo.Text,-1));
            qrpControleVendaManualFicha.AbrirRelatorio;
            qrpControleVendaManualFicha.Release;
        end;
      end;
    finally
      qrpControleVendaManualFicha := Nil;

    end;
end;

procedure TfrmControleVendaManual.Iniciar(pPedidoId,pTipo : Integer);
begin
    try
        if NOT (Assigned(dmControleVendaManual)) then
        begin        
          AbrirDm;
         dmControleVendaManual.SetInNewMode(True);
        end;

        if (pPedidoId > 0) then
        begin
          if Assigned(dmControleVendaManual) then
          begin
            if (pTipo in [0,1]) then
              SetRegExists(AbrirPedido(pPedidoId));
            if (pTipo in [0,2]) then
              AbrirVenda(pPedidoId);
            if (pTipo in [0,3]) then
              AbrirEstoque(pPedidoId);

            if (pTipo in [0,1,2,3]) then
            begin
              SetidStatus(1);
              ButtonsControl;
              ComponentsControl;
              edtEstoque.Enabled := False;
              edtContagem.Enabled := False;
              edtVlrUnitario.Enabled := False;
              edtQtdEstoque.Enabled := False;
        if Assigned(dmControleVendaManual.coVendasCds) then
        begin
            edtEstoque.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
            edtContagem.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('CONTAGEM').AsString;
            edtVlrUnitario.Text :=
            dbgVendas.DataSource.DataSet.FieldByName('VLRVENDAUTILIZADO').AsString;

            edtQtdEstoque.Text :=
            dbgEstoque.DataSource.DataSet.FieldByName('QTDESTOQUE').AsString;
        end;
            end;
          end;
        end;
    finally

    end;
end;

function TfrmControleVendaManual.NovoPedido: Boolean;
begin
    Result := False;
    try
      AbrirDm;
      dmControleVendaManual.SetInNewMode(True);
      dmControleVendaManual.PedidoNovo;
      dbeCodigo.Text := IntToStr(dmControleVendaManual.qGetNewPedidoId);
      SetPedidoId(StrToInt(dbeCodigo.Text));
    finally

    end;
end;

procedure TfrmControleVendaManual.PagamentoPedido;
begin
    try
      if Assigned(dmControleVendaManual.coPedidoCds) then
      begin
        dmControleVendaManual.SetAtPedidoId(StrToInt(dbeCodigo.Text));
        dmControleVendaManual.SetPgFormaPagtoId(StrToIntDef(
          dbeFormaPagto.Text,-1));
        dmControleVendaManual.SetPgClienteId(StrToIntDef(
          dbeCliente.Text,-1));
        if dmControleVendaManual.coPedidoCds.FieldByName(
            'ID_FUNCIONARIO').IsNull then
        begin
          SetiMens('Para efetur o pagamento, ser� necess�rio informar o '+
          'vendedor e gravar a venda com a informa��o do mesmo preenchida.',2);
          Exit;
        end;

        dmControleVendaManual.SetPgVendedorId(StrToIntDef(
          dbeVendedor.Text,-1));
        dmControleVendaManual.SetPgDtaPagamento(StrToDateDef(
        dbeDtaPagto.Text,Now));
        if (dmControleVendaManual.PagamentoPedido) then
        begin
          dmControleVendaManual.VendaAbrir(StrToInt(dbeCodigo.Text));
          edtEstoque.Clear;
          edtContagem.Clear;
          sbSaveClick(Self);
        end;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.ReabrirPedido;
begin
    try
      if (qPedidoId > 0) then
      begin
        Iniciar(qPedidoId,0);
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbAtualizaEstoqueClick(Sender: TObject);
begin
    try
      AtualizaEstoqueAtual;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbAtualizaVendaClick(Sender: TObject);
var
  s : string;
  f : Double;
  vValue : string;
begin
    try
      if edtVlrUnitario.Text = '' then
      begin
        SetiMens('Valor unit�rio n�o informado.',2);
        Exit;
      end;
      if (edtVlrUnitario.Text <> '') then
      begin
        vValue := StringReplace(edtVlrUnitario.Text, '.', '', [rfReplaceAll]);
        s := vValue;
        if NOT (TryStrToFloat(s,f)) then
        begin
          SetiMens('O valor unit�rio informado � inv�lido.',2);
          Exit;
        end;
      end;
      SetVlrUnitatioSemFormat(vValue);
      AtualizaEstoqueContagem;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbCalendarClick(Sender: TObject);
begin
    try
        cSetiUserFulDB := TSetiUserFulDB.Create;
        dbeDtaPagto.Text := cSetiUserFulDB.GetDateSel;
    finally
        cSetiUserFulDB := Nil;
    end;
end;

procedure TfrmControleVendaManual.sbCancelarVendaClick(Sender: TObject);
begin
    try
      CancelarPedido;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbCancelClick(Sender: TObject);
begin
    try
      if dmControleVendaManual.coPedidoCds.State in [dsInsert] then
      begin
        if NOT Assigned(cSetiUserFulDB) then
          cSetiUserFulDB := TSetiUserFulDB.Create;
        cSetiUserFulDB.GeneratorCancel('GEN_ID_VENDAMANUAL');
      end;
      SetidStatus(0);
      ButtonsControl;
      ComponentsControl;
      FecharDataSets(0);
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;


    end;
end;

procedure TfrmControleVendaManual.sbClienteClick(Sender: TObject);
begin
    try
      if dbeCliente.Text <> '' then
      begin
          if not Assigned(cSetiUserFulDB) then
            cSetiUserFulDB := TSetiUserFulDB.Create;
        if cSetiUserFulDB.ExisteVendaNoPedido(StrToInt(dbeCodigo.Text)) then
        begin
          SetiMens('Exitem lan�amentos realizados nesta venda para este '+
          ' cliente, portanto o mesmo n�o pode ser alterado, zere os '+
          ' lan�amentos atuais realizar esta altera��o.',2);
          Exit;
        end;
      end;
      if Assigned(cSetiUserFulSearching) then
        dbeCliente.Text := cSetiUserFulSearching.GetSearchingFieldValue(6);
    finally
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

procedure TfrmControleVendaManual.sbDelClick(Sender: TObject);
begin
    ExcluirPedido;
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
    FecharDataSets(0);
end;

procedure TfrmControleVendaManual.sbFormaPagtoClick(Sender: TObject);
begin
    frmCadFormaPagto := TfrmCadFormaPagto.Create(Nil);
    if frmCadFormaPagto.ShowModal = mrOk then
      dbeFormaPagto.Text := IntToStr(frmCadFormaPagto.qIdSelecionado);
end;

procedure TfrmControleVendaManual.sbGerarNovaVendaClick(Sender: TObject);
begin
    try
      if SetiMensQuestions('Confirma gera��o de um novo pedido a partir '+
        ' do estoque consignado.',0) then
      begin
        GerarNovoPedido;
      end;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbInsertClick(Sender: TObject);
begin
    FecharDataSets(0);
    SetidStatus(2);
    ButtonsControl;
    ComponentsControl;
    NovoPedido;
    edtEstoque.Enabled := False;
    edtContagem.Enabled := False;
    edtVlrUnitario.Enabled := False;
    edtVlrUnitario.Clear;
    edtQtdEstoque.Enabled := False;
    sbAtualizaVenda.Enabled := False;
    sbAtualizaEstoque.Enabled := False;
    sbAbrirVenda.Enabled := False;
    sbGerarNovaVenda.Enabled := False;
    dbeCliente.SetFocus;
end;

procedure TfrmControleVendaManual.sbSaveClick(Sender: TObject);
begin
    if (dbeCliente.Text = '') then
    begin
      SetiMens('Cliente n�o informado.',2);
      Exit;
    end;

    GravarPedido;
    SetidStatus(0);
    ButtonsControl;
    ComponentsControl;
    FecharDataSets(0);
    ReabrirPedido;
end;

procedure TfrmControleVendaManual.sbSearch0Click(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
    begin
      SetPedidoId(
                cSetiUserFulSearching.GetSearchingFieldKeyValue(1));
      FecharDataSets(0);
      Iniciar(qPedidoId,0);
    end;
end;

procedure TfrmControleVendaManual.sbSearch1Click(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
      Iniciar(cSetiUserFulSearching.GetSearchingFieldKeyValue(2));
end;

procedure TfrmControleVendaManual.sbSearch2Click(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
      Iniciar(cSetiUserFulSearching.GetSearchingFieldKeyValue(3));
end;

procedure TfrmControleVendaManual.sbSearch3Click(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
      Iniciar(cSetiUserFulSearching.GetSearchingFieldKeyValue(4));
end;

procedure TfrmControleVendaManual.sbSearch4Click(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
      Iniciar(cSetiUserFulSearching.GetSearchingFieldKeyValue(5));
end;

procedure TfrmControleVendaManual.sbUpdateClick(Sender: TObject);
begin
    if (dbrSituacao.ItemIndex in [0]) then
    begin
      SetidStatus(3);
      ButtonsControl;
      ComponentsControl;
      EditarPedido;
      edtEstoque.Enabled := True;
      edtContagem.Enabled := True;
      edtVlrUnitario.Enabled := True;
      edtQtdEstoque.Enabled := True;
      edtEstoque.SetFocus;
    end else
    begin
      SetiMens('Esta venda n�o pode ser alterada.',2);
      Exit;
    end;
end;

procedure TfrmControleVendaManual.FecharDataSets(pTipo: Integer);
begin
    try
        if (pTipo >= 0) then
        begin
          if Assigned(dmControleVendaManual) then
          begin
            if (pTipo in [0,1]) then
              dmControleVendaManual.coPedidoCds.Close;
            if (pTipo in [0,2]) then
              dmControleVendaManual.coClienteCds.Close;
            if (pTipo in [0,3]) then
              dmControleVendaManual.coVendasCds.Close;
            if (pTipo in [0,4]) then
              dmControleVendaManual.coEstoqueCds.Close;
            if (pTipo in [0,5]) then
              dmControleVendaManual.coHistoricoCds.Close;

            if (pTipo in [0]) then
            begin
              dmControleVendaManual := nil;
            end;
          end;
        end;
    finally

    end;
end;

procedure TfrmControleVendaManual.SetGridColIndex(const Value: Integer);
begin
  FGridColIndex := Value;
end;

procedure TfrmControleVendaManual.SetidStatus(const Value: Integer);
begin
    FidStatus := Value;
end;

procedure TfrmControleVendaManual.SetNpClienteId(const Value: Integer);
begin
  FNpClienteId := Value;
end;

procedure TfrmControleVendaManual.SetNpPedidoId(const Value: Integer);
begin
  FNpPedidoId := Value;
end;

procedure TfrmControleVendaManual.SetNpPedidoIdNovo(const Value: Integer);
begin
  FNpPedidoIdNovo := Value;
end;

procedure TfrmControleVendaManual.SetNpVendedor(const Value: Integer);
begin
  FNpVendedor := Value;
end;

procedure TfrmControleVendaManual.SetPedidoId(const Value: Integer);
begin
    FPedidoId := Value;
end;

procedure TfrmControleVendaManual.SetqRetornoPesquisa(const Value: Variant);
begin
    FqRetornoPesquisa := Value;
end;

procedure TfrmControleVendaManual.SetRegExists(const Value: Boolean);
begin
    FRegExists := Value;
end;

procedure TfrmControleVendaManual.SetVlrUnitatioSemFormat(const Value: string);
begin
  FVlrUnitatioSemFormat := Value;
end;

procedure TfrmControleVendaManual.sbAbrirVendaClick(Sender: TObject);
begin
    dbgHistoricoDblClick(Self);
end;

procedure TfrmControleVendaManual.sbPagamentoClick(Sender: TObject);
begin
    try
      PagamentoPedido;
    finally

    end;
end;

procedure TfrmControleVendaManual.sbPrintClick(Sender: TObject);
begin
  try
    if (ImprimirPedido) then
    begin
      //
    end;

  finally

  end;
end;

procedure TfrmControleVendaManual.sbVendedorClick(Sender: TObject);
begin
    if Assigned(cSetiUserFulSearching) then
      dbeVendedor.Text := cSetiUserFulSearching.GetSearchingFieldValue(7);
end;

end.