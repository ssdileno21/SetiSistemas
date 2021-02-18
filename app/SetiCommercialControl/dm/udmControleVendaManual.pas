unit udmControleVendaManual;

interface

uses
  System.SysUtils, System.Classes, MIDASLIB, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Dialogs, uFSDialogs, uFSUF,


  uSetiConnects, uSetiUseful;

type
  TdmControleVendaManual = class(TDataModule)
    coVendasSql: TSQLQuery;
    coVendasDsp: TDataSetProvider;
    coVendasCds: TClientDataSet;
    coPedidoSql: TSQLQuery;
    coPedidoDsp: TDataSetProvider;
    coPedidoCds: TClientDataSet;
    coHistoricoSql: TSQLQuery;
    coHistoricoDsp: TDataSetProvider;
    coHistoricoCds: TClientDataSet;
    coClienteSql: TSQLQuery;
    coClienteDsp: TDataSetProvider;
    coClienteCds: TClientDataSet;
    coEstoqueSql: TSQLQuery;
    coEstoqueDsp: TDataSetProvider;
    coEstoqueCds: TClientDataSet;
    SetiSqlConnection: TSQLConnection;
    procedure coPedidoCdsAfterInsert(DataSet: TDataSet);
    procedure coPedidoCdsBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    FKeyVAlue: Variant;
    FQryPedido: string;
    FKeyFieldName: string;
    FQryAnd: string;
    FGetNewPedidoId: Integer;
    FAtEstoque: Integer;
    FAtProdutoId: Integer;
    FAtContagem: Integer;
    FAtPedidoId: Integer;
    FAtEProdutoId: Integer;
    FAtEQtdEstoque: Integer;
    FPgFormaPagtoId: Integer;
    FPgVendedorId: Integer;
    FPgClienteId: Integer;
    FCaClienteId: Integer;
    FCaVendedorId: Integer;
    FPgDtaPagamento: TDate;
    FSetiUserFulDB: TSetiUserFulDB;
    FAtClienteID: Integer;
    FSelProdutoId: Integer;
    FSelClienteId: Integer;
    FAtDescAdic: Double;
    FAtVlrUnitarioVenda: Double;
    FVMdmPedidoIDOld: Integer;
    FVMdmPedidoIDONew: Integer;
    FInNewMode: Boolean;

    procedure OpenCloseConnection(OpenClose:Boolean=True);
    procedure SetGetNewPedidoId(const Value: Integer);
    property qConnects : TSetiConnects read FConnects write FConnects;
    property cSetiUserFulDB : TSetiUserFulDB read FSetiUserFulDB
    write FSetiUserFulDB;
  public
    { Public declarations }

    function IsTheConnectionOpen : Boolean;

    function PedidoAbrir : Boolean;
    function ClienteAbrir(pClienteId:Integer) : Boolean;
    function VendaAbrir(pPedidoId:Integer) : Boolean;
    function EstoqueAbrir(pPedidoId:Integer) : Boolean;
    function HistoricoAbrir(pClienteId:Integer) : Boolean;

    function PedidoNovo : Boolean;
    function PedidoEditar : Boolean;
    function PedidoGravar : Boolean;
    function PedidoExcluir : Boolean;
    function AtualizaVendas : Boolean;
    function AtualizaEstoqueAtual : Boolean;
    function PagamentoPedido : Boolean;
    function CancelarPedido : Boolean;

    procedure SetAtContagem(const Value: Integer);
    procedure SetAtEstoque(const Value: Integer);
    procedure SetAtPedidoId(const Value: Integer);
    procedure SetAtProdutoId(const Value: Integer);
    procedure SetAtEProdutoId(const Value: Integer);
    procedure SetAtEQtdEstoque(const Value: Integer);
    procedure SetAtClienteID(const Value: Integer);
    procedure SetAtDescAdic(const Value: Double);
    procedure SetAtVlrUnitarioVenda(const Value: Double);

    procedure CommAtPagamento;
    procedure CommAtCliente(pCliId:Integer);
    procedure CommAtFuncionario(pFunId:Integer);
    procedure CommAtExcluiProdutosNaoAtualizados;
    procedure CommAtExcluirEstoqueNaoAtualizado;
    procedure CommAtCancelarPedido;

    procedure ProviderFlags(Dts:TDataSet);
    procedure SetKeyVAlue(const Value: Variant);
    procedure SetKeyFieldName(const Value: string);
    procedure SetQryPedido(const Value: string);
    procedure SetQryAnd(const Value: string);

    procedure SetPgFormaPagtoId(const Value: Integer);
    procedure SetPgClienteId(const Value: Integer);
    procedure SetPgVendedorId(const Value: Integer);
    procedure SetPgDtaPagamento(const Value: TDate);


    procedure SetCaClienteId(const Value: Integer);
    procedure SetCaVendedorId(const Value: Integer);

    procedure SetSelClienteId(const Value: Integer);
    procedure SetSelProdutoId(const Value: Integer);

    procedure ImportarItensEstoquePedidoNovo;
    procedure SetVMdmPedidoIDOld(const Value: Integer);
    procedure SetVMdmPedidoIDONew(const Value: Integer);

    procedure SetInNewMode(const Value: Boolean);

    property qKeyVAlue : Variant read FKeyVAlue write SetKeyVAlue;
    property qKeyFieldName : string read FKeyFieldName write SetKeyFieldName;
    property qQryPedido : string read FQryPedido write SetQryPedido;
    property qQryAnd : string read FQryAnd write SetQryAnd;
    property qGetNewPedidoId : Integer read FGetNewPedidoId
    write SetGetNewPedidoId;

    property AtPedidoId : Integer read FAtPedidoId write SetAtPedidoId;
    property AtProdutoId : Integer read FAtProdutoId write SetAtProdutoId;
    property AtEstoque : Integer read FAtEstoque write SetAtEstoque;
    property AtContagem : Integer read FAtContagem write SetAtContagem;
    property AtEProdutoId : Integer read FAtEProdutoId write SetAtEProdutoId;
    property AtEQtdEstoque : Integer read FAtEQtdEstoque write SetAtEQtdEstoque;
    property AtClienteID : Integer read FAtClienteID write SetAtClienteID;
    property AtDescAdic : Double read FAtDescAdic write SetAtDescAdic;
    property AtVlrUnitarioVenda : Double read FAtVlrUnitarioVenda
    write SetAtVlrUnitarioVenda;

    property PgClienteId : Integer read FPgClienteId write SetPgClienteId;
    property PgVendedorId : Integer read FPgVendedorId write SetPgVendedorId;
    property PgFormaPagtoId : Integer read FPgFormaPagtoId
    write SetPgFormaPagtoId;
    property PgDtaPagamento : TDate read FPgDtaPagamento write SetPgDtaPagamento;

    property CaVendedorId : Integer read FCaVendedorId write SetCaVendedorId;
    property CaClienteId : Integer read FCaClienteId write SetCaClienteId;
    property qSelClienteId : Integer read FSelClienteId write SetSelClienteId;
    property qSelProdutoId : Integer read FSelProdutoId write SetSelProdutoId;

    property VMdmPedidoIDOld : Integer read FVMdmPedidoIDOld
    write SetVMdmPedidoIDOld;
    property VMdmPedidoIDONew : Integer read FVMdmPedidoIDONew
    write SetVMdmPedidoIDONew;

    property InNewMode : Boolean read FInNewMode write SetInNewMode;

  end;

