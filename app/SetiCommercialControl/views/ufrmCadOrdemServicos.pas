{  parei aqui
  * testar estoque ao autorizar a O.S;
  * criar metodo para alterar status da O.S para 'entregue';
  * criar metodo para alterar status da O.S para 'Cliente n�o autorizou',
    caso haja produto, o estoque dever� ser devolvido, obs, este metodo so
    pode ser acionado, caso o pedido n�o estiver entregue;
  * criar metodo para alterar status para cancelado, neste caso, gerar uma
    entrada como devolu��o.
  * criar metodo para alterar status para pago, neste caso, a O.S n�o podera
    ser cancelada mais.
  * verificar a possibilidade da cria��o de uma tela de devolu��o.
  * se o produto for devolvido em qualquer hipotese, gerar uma entrada;
  * Criar tela para controle de estoque;
  * Criar tela para controle do financeiro;         }

unit ufrmCadOrdemServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, Vcl.ImgList, Vcl.Menus,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.Buttons, Data.SqlExpr,
  uSetiConnects, Data.FMTBcd, IBDatabase, MIDASLIB
  ;

type
  TfrmCadOrdemServicos = class(TfrmCadPadrao)
    Label3: TLabel;
    dbeCodInterno: TDBEdit;
    dbrStatusOS: TDBRadioGroup;
    Label2: TLabel;
    dbeCliente: TDBEdit;
    edtCliente: TEdit;
    Panel3: TPanel;
    Label5: TLabel;
    dbmDescricao: TDBMemo;
    sbCancelarOS: TSpeedButton;
    sbAutorizarOS: TSpeedButton;
    SBClienteNaoAutorizou: TSpeedButton;
    Panel7: TPanel;
    SBOSEntregue: TSpeedButton;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label6: TLabel;
    dbeVlrServicos: TDBEdit;
    Label8: TLabel;
    dbeVlrProdutos: TDBEdit;
    Label9: TLabel;
    dbeDescontos: TDBEdit;
    Label4: TLabel;
    dbeTotalOS: TDBEdit;
    Panel8: TPanel;
    dbrSituacaoPG: TDBRadioGroup;
    Label14: TLabel;
    dbeDtPagamento: TDBEdit;
    sbDetalhesOs: TSpeedButton;
    sbProdutosAcessorios: TSpeedButton;
    sbPagamentoOS: TSpeedButton;
    Label15: TLabel;
    dbeQtdProdutos: TDBEdit;
    Label16: TLabel;
    dbeQtdServicos: TDBEdit;
    SetiSqlStoredProc: TSQLStoredProc;
    pmTela: TPopupMenu;
    pmAlterarStatusPedido: TMenuItem;
    pmAutorizarOS: TMenuItem;
    pmEntregue: TMenuItem;
    pmClientenoautorizou: TMenuItem;
    pmCancelarOS: TMenuItem;
    pmPagamentoOS: TMenuItem;
    IBTransaction1: TIBTransaction;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure dbeClienteExit(Sender: TObject);
    procedure sbDetalhesOsClick(Sender: TObject);
    procedure sbProdutosAcessoriosClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbUpdateClick(Sender: TObject);
    procedure SBOSEntregueClick(Sender: TObject);
    procedure SBClienteNaoAutorizouClick(Sender: TObject);
    procedure sbCancelarOSClick(Sender: TObject);
    procedure sbPagamentoOSClick(Sender: TObject);
    procedure pmAutorizarOSClick(Sender: TObject);
    procedure sbAutorizarOSClick(Sender: TObject);
    procedure pmEntregueClick(Sender: TObject);
    procedure pmClientenoautorizouClick(Sender: TObject);
    procedure pmCancelarOSClick(Sender: TObject);
    procedure pmPagamentoOSClick(Sender: TObject);
    procedure sbAbrirExit(Sender: TObject);
    procedure sbDelClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure sbAbrirClick(Sender: TObject);
  private
    { Private declarations }
     FConnects : TSetiConnects;
     FqInserindo: Boolean;
     FqInsViaServicos: Boolean;
     FqInsViaProdutos: Boolean;
     FqAtualizando: Boolean;
     FId_FormaPagto : Integer;
     FqUltimoId: Integer;
     function ExisteCliente : Boolean;
     function ExistemServicos : Boolean;
     function SelecionaFormaPagto : Integer;

     procedure SetqInserindo(const Value: Boolean);
     procedure StatusOS;
     procedure AutorizarOS;
     procedure AtualizaOs;
     procedure AtualizaStatusOs(pStatus:string);
     procedure DeletaOS;
     procedure SetqInsViaProdutos(const Value: Boolean);
     procedure SetqInsViaServicos(const Value: Boolean);
     procedure SetqAtualizando(const Value: Boolean);
     procedure SetqUltimoId(const Value: Integer);

     function GetId_FormaPagto : Integer;
     procedure SetId_FormaPagto(Const Value : Integer);

     property qConnects : TSetiConnects read FConnects write FConnects;
     property qInserindo : Boolean read FqInserindo write SetqInserindo;
     property qAtualizando : Boolean read FqAtualizando write SetqAtualizando;
     property qInsViaServicos : Boolean read FqInsViaServicos
      write SetqInsViaServicos;
     property qInsViaProdutos : Boolean read FqInsViaProdutos write
      SetqInsViaProdutos;
     property qId_FormaPagto : Integer read GetId_FormaPagto write
      SetId_FormaPagto;
     property qUltimoId : Integer read FqUltimoId write SetqUltimoId;

  public
    { Public declarations }
  end;