var
  dmControleVendaManual: TdmControleVendaManual;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses ufrmMain, udmGen, uSetiConfig,
  uQrpControleVendaManualFicha;

{$R *.dfm}

{ TdmControleVendaManual }


{ TdmControleVendaManual }

function TdmControleVendaManual.AtualizaEstoqueAtual: Boolean;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vVlrUnitario : Double;
  vTipo : Integer;
  vQry : TSQLQuery;
begin
    Result := False;
    try
      if NOT (coEstoqueCds.IsEmpty) then
      begin
        if (AtPedidoId > 0) and (AtEProdutoId > 0) then
        begin
          vConn := TSQLConnection.Create(Nil);
          vConect := TSetiConnects.Create;
          vConn := vConect.ConnectsFIREBIRD;
          vQry := TSQLQuery.Create(Nil);
          vQry.SQLConnection := vConn;
          vQry.Close;
          vQry.SQL.Clear;
          if (AtEQtdEstoque <> -1) then
          begin
            vQry.SQL.Add(
            '   UPDATE TBVENDAMANUAL_ESTOQUE SET                ' +
            '       QTDESTOQUE = '+IntToStr(AtEQtdEstoque)        +
            '  WHERE ID_VENDAMANUAL = '+IntToStr(AtPedidoId)      +
            '  AND ID_VENDAMANUAL_ITEM = '+IntToStr(AtEProdutoId));
            vQry.ExecSQL;
          end;
          if (SconfigParam1_Calc_Vlr_Estoque = 0) then
          begin
            vQry.Close;
            vQry.SQL.Clear;
            vQry.SQL.Add(
            '   UPDATE TBVENDAMANUAL_ESTOQUE SET                   ' +
            '       VLRESTOQUE =                                   ' +
            '     ( SELECT FIRST 1                                 ' +
            '        VLRVENDAUTILIZADO                             ' +
            '       FROM TBCADPRODUTOS P                           ' +
            '       WHERE P.id =                                   ' +
            '         TBVENDAMANUAL_ESTOQUE.ID_VENDAMANUAL_ITEM )  ' +
            '  WHERE ID_VENDAMANUAL = '+IntToStr(AtPedidoId)         +
            '  AND ID_VENDAMANUAL_ITEM = '+IntToStr(AtEProdutoId));
            vQry.ExecSQL;
          end else
          if (SconfigParam1_Calc_Vlr_Estoque = 1) then
          begin
            vQry.Close;
            vQry.SQL.Clear;
            vQry.SQL.Add(
            '   UPDATE TBVENDAMANUAL_ESTOQUE SET                   ' +
            '       VLRESTOQUE =                                   ' +
            '     (TBVENDAMANUAL_ESTOQUE.QTDESTOQUE *              ' +
            '     ( SELECT FIRST 1                                 ' +
            '        VLRVENDAUTILIZADO                             ' +
            '       FROM TBCADPRODUTOS P                           ' +
            '       WHERE P.id =                                   ' +
            '         TBVENDAMANUAL_ESTOQUE.ID_VENDAMANUAL_ITEM )) ' +
            '  WHERE ID_VENDAMANUAL = '+IntToStr(AtPedidoId)         +
            '  AND ID_VENDAMANUAL_ITEM = '+IntToStr(AtEProdutoId));
            vQry.ExecSQL;
          end;
          Result := True;
        end;
      end;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

function TdmControleVendaManual.AtualizaVendas: Boolean;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vVlrUnitario : Double;
  vTipo : Integer;
  vQry : TSQLQuery;
  vParamValue : Integer;