var
  frmCadOrdemServicos: TfrmCadOrdemServicos;

implementation

{$R *.dfm}

uses uMess, ufrmCadOrdemServicos_Detalhes,
  ufrmCadOrdemServicos_ProdutosAcessorios, ufrmVendasFinalizar;

procedure TfrmCadOrdemServicos.AtualizaOs;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_OS_ATUALIZA';
    SetiSqlStoredProc.ParamByName('ID_OS').Value := StrToInt(dbeCodigo.Text);
    SetiSqlStoredProc.ParamByName('LIMPA').Value := 0;
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

procedure TfrmCadOrdemServicos.AtualizaStatusOs(pStatus:string);
var
  vConf : Boolean;
  vConfMens : string;
begin
    vConf := False;
    if pStatus = 'A' then
    begin
      //vConf := SetiMensQuestions(0,'Confirma autoriza��o da O.S ?');
      vConf := True;
      //vConfMens := 'Registro da autoriza��o da O.S inserido com sucesso.';
    end else
    if pStatus = 'E' then
    begin
      vConf := SetiMensQuestions(0,'Confirma entrega da O.S ?');
      vConfMens := 'Registro da entrega da O.S inserido com sucesso.';
    end else
    if pStatus = 'N' then
    begin
      vConf := SetiMensQuestions(0,'Confirma desist�ncia da O.S pelo cliente?');
      vConfMens := 'Registro da desist�ncia da O.S inserido com sucesso.';
    end else
    if pStatus = 'C' then
    begin
      vConf := SetiMensQuestions(0,'Confirma o cancelamento da O.S?');
      vConfMens := 'Registro do cancelamento O.S inserido com sucesso.';
    end else
    if pStatus = 'F' then
    begin
      vConf := SetiMensQuestions(0,'Confirma o pagamento da O.S?');
      if vConf then
      begin
        if SelecionaFormaPagto > -1 then
        begin
          vConfMens := 'Registro do pagamento da O.S inserido com sucesso.';
        end else
        begin
          SetiMens(1,'Registro de pagamento cancelado.');
          vConf := False;
          Exit;
        end;
      end;
    end;
    if vConf then
    begin
      if pStatus <> 'F' then
      begin
        try
          qConnects := TSetiConnects.Create;
          SetiSqlStoredProc.SQLConnection :=
            qConnects.ConnectsFIREBIRD(False);
          SetiSqlStoredProc.StoredProcName := 'SP_OS_ATUALIZA_STATUS';
          SetiSqlStoredProc.ParamByName('ID_OS').Value :=
          StrToInt(dbeCodigo.Text);
          SetiSqlStoredProc.ParamByName('NEW_STATUS').Value := pStatus;
          SetiSqlStoredProc.ExecProc;
        finally
          qConnects.Free;
        end;
      end;
      if pStatus <> 'A' then
      begin
        SetiMens(1,vConfMens);
        dsPadrao.DataSet.Refresh;
        StatusOS;
      end;
    end;
end;

procedure TfrmCadOrdemServicos.AutorizarOS;
begin

  if SetiMensQuestions(0,'Confirma autoriza��o da O.S ?') then
  begin
    try
      AtualizaStatusOs('A');
      qConnects := TSetiConnects.Create;
      SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      SetiSqlStoredProc.StoredProcName := 'SP_OS_ATUALIZAESTOQUE';
      SetiSqlStoredProc.ParamByName('ID_OS').Value := StrToInt(dbeCodigo.Text);
      SetiSqlStoredProc.ExecProc;
      SetiMens(1,'Registro da autoriza��o da O.S inserido com sucesso.');
    finally
      qConnects.Free;
      dsPadrao.DataSet.Refresh;
      StatusOS;
    end;
  end;
end;

procedure TfrmCadOrdemServicos.dbeClienteExit(Sender: TObject);
begin
  inherited;
    if dbeCliente.Text = '' then
      edtCliente.Clear
    else
    if (dbeCliente.Text <> '') and (edtCliente.Text = '') then
    begin
      if (NOT ExisteCliente) then
      begin
        SetiMens(2,'Cliente n�o cadastrado.');
        dbeCliente.SetFocus;
        dbeCliente.Clear;
        edtCliente.Clear;
        Exit;
      end;
    end;
end;

procedure TfrmCadOrdemServicos.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  StatusOS;
end;

procedure TfrmCadOrdemServicos.DeletaOS;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_OS_DELETE_SERV_E_PROD';
    SetiSqlStoredProc.ParamByName('ID_OS').Value := StrToInt(dbeCodigo.Text);
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

function TfrmCadOrdemServicos.ExisteCliente: Boolean;
var
  sql : TSQLQuery;
begin
    Result := False;
    if (edtCliente.Text <> '') then
    begin
      try
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT * FROM TBCADCLIENTES F ');
        sql.SQL.Add( ' WHERE F.ID = '+edtCliente.Text);
        sql.Open;
        Result := NOT sql.IsEmpty;
      finally
        sql.Free;
        qConnects.Free;
      end;
    end;

end;

function TfrmCadOrdemServicos.ExistemServicos: Boolean;
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' SELECT * FROM TBOS_DETALHES D ');
      sql.SQL.Add( ' WHERE D.ID_OS = '+dbeCodigo.Text);
      sql.Open;
      Result := NOT sql.IsEmpty;
      qConnects.Free;
    finally
      sql.Free;
    end;
end;

procedure TfrmCadOrdemServicos.FormCreate(Sender: TObject);
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

    SetCaptionForm('O.S');
    SetQryForm('SELECT                    '+
               '       ID                 '+
               '       ,ID_CLIENTE        '+
               '       ,CODIGOINTERNO     '+
               '       ,STATUS            '+
               '       ,VLRTOTALSERVICOS  '+
               '       ,QTDTOTALSERVICOS  '+
               '       ,VLRTOTALPRODUTOS  '+
               '       ,QTDTOTALPRODUTOS  '+
               '       ,VLRDESCONTOS      '+
               '       ,VLRTOTAL_OS       '+
               '       ,OBSERVACAO        '+
               '       ,STATUS_PG         '+
               '       ,ID_FORMAPAGTO     '+
               '       ,DTA_OS            '+
               '       ,DTAAUTORIZACAO    '+
               '       ,DTAENTREGA        '+
               '       ,DTANAOAUTORIZACAO '+
               '       ,DTACANCELAMENTO   '+
               '       ,DTAPAGAMENTO      '+
               'FROM TBOS                 '+
               'WHERE 1 = 1               ');
    SetTableForm('TBOS');
    SetGenForm('GEN_ID_OS');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;ID_CLIENTE;CODIGOINTERNO;STATUS;DTA_OS');
    SetOrderByForm('ORDER BY ID');
    SetListMenuForm('ID');
    SetListMenuCaptionForm('Por Codigo');
    SetListRequiredFields('dbeCliente');
    SetListMarriedCompForm(
      '1,dbeCliente,edtCliente,sbCliente,TBCADCLIENTES,ID,NOME');

  inherited;