begin
    Result := False;
    try
      cSetiUserFulDB := TSetiUserFulDB.Create;
      vParamValue := cSetiUserFulDB.GetParameterValue(1,'PFRM1',2);

      vVlrUnitario := 0.00;
      if NOT (coVendasCds.IsEmpty) then
      begin
        if (AtPedidoId > 0) and (AtProdutoId > 0) then
        begin
          vConn := TSQLConnection.Create(Nil);
          vConect := TSetiConnects.Create;
          vConn := vConect.ConnectsFIREBIRD;
          vQry := TSQLQuery.Create(Nil);
          vQry.SQLConnection := vConn;
          if (AtEstoque <> -1) or (AtContagem <> -1) then
          begin
              vQry.Close;
              vQry.SQL.Clear;
              if (AtEstoque <> -1) and (AtContagem <> -1) then
              begin
                vQry.SQL.Add(
                '   UPDATE TBVENDAMANUAL_ITENS SET                  ' +
                '       QTDESTOQUE = :QTDESTOQUE                    ' +
                '      ,CONTAGEM = :CONTAGEM                        ' +
                '  WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL           ' +
                '  AND ID_PRODUTO = :ID_PRODUTO');
                vQry.Params.ParamByName('QTDESTOQUE').Value := AtEstoque;
                vQry.Params.ParamByName('CONTAGEM').Value := AtContagem;
                vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
                vQry.Params.ParamByName('ID_PRODUTO').Value := AtProdutoId;
                vQry.ExecSQL;
              end else
              if (AtEstoque <> -1) and (AtContagem = -1) then
              begin
                vQry.SQL.Add(
                '   UPDATE TBVENDAMANUAL_ITENS SET                  ' +
                '       QTDESTOQUE = :QTDESTOQUE                    ' +
                '  WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL           ' +
                '  AND ID_PRODUTO = :ID_PRODUTO                     ');
                vQry.Params.ParamByName('QTDESTOQUE').Value := AtEstoque;
                vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
                vQry.Params.ParamByName('ID_PRODUTO').Value := AtProdutoId;
                vQry.ExecSQL;
              end else
              if (AtEstoque = -1) and (AtContagem <> -1) then
              begin
                vQry.SQL.Add(
                '   UPDATE TBVENDAMANUAL_ITENS SET                  ' +
                '       CONTAGEM = :CONTAGEM                        ' +
                '  WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL           ' +
                '  AND ID_PRODUTO = :ID_PRODUTO                     ');
                vQry.Params.ParamByName('CONTAGEM').Value := AtContagem;
                vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
                vQry.Params.ParamByName('ID_PRODUTO').Value := AtProdutoId;
                vQry.ExecSQL;
              end;
          end;

          vQry.Close;
          vQry.SQL.Clear;
          vQry.SQL.Add(
          '   UPDATE tbvendamanual_itens SET                    ' +
          '     tbvendamanual_itens.QTDVENDA =                  ' +
          '       (tbvendamanual_itens.QTDESTOQUE -             ' +
          '             tbvendamanual_itens.contagem)           ' +
          '   WHERE tbvendamanual_itens.ID_VENDAMANUAL =        ' +
          '     :ID_VENDAMANUAL                                 ');
          vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
          vQry.ExecSQL;

          vQry.Close;
          vQry.SQL.Clear;
          vQry.SQL.Add(
          '   UPDATE tbvendamanual_itens SET                    ' +
          '     tbvendamanual_itens.VLRUNITARIOVENDA =          ' +
          '       :VLRUNITARIOVENDA                             ' +
          '   WHERE tbvendamanual_itens.ID_VENDAMANUAL =        ' +
          '     :ID_VENDAMANUAL                                 ' +
          '   AND tbvendamanual_itens.ID_PRODUTO = :ID_PRODUTO  ');
          vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
          vQry.Params.ParamByName('VLRUNITARIOVENDA').Value :=
            AtVlrUnitarioVenda;
          vQry.Params.ParamByName('ID_PRODUTO').Value :=
            AtProdutoId;
          vQry.ExecSQL;

          vQry.Close;
          vQry.SQL.Clear;
          vQry.SQL.Add(
              '  UPDATE tbvendamanual_itens SET                               '+
              '   tbvendamanual_itens.VLRUNITARIOVENDA =                      '+
              '  (                                                            '+
              '     SELECT FIRST 1                                            '+
              '       (CASE                                                   '+
              '           WHEN (C.vlrdescespecial = 0.00) or                  '+
              '               (C.vlrdescespecial IS NULL)                     '+
              '                THEN I.vlrunitariovenda                        '+
              '           WHEN ((i.VLRUNITARIOVENDA = 0.00) or                '+
              '                 (i.VLRUNITARIOVENDA is null))                 '+
              '                       and ((P.vlrvendautilizado * C.vlrdescespecial / 100) > P.vlrvendautilizado) then '+
              '                          P.vlrvendautilizado       '+
              '                      WHEN ((i.VLRUNITARIOVENDA = 0.00) or  '+
              '                       (i.VLRUNITARIOVENDA is null))         '+
              '                     and ((P.vlrvendautilizado * C.vlrdescespecial / 100) <= P.vlrvendautilizado) THEN '+
              '                      P.vlrvendautilizado - (P.vlrvendautilizado * C.vlrdescespecial / 100)             '+
              '                   WHEN ((i.VLRUNITARIOVENDA = 0.00) or                                                  '+
              '                   (i.VLRUNITARIOVENDA is NOT null))                                                     '+
              '                  then i.VLRUNITARIOVENDA                                                                   '+
              '              end )                                                   '+
              '  FROM TBCADPRODUTOS P                                         '+
              '  LEFT JOIN TBVENDAMANUAL_ITENS I ON P.ID = I.ID_PRODUTO       '+
              '  AND I.ID_VENDAMANUAL = :ID_VENDAMANUAL                       '+
              '  and i.id_produto = tbvendamanual_itens.ID_PRODUTO            '+
              '  INNER JOIN tbvendamanual V ON V.id = I.id_vendamanual        '+
              '  INNER JOIN tbcadclientes C ON C.id = V.id_cliente  )         '+
              '  WHERE tbvendamanual_itens.ID_VENDAMANUAL = :ID_VENDAMANUAL   ');
          vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
          vQry.ExecSQL;

          vQry.Close;
          vQry.SQL.Clear;
          vQry.SQL.Add(
              '  UPDATE tbvendamanual_itens SET                      ' +
              '   tbvendamanual_itens.vlrvenda =                     ' +
              '     (tbvendamanual_itens.qtdvenda *                  ' +
              '       (tbvendamanual_itens.VLRUNITARIOVENDA))        ' +
              '  WHERE tbvendamanual_itens.ID_VENDAMANUAL =          ' +
              IntToStr(AtPedidoId));
              vQry.ExecSQL;

            vQry.Close;
            vQry.SQL.Clear;
            vQry.SQL.Add(
            '   UPDATE tbvendamanual_itens SET                    ' +
            '    tbvendamanual_itens.vlrtotal =                   ' +
            '        (   SELECT SUM(I.vlrvenda)                   ' +
            '            FROM tbvendamanual_itens I               ' +
            '            WHERE I.id_vendamanual =                 ' +
            '               tbvendamanual_itens.id_vendamanual    ' +
            '        )                                            ' +
            '   WHERE tbvendamanual_itens.id_vendamanual =        ' +
            IntToStr(AtPedidoId));
            vQry.ExecSQL;

          vQry.Close;
          vQry.SQL.Clear;
          vQry.SQL.Add(
          '   UPDATE tbvendamanual SET                          ' +
          '   tbvendamanual.vlrtotalvenda =                     ' +
          '   ( SELECT FIRST 1 I.vlrtotal                       ' +
          '     FROM tbvendamanual_itens I                      ' +
          '     WHERE I.id_vendamanual = tbvendamanual.id       ' +
          '   )                                                 ' +
          '   WHERE tbvendamanual.id =                          ' +
          IntToStr(AtPedidoId));
          vQry.ExecSQL;
          Result := True;
        end;
      end;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
      if Assigned(cSetiUserFulDB) then
        cSetiUserFulDB := Nil;
    end;