end;

function TfrmCadOrdemServicos.GetId_FormaPagto: Integer;
begin
    Result := FId_FormaPagto;
end;

procedure TfrmCadOrdemServicos.pmAutorizarOSClick(Sender: TObject);
begin
  inherited;
  sbAutorizarOSClick(Self);
end;

procedure TfrmCadOrdemServicos.pmCancelarOSClick(Sender: TObject);
begin
  inherited;
  sbCancelarOSClick(Self);
end;

procedure TfrmCadOrdemServicos.pmClientenoautorizouClick(Sender: TObject);
begin
  inherited;
  SBClienteNaoAutorizouClick(Self);
end;

procedure TfrmCadOrdemServicos.pmEntregueClick(Sender: TObject);
begin
  inherited;
  SBOSEntregueClick(Self);
end;

procedure TfrmCadOrdemServicos.pmPagamentoOSClick(Sender: TObject);
begin
  inherited;
  sbPagamentoOSClick(Self);
end;


procedure TfrmCadOrdemServicos.sbAbrirClick(Sender: TObject);
begin
  inherited;
    if VerifButtonClick then
      StatusOS;
end;

procedure TfrmCadOrdemServicos.sbAbrirExit(Sender: TObject);
begin
  inherited;
    if Assigned(dsPadrao.DataSet) then
      if NOT (dsPadrao.DataSet.IsEmpty) then
        StatusOS;
end;

procedure TfrmCadOrdemServicos.sbAutorizarOSClick(Sender: TObject);
begin
  inherited;
    if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
    begin
      if dbeCodigo.Text <> '' then
        if (dsPadrao.DataSet.FieldByName('STATUS').AsString = 'P') then
          AutorizarOS;
    end;
end;

procedure TfrmCadOrdemServicos.sbCancelarOSClick(Sender: TObject);
begin
  inherited;
    if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
    begin
      if dbeCodigo.Text <> '' then
        AtualizaStatusOs('C');
    end;
end;

procedure TfrmCadOrdemServicos.SBClienteNaoAutorizouClick(Sender: TObject);
begin
  inherited;
    if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
    begin
      if dbeCodigo.Text <> '' then
        AtualizaStatusOs('N');
    end;
end;

procedure TfrmCadOrdemServicos.sbInsertClick(Sender: TObject);
begin
    inherited;
    dbrStatusOS.ItemIndex := 0;
    dbrSituacaoPG.ItemIndex := 0;
    dbeCodInterno.SetFocus;
    SetqInserindo(True);
    SetqInsViaServicos(False);
    SetqInsViaProdutos(False);
end;

procedure TfrmCadOrdemServicos.SBOSEntregueClick(Sender: TObject);
begin
  inherited;
    if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
    begin
      if dbeCodigo.Text <> '' then
        if (dsPadrao.DataSet.FieldByName('STATUS').AsString = 'A') then
          AtualizaStatusOs('E');
    end;
end;

procedure TfrmCadOrdemServicos.sbPagamentoOSClick(Sender: TObject);
begin
  inherited;
    if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
    begin
      if dbeCodigo.Text <> '' then
        AtualizaStatusOs('F');
    end;
end;

procedure TfrmCadOrdemServicos.sbProdutosAcessoriosClick(Sender: TObject);
begin
  inherited;
    if qInserindo then
    begin
      if (SetiMensQuestions(1,'Ao abrir essa tela, esta O.S ser� salva, '+
                              'deseja continuar?')) then
        Exit else
      begin
        SetqUltimoId(StrToInt(dbeCodigo.Text));
        SetqInsViaProdutos(True);
        sbSaveClick(Self);
        if qUltimoId > 0 then
          dsPadrao.DataSet.Locate('ID',qUltimoId,
            [loCaseInsensitive,loPartialKey]);
          //AbrirUltimoId(qUltimoId);
        SetqInserindo(True);
        sbUpdateClick(Self);
      end;
    end;
    if (qStatus = 'INSERT') or (qStatus = 'UPDATE') or (qStatus = 'ABERTO') then
    begin
        frmCadOrdemServicos_ProdutosAcessorios :=
          TfrmCadOrdemServicos_ProdutosAcessorios.Create(Nil);
        frmCadOrdemServicos_ProdutosAcessorios.SetModo(qStatus);
        frmCadOrdemServicos_ProdutosAcessorios.SetOs(StrToInt(dbeCodigo.Text));
        frmCadOrdemServicos_ProdutosAcessorios.ShowModal;
        if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
        begin
          SetqInsViaProdutos(True);
          if qStatus = 'INSERT' then
            SetExibirMensInsert(False);
          if qStatus = 'UPDATE' then
            SetExibirMensUpdate(False);
          AtualizaOs;
          sbSaveClick(Self);
          sbUpdateClick(Self);
          SetqInsViaServicos(False);
          SetqInsViaProdutos(False);
          SetqInserindo(False);
        end;
    end;
end;

procedure TfrmCadOrdemServicos.sbSaveClick(Sender: TObject);
begin
  SetNoModoInicialToSave(True);
  inherited;
  if ValidateToSave then
  begin
    AtualizaOs;
    dsPadrao.DataSet.Refresh;
    SetqInserindo(False);
    SetqAtualizando(False);
    if (NOT qInsViaServicos) and (NOT qInsViaProdutos) then
      StatusOS;
  end;
end;

procedure TfrmCadOrdemServicos.sbUpdateClick(Sender: TObject);
begin
  if (NOT dsPadrao.DataSet.IsEmpty) then
  begin
    if (dsPadrao.DataSet.FieldByName('STATUS').AsString <> 'P') then
    begin
      SetiMens(2,'Esta O.S n�o pode ser alterada.');
      Exit;
    end;
  end;
  SetqAtualizando(True);
  inherited;
end;

function TfrmCadOrdemServicos.SelecionaFormaPagto: Integer;
var
  vResult : Integer;
  spn :  TSQLStoredProc;
begin
    vResult := -1;
    try
      if (qStatus = 'INICIAL') or (qStatus = 'ABERTO') then
      begin
        if (dsPadrao.DataSet.FieldByName('STATUS').AsString = 'A') or
            (dsPadrao.DataSet.FieldByName('STATUS').AsString = 'E') then
        begin
          if (dsPadrao.DataSet.FieldByName('DTAPAGAMENTO').IsNull) then
          begin
            frmVendasFinalizar := TfrmVendasFinalizar.Create(Self);
            frmVendasFinalizar.Caption := 'Selecione a forma de pagamento.';
            if (frmVendasFinalizar.ShowModal = mrOk) then
            begin
              vResult := frmVendasFinalizar.dbgFormaPagto.DataSource.
                                  DataSet.FieldByName('ID').Value;
              SetId_FormaPagto(vResult);
              try
                qConnects := TSetiConnects.Create;
                spn := TSQLStoredProc.Create(Nil);
                spn.SQLConnection :=
                  qConnects.ConnectsFIREBIRD(False);
                spn.StoredProcName := 'SP_OS_ATUALIZAFORMAPAGTO';
                spn.ParamByName('ID_OS').Value :=
                StrToInt(dbeCodigo.Text);
                spn.ParamByName('ID_FORMAPAGTO').Value := vResult;
                spn.ExecProc;
              finally
                spn.Free;
                qConnects.Free;
              end;
            end else
            begin
              Result := -1;
            end;
            FreeAndNil(frmVendasFinalizar);
          end;
        end;
      end;
    finally

    end;