end;

function TdmControleVendaManual.CancelarPedido: Boolean;
begin
    Result := False;
    try
      if NOT (coPedidoCds.IsEmpty) then
      begin
        if SetiMensQuestions('Confirma cancelamento desta venda? '+
        'Ap�s o cancelamento, a venda n�o poder� ser alterada. ',0) then
        begin
          CommAtCancelarPedido;
          CommAtCliente(CaClienteId);
          CommAtFuncionario(CaVendedorId);
          CommAtExcluiProdutosNaoAtualizados;
          CommAtExcluirEstoqueNaoAtualizado;
          Result := True;
        end;
      end;
    finally

    end;
end;

function TdmControleVendaManual.ClienteAbrir(pClienteId:Integer): Boolean;
begin
    try
        Result := False;
        try
          if (pClienteId > 0) then
          begin
              OpenCloseConnection;
              coClienteSql.Close;
              coClienteSql.SQLConnection := SetiSqlConnection;
              coClienteSql.SQL.Clear;
              coClienteSql.SQL.Add
              (
                  'SELECT                                           '+
                  '       C.*,                                      '+
                  '       RO.descricao AS ROTA,                     '+
                  '       RE.descricao AS REGIAO,                   '+
                  '       SE.descricao AS SETOR                     '+
                  'FROM TBCADCLIENTES C                             '+
                  'LEFT JOIN tbcadrotas RO ON C.id_rota = RO.id     '+
                  'LEFT JOIN tbcadregioes RE ON C.id_regiao = RE.id '+
                  'LEFT JOIN tbcadsetores SE ON C.id_setor = SE.id  '+
                  'WHERE 1 = 1                                      '+
                  'AND C.ID = :ID                                   '
              );
              coClienteSql.Params.ParamByName('ID').Value := pClienteId;
              coClienteDsp.DataSet := coClienteSql;
              coClienteDsp.Options := [poAllowCommandText];
              coClienteCds.SetProvider(coClienteDsp);
              coClienteCds.Open;
              Result := (NOT coClienteCds.IsEmpty);
          end;
        except on e : exception do
          SetiMens(e.Message,0);
        end;
    finally

    end;
end;

procedure TdmControleVendaManual.CommAtCancelarPedido;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
      '   UPDATE TBVENDAMANUAL SET                         ' +
      '        DATUSUARIOCANC = current_date               ' +
      '       ,ID_USUARIOCANC = '+IntToStr(frmMain.qUsuId)    +
      '       ,STATUS = ''C''                              ' +
      '  WHERE ID = '+IntToStr(AtPedidoId)     );
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

procedure TdmControleVendaManual.CommAtCliente(pCliId:Integer);
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
      '   UPDATE TBCADCLIENTES SET                         ' +
      '        DATULTMOVIMENTACAO = current_date           ' +
      '  WHERE ID = '+IntToStr(pCliId));
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

procedure TdmControleVendaManual.CommAtExcluiProdutosNaoAtualizados;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
        '  DELETE FROM TBVENDAMANUAL_ITENS                        ' +
        '  WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL                 ' +
        '  AND ((VLRVENDA = 0.00) or (VLRVENDA is null))          ');
      vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;

end;

procedure TdmControleVendaManual.CommAtExcluirEstoqueNaoAtualizado;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
      '  DELETE FROM TBVENDAMANUAL_ESTOQUE                ' +
      '  WHERE ID_VENDAMANUAL = :ID_VENDAMANUAL           ' +
      '  AND (QTDESTOQUE = 0 or QTDESTOQUE is null)       ');
      vQry.Params.ParamByName('ID_VENDAMANUAL').Value := AtPedidoId;
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