end;

procedure TfrmCadOrdemServicos.SetId_FormaPagto(const Value: Integer);
begin
    FId_FormaPagto := Value;
end;

procedure TfrmCadOrdemServicos.SetqAtualizando(const Value: Boolean);
begin
    FqAtualizando := Value;
end;

procedure TfrmCadOrdemServicos.SetqInserindo(const Value: Boolean);
begin
    FqInserindo := Value;
end;

procedure TfrmCadOrdemServicos.SetqInsViaProdutos(const Value: Boolean);
begin
    FqInsViaProdutos := Value;
end;

procedure TfrmCadOrdemServicos.SetqInsViaServicos(const Value: Boolean);
begin
    FqInsViaServicos := Value;
end;

procedure TfrmCadOrdemServicos.SetqUltimoId(const Value: Integer);
begin
    FqUltimoId := Value;
end;

procedure TfrmCadOrdemServicos.StatusOS;
var
  vSet : Integer; //ID DO STATUS DO FORMULARIO;
  vEmp : Boolean; //EXISTE O.S;
  vExi : Boolean; //EXISTEM SERVI�OS PARA O.S;
  vSta : string;  //TIPO DO STATUS;
  vPag : Boolean;
begin
    sbAutorizarOS.Enabled := False;
    SBClienteNaoAutorizou.Enabled := False;
    sbCancelarOS.Enabled := False;
    vEmp := False;
    if not qInserindo then
      vEmp := (NOT dsPadrao.DataSet.IsEmpty);
    //if vEmp then
      //dsPadrao.DataSet.Refresh;
    vExi := False;
    if (qStatus <> 'INSERT') and (qStatus <> 'UPDATE') then
      vExi := ExistemServicos;

    if ( qStatus = 'INICIAL' ) and (NOT vEmp) or (NOT vExi) then vSet := -1;
    if ( qStatus = 'ABERTO'  ) and (NOT vEmp) or (NOT vExi) then vSet := -2;
    if ( qStatus = 'INSERT'  ) and (NOT vEmp) or (NOT vExi) then vSet := -3;
    if ( qStatus = 'UPDATE'  ) and (NOT vEmp) or (NOT vExi) then vSet := -4;

    if ( qStatus = 'INICIAL' ) and (vEmp) and (vExi) then vSet := 1;
    if ( qStatus = 'ABERTO'  ) and (vEmp) and (vExi) then vSet := 2;
    if ( qStatus = 'INSERT'  ) and (vEmp) and (vExi) then vSet := 3;
    if ( qStatus = 'UPDATE'  ) and (vEmp) and (vExi) then vSet := 4;

    if not qInserindo  then
    begin
      vSta := dsPadrao.DataSet.FieldByName('STATUS').AsString;
      vPag := (NOT dsPadrao.DataSet.FieldByName('DTAPAGAMENTO').IsNull);
    end;

    {
      A : AUTORIZADO;
      P : PENDENTE;
      E : ENTREGUE;
      N : N�O AUTORIZADO;
      C : CANCELADO;
      F : FINALIZADO - PAGO
    }

    //BOT�ES
    sbAutorizarOS.Enabled :=
      (vSet in [1,2]) and (vSta = 'P') and (vExi) and (NOT vPag);

    SBClienteNaoAutorizou.Enabled :=
      (vSet in [1,2]) and (vSta = 'P') and (vSta <> 'A') and (vExi)
        and (NOT vPag);

    sbCancelarOS.Enabled :=
      (vSet in [1,2]) and (vSta = 'P') and (vSta <> 'A') and (vExi)
        and (NOT vPag);

    SBOSEntregue.Enabled :=
      (vSet in [1,2]) and
        (vSta = 'A') and
          (vSta <> 'N') and
            (vSta = 'A') and
              (vSta <> 'C') and
               (vSta <> 'E') and
                (vExi) and
                  (NOT vPag);

    sbPagamentoOS.Enabled :=
      (vSet in [1,2]) and (vExi) and (NOT vPag) and ((vSta = 'A')
        or (vSta = 'E'));

    //POP MENU
    pmAlterarStatusPedido.Enabled :=
      (vSet in [1,2]) and (vSta <> 'A') and (vExi) and (NOT vPag);

    pmAutorizarOS.Enabled :=
      (vSet in [1,2]) and (vSta = 'P') and (vExi) and (NOT vPag);

    pmEntregue.Enabled :=
      (vSet in [1,2]) and
        (vExi) and
          (vSta = 'A') and
            (vSta <> 'N') and
              (vSta <> 'C') and
                (vSta <> 'E') and
            (NOT vPag);

    pmClientenoautorizou.Enabled :=
      (vSet in [1,2]) and
        (vExi) and
          (vSta <> 'A') and
            (vSta <> 'N') and
              (vSta <> 'C') and
            (NOT vPag);

    pmCancelarOS.Enabled :=
      (vSet in [1,2]) and
        (vExi) and
          (vSta <> 'A') and
            (vSta <> 'C') and
              (NOT vPag);

    pmPagamentoOS.Enabled :=
      (vSet in [1,2]) and (vExi) and (NOT vPag) and ((vSta = 'A')
        or (vSta = 'E'));

end;

procedure TfrmCadOrdemServicos.sbDelClick(Sender: TObject);
begin
  if dsPadrao.DataSet.FieldByName('STATUS').AsString = 'P' then
  begin
    if SetiMensQuestions(0,'Confirmar exclus�o do registro?') then
    begin
      DeletaOS;
      inherited;
    end;
  end else
  begin
    SetiMens(2,'Esta O.S n�o pode ser alterada.');
    Exit;
  end;
end;

procedure TfrmCadOrdemServicos.sbDetalhesOsClick(Sender: TObject);
begin
  inherited;
    if qInserindo then
    begin
      if (SetiMensQuestions(1,'Ao abrir essa tela, esta O.S ser� salva, '+
                              'deseja continuar?')) then
        Exit else
      begin
        SetqUltimoId(StrToInt(dbeCodigo.Text));
        SetqInsViaServicos(True);
        sbSaveClick(Self);
        if qUltimoId > 0 then
          dsPadrao.DataSet.Locate('ID',qUltimoId,[loCaseInsensitive,loPartialKey]);
          //AbrirUltimoId(qUltimoId);
        SetqInserindo(True);
        sbUpdateClick(Self);
      end;
    end;
    if (qStatus = 'INSERT') or (qStatus = 'UPDATE') or (qStatus = 'ABERTO') then
    begin
        frmOrdemServicos_Detalhes := TfrmOrdemServicos_Detalhes.Create(Nil);
        if dsPadrao.DataSet.FieldByName('STATUS').AsString <> 'P' then
          frmOrdemServicos_Detalhes.SetModo('ABERTO')
        else
        frmOrdemServicos_Detalhes.SetModo(qStatus);
        frmOrdemServicos_Detalhes.SetOs(StrToInt(dbeCodigo.Text));
        frmOrdemServicos_Detalhes.ShowModal;
        if (qStatus = 'INSERT') or (qStatus = 'UPDATE') then
        begin
          SetqInsViaServicos(True);
          if qStatus = 'INSERT' then
            SetExibirMensInsert(False);
          if qStatus = 'UPDATE' then
            SetExibirMensUpdate(False);
          AtualizaOs;
          sbSaveClick(Self);
          sbUpdateClick(Self);
          SetqInsViaServicos(False);
          SetqInsViaProdutos(False);
          SetqInserindo(False);
        end;
    end;
end;

end.