procedure TdmControleVendaManual.CommAtFuncionario(pFunId:Integer);
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
      '   UPDATE TBCADFUNCIONARIOS SET                     ' +
      '        DATULTMOVIMENTACAO = current_date           ' +
      '  WHERE ID = '+IntToStr(pFunId));
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

procedure TdmControleVendaManual.CommAtPagamento;
var
  vConn : TSQLConnection;
  vConect : TSetiConnects;
  vQry : TSQLQuery;
begin
    try
      vConn := TSQLConnection.Create(Nil);
      vConect := TSetiConnects.Create;
      vConn := vConect.ConnectsFIREBIRD;
      vQry := TSQLQuery.Create(Nil);
      vQry.SQLConnection := vConn;
      vQry.Close;
      vQry.SQL.Clear;
      vQry.SQL.Add(
      '   UPDATE TBVENDAMANUAL SET                                       '+
      '        DATPAGTO =                                                '+
       QuotedStr(StringReplace(
        DateToStr(PgDtaPagamento),'/','.',[rfReplaceAll])) +
      '       ,ID_FORMAPAGTO = '+IntToStr(PgFormaPagtoId)                 +
      '       ,ID_USUARIOALT = '+IntToStr(frmMain.qUsuId)                 +
      '       ,DATULTIMAALT = current_date                               '+
      '       ,STATUS = ''P''                                           ' +
      '  WHERE ID = '+IntToStr(AtPedidoId)     );
      vQry.ExecSQL;
    finally
      if Assigned(vConn) then
        vConn := Nil;
      if Assigned(vConect) then
        vConect := Nil;
      if Assigned(vQry) then
        vQry := Nil;
    end;
end;

procedure TdmControleVendaManual.coPedidoCdsAfterInsert(DataSet: TDataSet);
begin
    try
      dmGen := TdmGen.Create(Nil);
      SetGetNewPedidoId(dmGen.ProximoId('GEN_ID_VENDAMANUAL'));
      coPedidoCds.FieldByName('ID').Value := qGetNewPedidoId;
      coPedidoCds.FieldByName('ID_USUARIOCAD').Value := frmMain.qUsuId;
      coPedidoCds.FieldByName('DATCADASTRO').Value := Now;
      if (qGetNewPedidoId > 0) then
        VendaAbrir(qGetNewPedidoId);
    finally
      dmGen := Nil;
    end;
end;

procedure TdmControleVendaManual.coPedidoCdsBeforeInsert(DataSet: TDataSet);
begin
    try
      if (qGetNewPedidoId > 0) then
        VendaAbrir(qGetNewPedidoId);
    finally
      dmGen := Nil;
    end;
end;

function TdmControleVendaManual.EstoqueAbrir(pPedidoId: Integer): Boolean;
begin
    try
        Result := False;
        try
          if (pPedidoId > 0) then
          begin
              OpenCloseConnection;
              coEstoqueSql.Close;
              coEstoqueSql.SQLConnection := SetiSqlConnection;
              coEstoqueSql.SQL.Clear;
              coEstoqueSql.SQL.Add
              (
                  'select                                                     '+
                  '       first 16                                            '+
                  '       p.nome                                              '+
                  '       ,e.qtdestoque                                       '+
                  '       ,e.vlrestoque                                       '+
                  '       ,e.id                                               '+
                  '       ,e.id_vendamanual                                   '+
                  '       ,e.id_vendamanual_item                              '+
                  'from tbcadprodutos p                                       '+
                  'left join  tbvendamanual_estoque e on p.id =               '+
                  ' e.id_vendamanual_item                                     '+
                  'AND E.ID_VENDAMANUAL = :ID_VENDAMANUAL                     '+
                  'WHERE 1 = 1                                                '
              );
              coEstoqueSql.Params.ParamByName('ID_VENDAMANUAL').Value :=
                pPedidoId;
              coEstoqueDsp.DataSet := coEstoqueSql;
              coEstoqueDsp.UpdateMode := upWhereKeyOnly;
              coEstoqueDsp.Options := [poAllowCommandText];
              coEstoqueCds.SetProvider(coEstoqueDsp);
              coEstoqueCds.Open;
              ProviderFlags(coEstoqueCds);
              Result := (NOT coEstoqueCds.IsEmpty);
          end;
        except on e : exception do
          SetiMens(e.Message,0);
        end;
    finally

    end;
end;

function TdmControleVendaManual.HistoricoAbrir(pClienteId: Integer): Boolean;
begin
    try
        Result := False;
        try
          if (pClienteId > 0) then
          begin
              OpenCloseConnection;
              coHistoricoSql.Close;
              coHistoricoSql.SQLConnection := SetiSqlConnection;
              coHistoricoSql.SQL.Clear;
              coHistoricoSql.SQL.Add
              (' SELECT * FROM SP_VENDAS_MANUAIS_HISTORICO (:ID_CLIENTE) ');
              coHistoricoSql.Params.ParamByName('ID_CLIENTE').Value :=
                pClienteId;
              coHistoricoDsp.DataSet := coHistoricoSql;
              coHistoricoDsp.UpdateMode := upWhereKeyOnly;
              coHistoricoDsp.Options := [poAllowCommandText];
              coHistoricoCds.SetProvider(coHistoricoDsp);
              coHistoricoCds.Open;
              ProviderFlags(coHistoricoCds);
              Result := (NOT coHistoricoCds.IsEmpty);
          end;
        except on e : exception do
          SetiMens(e.Message,0);
        end;
    finally

    end;
end;

function TdmControleVendaManual.IsTheConnectionOpen: Boolean;
begin
    try
      Result:= False;
      if Assigned(qConnects) then
      begin
          Result := SetiSqlConnection.Connected;
      end;
    finally

    end;
end;

procedure TdmControleVendaManual.ImportarItensEstoquePedidoNovo;
var
  SetiSqlStoredProc: TSQLStoredProc;
begin
    try
      if (VMdmPedidoIDOld <= 0) then
        Exit;
      if (VMdmPedidoIDONew <= 0) then
        Exit;

      qConnects := TSetiConnects.Create;
      SetiSqlStoredProc := TSQLStoredProc.Create(Nil);
      SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD;
      SetiSqlStoredProc.StoredProcName := 'SP_VENDAMANUAL_PEDIDONOVO';
      SetiSqlStoredProc.ParamByName('PEDIDOID_OLD').Value := VMdmPedidoIDOld;
      SetiSqlStoredProc.ParamByName('PEDIDOID_NEW').Value := VMdmPedidoIDONew;
      SetiSqlStoredProc.ExecProc;;
    finally
      if Assigned(qConnects) then
        qConnects := Nil;
      if Assigned(SetiSqlStoredProc) then
        SetiSqlStoredProc := Nil;
    end;
end;

procedure TdmControleVendaManual.OpenCloseConnection(OpenClose: Boolean);
begin
    try
      if (OpenClose) then
      begin
          qConnects := TSetiConnects.Create;
          SetiSqlConnection := qConnects.ConnectsFIREBIRD;
          SetiSqlConnection.Connected := True;
      end else
      begin
        if Assigned(qConnects) then
        begin
          qConnects.Free;
          SetiSqlConnection.Connected := False;
        end;
      end;
    except on e : exception do
          SetiMens(e.Message,0);
    end;
end;

function TdmControleVendaManual.PagamentoPedido: Boolean;
begin
    Result := False;
    try
      if NOT (coPedidoCds.IsEmpty) then
      begin
        if (AtPedidoId > 0) then
        begin
          if (PgClienteId = -1) then
          begin
            SetiMens('Cliente n�o informado',2);
            Exit;
          end else
          if (PgVendedorId = -1) then
          begin
            SetiMens('Vendedor n�o informado',2);
            Exit;
          end else
          if (PgFormaPagtoId = -1) then
          begin
            SetiMens('Forma de pagamento n�o informada',2);
            Exit;
          end;
          if (coPedidoCds.FieldByName('VLRTOTALVENDA').Value = 0) or
                (coPedidoCds.FieldByName('VLRTOTALVENDA').IsNull) then
          begin
            SetiMens('O valor da venda esta zerado.',2);
            Exit;
          end;
          if SetiMensQuestions('Confirma pagamento desta venda? '+
          'Ap�s o pagamento, a venda n�o poder� ser alterada. ',0) then
          begin
            CommAtPagamento;
            CommAtCliente(PgClienteId);
            CommAtFuncionario(PgVendedorId);
            CommAtExcluiProdutosNaoAtualizados;
            CommAtExcluirEstoqueNaoAtualizado;
            SetiMens('Pagamento efetuado com sucesso.');
            Result := True;
          end;
        end;
      end;
    finally

    end;
end;

function TdmControleVendaManual.PedidoAbrir : Boolean;
begin
    try
        Result := False;
        try
          OpenCloseConnection;
          if (qQryPedido <> '') then
          begin
              coPedidoSql.Close;
              coPedidoCds.Close;
              coPedidoSql.SQLConnection := SetiSqlConnection;
              coPedidoSql.SQL.Clear;
              coPedidoSql.SQL.Add(qQryPedido);
              if NOT (IsEmptyOrNull(qKeyValue)) then
              begin
                coPedidoSql.SQL.Add(qQryAnd);
                coPedidoSql.Params.ParamByName(qKeyFieldName).Value :=
                qKeyVAlue;
              end;
              coPedidoDsp.DataSet := coPedidoSql;
              coPedidoDsp.Options := [poAllowCommandText];
              coPedidoCds.ProviderName := coPedidoDsp.Name;

              coPedidoCds.Open;
              ProviderFlags(coPedidoCds);
              Result := (NOT coPedidoCds.IsEmpty);
          end;
        except on e : exception do
          SetiMens(e.Message,0);
        end;
    finally

    end;
end;

function TdmControleVendaManual.PedidoEditar: Boolean;
begin
    Result := False;
    try
      if (coPedidoCds.State in [dsBrowse]) then
      begin
        coPedidoCds.Edit;
        Result := True;
      end;
    finally

    end;
end;

function TdmControleVendaManual.PedidoExcluir: Boolean;
begin
    Result := False;
    try
      if (coPedidoCds.State in [dsBrowse]) then
      begin
          if (SetiMensQuestions('Confirma exclus�o do registro?',0)) then
          begin
            coPedidoCds.Delete;
            coPedidoCds.ApplyUpdates(0);
            coPedidoCds.Refresh;
            SetiMens('Registro exclu�do com sucesso.');
          end;
      end;
    finally

    end;
end;

function TdmControleVendaManual.PedidoGravar: Boolean;
var
  pInsUpd : Integer;
  pVendasUpd,pEstoqueUpd : Boolean;
begin
    Result := False;
    pInsUpd := -1;
    pVendasUpd := False;
    pEstoqueUpd := False;
    try
      if (coPedidoCds.State in [dsInsert,dsEdit]) then
      begin
        if (coPedidoCds.State in [dsInsert]) then
          pInsUpd := 0 else
        if (coPedidoCds.State in [dsEdit]) then
          pInsUpd := 1;
        coPedidoCds.Post;
        coPedidoCds.ApplyUpdates(0);
        if (pInsUpd = 0) then
        begin
          if dmControleVendaManual.InNewMode then
            SetiMens('Registro inserido com sucesso.');
        end;
        if (pInsUpd = 1) then
          if (coPedidoCds.ChangeCount > 0) then
          begin
            if dmControleVendaManual.InNewMode then
              SetiMens('Registro atualizado com sucesso.');
          end;
         Result := True;
      end;

    finally

    end;
end;

function TdmControleVendaManual.PedidoNovo: Boolean;
begin
    Result := False;
    try
        PedidoAbrir;
        coPedidoCds.Append;
        Result := True;
    finally

    end;
end;

procedure TdmControleVendaManual.ProviderFlags(Dts: TDataSet);
var
    vVlrSize, vQtdSize, vCodSize, vDescSize, vDateSize, vChar1Size : Integer;
begin
    try
      vVlrSize := 10;
      vQtdSize := 9;
      vCodSize := 8;
      vDescSize := 15;
      vDateSize := 10;
      vChar1Size := 5;
      if Assigned(Dts) then
      begin
        with (Dts) do
        begin
          if UpperCase(Name) = 'COPEDIDOCDS' then
          begin
            TFloatField(FieldByName('VLRTOTALVENDA')).DisplayFormat :=
                'R$ #,###,##0.00';
            FieldByName('ID').Alignment := taCenter;
          end else
          if UpperCase(Name) = 'COVENDASCDS' then
          begin
            FieldByName('NOME').Visible := True;
            FieldByName('QTDESTOQUE').Visible := True;
            FieldByName('CONTAGEM').Visible := True;
            FieldByName('QTDVENDA').Visible := True;
            FieldByName('ID_VENDAMANUAL').Visible := False;
            FieldByName('ID_PRODUTO').Visible := False;
            FieldByName('VLRVENDAUTILIZADO').Visible := True;
            FieldByName('VLRUNITARIOVENDA').Visible := False;
            FieldByName('VLRVENDA').Visible := True;
            FieldByName('VLRTOTAL').Visible := False;

            FieldByName('NOME').DisplayLabel := 'Produto';
            FieldByName('QTDESTOQUE').DisplayLabel := 'Estoque';
            FieldByName('CONTAGEM').DisplayLabel := 'Contagem';
            FieldByName('QTDVENDA').DisplayLabel := 'Qtd.Venda';
            FieldByName('ID_VENDAMANUAL').DisplayLabel := 'Cod.Venda';
            FieldByName('ID_PRODUTO').DisplayLabel := 'Cod.Produto';
            FieldByName('VLRVENDAUTILIZADO').DisplayLabel := 'Vlr.Unit.';
            FieldByName('VLRUNITARIOVENDA').DisplayLabel := 'Vlr.Unit.';
            FieldByName('VLRVENDA').DisplayLabel := 'Total a pagar';
            FieldByName('VLRTOTAL').DisplayLabel := 'Total da venda';

            FieldByName('NOME').DisplayWidth := vDescSize;
            FieldByName('QTDESTOQUE').DisplayWidth := vQtdSize;
            FieldByName('CONTAGEM').DisplayWidth := vQtdSize;
            FieldByName('QTDVENDA').DisplayWidth := vQtdSize;
            FieldByName('ID_VENDAMANUAL').DisplayWidth := vCodSize;
            FieldByName('ID_PRODUTO').DisplayWidth := vCodSize;
            FieldByName('VLRVENDAUTILIZADO').DisplayWidth := vVlrSize;
            FieldByName('VLRUNITARIOVENDA').DisplayWidth := vVlrSize;
            FieldByName('VLRVENDA').DisplayWidth := vVlrSize;
            FieldByName('VLRTOTAL').DisplayWidth := vVlrSize;

            FieldByName('NOME').Alignment := taLeftJustify;
            FieldByName('QTDESTOQUE').Alignment := taCenter;
            FieldByName('CONTAGEM').Alignment := taCenter;
            FieldByName('QTDVENDA').Alignment := taCenter;
            FieldByName('ID_VENDAMANUAL').Alignment := taLeftJustify;
            FieldByName('ID_PRODUTO').Alignment := taLeftJustify;
            FieldByName('VLRVENDAUTILIZADO').Alignment := taRightJustify;
            FieldByName('VLRUNITARIOVENDA').Alignment := taRightJustify;
            FieldByName('VLRVENDA').Alignment := taRightJustify;
            FieldByName('VLRTOTAL').Alignment := taRightJustify;


            TFloatField(FieldByName('VLRVENDAUTILIZADO')).DisplayFormat :=
                'R$ #,###,##0.00';
            TFloatField(FieldByName('VLRVENDA')).DisplayFormat :=
                'R$ #,###,##0.00';

            TFloatField(FieldByName('VLRUNITARIOVENDA')).currency := True;

          end else
          if UpperCase(Name) = 'COESTOQUECDS' then
          begin
            FieldByName('ID').Visible := False;
            FieldByName('ID_VENDAMANUAL').Visible := False;
            FieldByName('ID_VENDAMANUAL_ITEM').Visible := False;

            FieldByName('NOME').DisplayLabel := 'Produto';
            FieldByName('QTDESTOQUE').DisplayLabel := 'Qtd.Estoque';
            FieldByName('VLRESTOQUE').DisplayLabel := 'Valor estoque';

            FieldByName('NOME').DisplayWidth := vDescSize;
            FieldByName('QTDESTOQUE').DisplayWidth := vQtdSize;
            FieldByName('VLRESTOQUE').DisplayWidth := vVlrSize;

            TFloatField(FieldByName('VLRESTOQUE')).DisplayFormat :=
                'R$ #,###,##0.00';

          end else
          if UpperCase(Name) = 'COHISTORICOCDS' then
          begin

            FieldByName('COD').DisplayLabel := 'C.Venda';
            FieldByName('DTACAD').DisplayLabel := 'Data';
            FieldByName('VLRTOTAL').DisplayLabel := 'Total vendido';
            FieldByName('FORMAPAGTO').DisplayLabel := 'Forma de pagamento';
            FieldByName('VENDEDOR').DisplayLabel := 'Vendedor';
            FieldByName('SITUACAO').DisplayLabel := 'Sit.';

            FieldByName('COD').DisplayWidth := 4;
            FieldByName('DTACAD').DisplayWidth := vDateSize;
            FieldByName('VLRTOTAL').DisplayWidth := vVlrSize;
            FieldByName('FORMAPAGTO').DisplayWidth := vDescSize;
            FieldByName('VENDEDOR').DisplayWidth := vDescSize;
            FieldByName('SITUACAO').DisplayWidth := vChar1Size;

            TFloatField(FieldByName('VLRTOTAL')).DisplayFormat :=
                'R$ #,###,##0.00';
          end;
        end;
      end;
    finally

    end;
end;

procedure TdmControleVendaManual.SetAtClienteID(const Value: Integer);
begin
  FAtClienteID := Value;
end;

procedure TdmControleVendaManual.SetAtContagem(const Value: Integer);
begin
  FAtContagem := Value;
end;

procedure TdmControleVendaManual.SetAtDescAdic(const Value: Double);
begin
  FAtDescAdic := Value;
end;

procedure TdmControleVendaManual.SetAtEProdutoId(const Value: Integer);
begin
  FAtEProdutoId := Value;
end;

procedure TdmControleVendaManual.SetAtEQtdEstoque(const Value: Integer);
begin
  FAtEQtdEstoque := Value;
end;

procedure TdmControleVendaManual.SetAtEstoque(const Value: Integer);
begin
  FAtEstoque := Value;
end;

procedure TdmControleVendaManual.SetAtPedidoId(const Value: Integer);
begin
  FAtPedidoId := Value;
end;

procedure TdmControleVendaManual.SetAtProdutoId(const Value: Integer);
begin
  FAtProdutoId := Value;
end;

procedure TdmControleVendaManual.SetAtVlrUnitarioVenda(const Value: Double);
begin
  FAtVlrUnitarioVenda := Value;
end;

procedure TdmControleVendaManual.SetCaClienteId(const Value: Integer);
begin
  FCaClienteId := Value;
end;

procedure TdmControleVendaManual.SetCaVendedorId(const Value: Integer);
begin
  FCaVendedorId := Value;
end;

procedure TdmControleVendaManual.SetGetNewPedidoId(const Value: Integer);
begin
    FGetNewPedidoId := Value;
end;

procedure TdmControleVendaManual.SetInNewMode(const Value: Boolean);
begin
  FInNewMode := Value;
end;

procedure TdmControleVendaManual.SetKeyFieldName(const Value: string);
begin
    FKeyFieldName := Value;
end;

procedure TdmControleVendaManual.SetKeyVAlue(const Value: Variant);
begin
    FKeyVAlue := Value;
end;

procedure TdmControleVendaManual.SetPgClienteId(const Value: Integer);
begin
  FPgClienteId := Value;
end;

procedure TdmControleVendaManual.SetPgDtaPagamento(const Value: TDate);
begin
  FPgDtaPagamento := Value;
end;

procedure TdmControleVendaManual.SetPgFormaPagtoId(const Value: Integer);
begin
  FPgFormaPagtoId := Value;
end;

procedure TdmControleVendaManual.SetPgVendedorId(const Value: Integer);
begin
  FPgVendedorId := Value;
end;

procedure TdmControleVendaManual.SetQryAnd(const Value: string);
begin
    FQryAnd := Value;
end;

procedure TdmControleVendaManual.SetQryPedido(const Value: string);
begin
    FQryPedido := Value;
end;

procedure TdmControleVendaManual.SetSelClienteId(const Value: Integer);
begin
  FSelClienteId := Value;
end;

procedure TdmControleVendaManual.SetSelProdutoId(const Value: Integer);
begin
  FSelProdutoId := Value;
end;

procedure TdmControleVendaManual.SetVMdmPedidoIDOld(const Value: Integer);
begin
  FVMdmPedidoIDOld := Value;
end;

procedure TdmControleVendaManual.SetVMdmPedidoIDONew(const Value: Integer);
begin
  FVMdmPedidoIDONew := Value;
end;

function TdmControleVendaManual.VendaAbrir(pPedidoId:Integer): Boolean;
begin
    try
        Result := False;
        try
          if (pPedidoId > 0) then
          begin
              OpenCloseConnection;
              coVendasSql.Close;
              coVendasSql.SQLConnection := SetiSqlConnection;
              coVendasSql.SQL.Clear;
              coVendasSql.SQL.Add('SELECT * FROM SP_CONTROLEVM_LISTA_VENDAS('+
                                  ':PEDIDO_ID)');
              coVendasSql.Params.ParamByName('PEDIDO_ID').Value :=
                pPedidoId;
              coVendasDsp.DataSet := coVendasSql;
              coVendasDsp.UpdateMode := upWhereKeyOnly;
              coVendasDsp.Options := [poAllowCommandText];
              coVendasCds.SetProvider(coVendasDsp);
              coVendasCds.Open;
              ProviderFlags(coVendasCds);
              Result := (NOT coVendasCds.IsEmpty);
          end;
        except on e : exception do
          SetiMens(e.Message,0);
        end;
    finally

    end;
end;

end.