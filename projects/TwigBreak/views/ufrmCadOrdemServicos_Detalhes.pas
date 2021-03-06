unit ufrmCadOrdemServicos_Detalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, uSetiConnects, uLocate;

type
  TfrmOrdemServicos_Detalhes = class(TForm)
    Panel8: TPanel;
    Panel9: TPanel;
    Panel1: TPanel;
    sbDel: TSpeedButton;
    sbIncluir: TSpeedButton;
    lbAvisoModo: TLabel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label7: TLabel;
    edtCodProdutoMarca: TEdit;
    Label10: TLabel;
    edtCodProdutoModelo: TEdit;
    Label2: TLabel;
    edtCodProdutoDefeito: TEdit;
    Label1: TLabel;
    mObservacao: TMemo;
    edtProdutoMarca: TEdit;
    edtProdutoModelo: TEdit;
    edtProdutoDefeito: TEdit;
    edtOs: TEdit;
    Label8: TLabel;
    Panel6: TPanel;
    sqlItens: TSQLQuery;
    dspItens: TDataSetProvider;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    Label3: TLabel;
    edtCodTecnico: TEdit;
    edtTecnico: TEdit;
    sbProdutosMarcas: TSpeedButton;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    Label4: TLabel;
    edtVlrServico: TEdit;
    SetiSqlStoredProc: TSQLStoredProc;
    procedure sbLocalizarProdutoMarcaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodProdutoMarcaExit(Sender: TObject);
    procedure edtCodProdutoModeloExit(Sender: TObject);
    procedure edtCodProdutoDefeitoExit(Sender: TObject);
    procedure sbIncluirClick(Sender: TObject);
    procedure sbProdutosMarcasClick(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure edtCodTecnicoExit(Sender: TObject);
    procedure edtVlrServicoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbDelClick(Sender: TObject);
  private
    { Private declarations }
    FModo : string;
    FOs : Integer;
    FqExisteItem: Boolean;
    FConnects : TSetiConnects;
    FLocate : TLocate;
    FqId_Tecnico: Integer;
    FqId_ProdutoModelo: Integer;
    FqId_ProdutoDefeito: Integer;
    FqId_ProdutoMarca: Integer;
    FqVlrServico: Double;
    FqObservacao: string;
    FqId: Integer;
    function BuscaMarca(Id:Integer) : string;
    function BuscaModelo(Id:Integer) : string;
    function BuscaDefeito(Id:Integer) : string;
    function BuscaTecnico(Id:Integer) : string;
    function ExistemServicos : Boolean;
    function PassaParametros : Boolean;
    function ProximoCod : Integer;

    procedure ControleTela;
    procedure SetqExisteItem(const Value: Boolean);
    procedure ListaServicos;
    procedure ProviderFlag;
    procedure SetaCamposDbgrid;
    procedure InsereServico;
    procedure AtualizaOs;
    procedure ExcluiServico;

    procedure SetqId_ProdutoDefeito(const Value: Integer);
    procedure SetqId_ProdutoMarca(const Value: Integer);
    procedure SetqId_ProdutoModelo(const Value: Integer);
    procedure SetqId_Tecnico(const Value: Integer);
    procedure SetqObservacao(const Value: string);
    procedure SetqVlrServico(const Value: Double);
    procedure SetqId(const Value: Integer);

    property qExisteItem : Boolean read FqExisteItem write SetqExisteItem;
    property qConnects : TSetiConnects read FConnects write FConnects;
    property cLocate : TLocate read FLocate write FLocate;
  public
    { Public declarations }
    function GetModo : string;
    procedure SetModo(Const Value : string);
    property qModo : string read GetModo write SetModo;

    function GetOs : Integer;
    procedure SetOs(Const Value : Integer);
    property qOs : Integer read GetOs write SetOs;
    property qId_ProdutoMarca : Integer read FqId_ProdutoMarca
      write SetqId_ProdutoMarca;
    property qId_ProdutoModelo : Integer read FqId_ProdutoModelo
      write SetqId_ProdutoModelo;
    property qId_ProdutoDefeito : Integer read FqId_ProdutoDefeito
      write SetqId_ProdutoDefeito;
    property qId_Tecnico : Integer read FqId_Tecnico write SetqId_Tecnico;
    property qObservacao : string read FqObservacao write SetqObservacao;
    property qVlrServico : Double read FqVlrServico write SetqVlrServico;
    property qId : Integer read FqId write SetqId;

  end;

var
  frmOrdemServicos_Detalhes: TfrmOrdemServicos_Detalhes;

implementation

{$R *.dfm}

uses ufrmCadProdutoMarca, ufrmCadProdutoDefeito, ufrmCadProdutoModelo,
  ufrmCadOrdemServicos_ProdutosAcessorios, uMess;

procedure TfrmOrdemServicos_Detalhes.AtualizaOs;
var
  sql : TSQLQuery;
begin
  try
    qConnects := TSetiConnects.Create;
    SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
    SetiSqlStoredProc.StoredProcName := 'SP_OS_ATUALIZA';
    SetiSqlStoredProc.ParamByName('ID_OS').Value := qOs;
    SetiSqlStoredProc.ExecProc;
  finally
    qConnects.Free;
  end;
end;

function TfrmOrdemServicos_Detalhes.BuscaDefeito(Id: Integer): string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADPRODUTODEFEITO D ');
      sql.SQL.Add( ' WHERE D.ID = '+IntToStr(Id));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('NOME').AsString else
      begin
        edtCodProdutoDefeito.Clear;
        edtProdutoDefeito.Clear;
      end;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmOrdemServicos_Detalhes.BuscaMarca(Id: Integer): string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADPRODUTOMARCA M ');
      sql.SQL.Add( ' WHERE M.ID = '+IntToStr(Id));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('NOME').AsString else
      begin
        edtCodProdutoMarca.Clear;
        edtProdutoMarca.Clear;
      end;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmOrdemServicos_Detalhes.BuscaModelo(Id: Integer): string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADPRODUTOMODELO M ');
      sql.SQL.Add( ' WHERE M.ID = '+IntToStr(Id));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('NOME').AsString else
      begin
        edtCodProdutoModelo.Clear;
        edtProdutoModelo.Clear;
      end;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TfrmOrdemServicos_Detalhes.BuscaTecnico(Id: Integer): string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT * FROM TBCADFUNCIONARIOS F ' );
      sql.SQL.Add( ' WHERE F.STATUS = ''S'' ' );
      sql.SQL.Add( ' AND F.TECNICO = ''S'' ' );
      sql.SQL.Add( ' AND F.ID = '+IntToStr(Id));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('NOME').AsString else
      begin
        edtCodTecnico.Clear;
        edtTecnico.Clear;
      end;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.ControleTela;
var
  vSet : Integer;
  vExisteItem : Integer; //existe item?
begin
    ListaServicos;
    qExisteItem := (NOT cdsItens.IsEmpty);
    if ExistemServicos then
      SetaCamposDbgrid;
    if (qModo = 'ABERTO') then vSet := 0;
    if (qModo = 'INSERT') or (qModo = 'UPDATE') then vSet := 1;
    if (qModo = 'SEARCH') then vSet := 2;
    if (qModo = 'NEW') then vSet := 3;
    //if (qExisteItem) then vExisteItem := 1 else vExisteItem := 0;


      lbAvisoModo.Visible := vSet in [0];
      sbIncluir.Enabled := vSet in [1,2];
      sbDel.Enabled := (vSet in [1,2]) and (qExisteItem);
      edtCodProdutoMarca.Enabled := vSet in [3];
      edtProdutoMarca.Enabled := vSet in [3];
      edtCodProdutoModelo.Enabled := vSet in [3];
      edtProdutoModelo.Enabled := vSet in [3];
      edtCodProdutoDefeito.Enabled := vSet in [3];
      edtProdutoDefeito.Enabled := vSet in [3];
      mObservacao.Enabled := vSet in [3];
      sbProdutosMarcas.Enabled := vSet in [3];
      edtCodTecnico.Enabled := vSet in [3];
      edtTecnico.Enabled := vSet in [3];
      edtVlrServico.Enabled := vSet in [3];
      sbGravar.Enabled := vSet in [3];
      sbCancelar.Enabled := vSet in [3];
      if (vSet in [3]) or (NOT qExisteItem) then
      begin
        edtCodProdutoMarca.Clear;
        edtProdutoMarca.Clear;
        edtCodProdutoModelo.Clear;
        edtProdutoModelo.Clear;
        edtCodProdutoDefeito.Clear;
        edtProdutoDefeito.Clear;
        edtCodTecnico.Clear;
        edtTecnico.Clear;
        edtVlrServico.Clear;
        mObservacao.Clear;
      end;
end;

procedure TfrmOrdemServicos_Detalhes.DBGrid1CellClick(Column: TColumn);
begin
    SetaCamposDbgrid;
end;

procedure TfrmOrdemServicos_Detalhes.edtCodProdutoDefeitoExit(Sender: TObject);
begin
    if (edtCodProdutoDefeito.Text <> '') then
      edtProdutoDefeito.Text :=
        BuscaDefeito(StrToInt(edtCodProdutoDefeito.Text))
    else
      edtProdutoDefeito.Clear;
end;

procedure TfrmOrdemServicos_Detalhes.edtCodProdutoMarcaExit(Sender: TObject);
begin
    if (edtCodProdutoMarca.Text <> '') then
      edtProdutoMarca.Text := BuscaMarca(StrToInt(edtCodProdutoMarca.Text))
    else
      edtProdutoMarca.Clear;
end;

procedure TfrmOrdemServicos_Detalhes.edtCodProdutoModeloExit(Sender: TObject);
begin
    if (edtCodProdutoModelo.Text <> '') then
      edtProdutoModelo.Text :=
        BuscaModelo(StrToInt(edtCodProdutoModelo.Text))
    else
      edtProdutoModelo.Clear;
end;

procedure TfrmOrdemServicos_Detalhes.edtCodTecnicoExit(Sender: TObject);
begin
    if (edtCodTecnico.Text <> '') then
      edtTecnico.Text :=
        BuscaTecnico(StrToInt(edtCodTecnico.Text))
    else
      edtTecnico.Clear;
end;

procedure TfrmOrdemServicos_Detalhes.edtVlrServicoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if ( Key in ['.',','] ) then
    begin
      Key := #44;
      if Pos(Key,edtVlrServico.Text) <> 0 then
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

procedure TfrmOrdemServicos_Detalhes.ExcluiServico;
var
  sql : TSQLQuery;
begin
  if SetiMensQuestions(0,'Confirma exclus�o do servi�o?') then
  begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' DELETE FROM TBOS_DETALHES I ');
      sql.SQL.Add( ' WHERE I.ID_OS = '+IntToStr(qOs));
      sql.SQL.Add( ' AND I.ID = '+IntToStr(qId));
      sql.ExecSQL;
    finally
      FreeAndNil(sql);
      qConnects.Free;
      SetModo('INSERT');
      ControleTela;
      ListaServicos;
    end;
  end;
end;

function TfrmOrdemServicos_Detalhes.ExistemServicos: Boolean;
var
  sql : TSQLQuery;
begin
    try
      Result := False;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.Close;
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Add( ' SELECT * FROM TBOS_DETALHES D ');
      sql.SQL.Add( ' WHERE D.ID_OS = '+IntToStr(qOs));
      sql.Open;
      Result := NOT sql.IsEmpty;
      SetqExisteItem(Result);
    finally
      FreeAndNil(sql);
      qConnects.Free;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.FormShow(Sender: TObject);
begin
    ControleTela;
    edtOs.Text := IntToStr(qOs);
end;

function TfrmOrdemServicos_Detalhes.GetModo: string;
begin
    Result := FModo;
end;

function TfrmOrdemServicos_Detalhes.GetOs: Integer;
begin
    Result := FOs;
end;

procedure TfrmOrdemServicos_Detalhes.InsereServico;
var
    vSql : TSQLQuery;
    vPrdMarca,
      vPrdModelo,
        vPrdDefeito,
          vTecnico,
            vObs,
              vVlrServicos : Boolean;
begin
    try
      vPrdMarca := False;
      vPrdModelo := False;
      vPrdDefeito := False;
      vTecnico := False;
      vObs := False;
      vVlrServicos := False;

      vPrdMarca := (edtCodProdutoMarca.Text <> '');
      vPrdModelo := (edtCodProdutoModelo.Text <> '');
      vPrdDefeito := (edtCodProdutoDefeito.Text <> '');
      vTecnico := (edtCodTecnico.Text <> '');
      vObs := (mObservacao.Text <> '');
      vVlrServicos := (edtVlrServico.Text <> '');

      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add(' INSERT INTO TBOS_DETALHES ');
      vSql.SQL.Add(' (                         ');
      vSql.SQL.Add('   ID_OS                   ');
      vSql.SQL.Add('  ,ID                      ');

      if vPrdMarca then
      vSql.SQL.Add('   ,ID_CADPRODUTOMARCA     ');

      if vPrdModelo then
      vSql.SQL.Add('   ,ID_CADPRODUTOMODELO    ');

      if vPrdDefeito then
      vSql.SQL.Add(' ,ID_CADPRODUTODEFEITO   ');

      if vTecnico then
      vSql.SQL.Add(' ,ID_FUNCIONARIO   ');

      if vObs then
      vSql.SQL.Add(' ,OBSERVACAO             ');

      if vVlrServicos then
      vSql.SQL.Add(' ,VLRSERVICOS            ');

      vSql.SQL.Add('  ) VALUES (               ');
      vSql.SQL.Add('    :ID_OS                 ');
      vSql.SQL.Add('    ,:ID                    ');

      if vPrdMarca then
      vSql.SQL.Add('   ,:ID_CADPRODUTOMARCA    ');

      if vPrdModelo then
      vSql.SQL.Add('   ,:ID_CADPRODUTOMODELO   ');

      if vPrdDefeito then
      vSql.SQL.Add('   ,:ID_CADPRODUTODEFEITO  ');

      if vTecnico then
      vSql.SQL.Add(' ,:ID_FUNCIONARIO   ');

      if vObs then
      vSql.SQL.Add('   ,:OBSERVACAO            ');

      if vVlrServicos then
      vSql.SQL.Add('   ,:VLRSERVICOS           ');
      vSql.SQL.Add('  );                       ');

      vSql.Params.ParamByName('ID_OS').AsInteger := qOs;
      vSql.Params.ParamByName('ID').AsInteger := ProximoCod;

      if vPrdMarca then
      vSql.Params.ParamByName('ID_CADPRODUTOMARCA').AsInteger :=
      qId_ProdutoMarca;

      if vPrdModelo then
      vSql.Params.ParamByName('ID_CADPRODUTOMODELO').AsInteger :=
      qId_ProdutoModelo;

      if vPrdDefeito then
      vSql.Params.ParamByName('ID_CADPRODUTODEFEITO').AsFloat :=
      qId_ProdutoDefeito;

      if vTecnico then
      vSql.Params.ParamByName('ID_FUNCIONARIO').AsInteger := qId_Tecnico;

      if vObs then
      vSql.Params.ParamByName('OBSERVACAO').AsString :=
      qObservacao;

      if vVlrServicos then
      vSql.Params.ParamByName('VLRSERVICOS').AsFloat := qVlrServico;

      vSql.ExecSQL;
      SetiMens(1,'Servi�o inserido com sucesso.');
    finally
      FreeAndNil(vSql);
      qConnects.Free;
      SetModo('SEARCH');
      ControleTela;
      ListaServicos;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.ListaServicos;
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
    finally
      qConnects.Free;
    end;
end;

function TfrmOrdemServicos_Detalhes.PassaParametros: Boolean;
var
  vVlrServico : Double;
begin
    Result := False;
    if qModo = 'NEW' then
    begin
      if (edtCodProdutoMarca.Text = '') and (edtCodProdutoModelo.Text = '') then
      begin
        if (mObservacao.Text = '') then
        begin
          mObservacao.SetFocus;
          SetiMens(1,'Informe pelo menos uma observa��o.');
          Exit;
        end;
      end;
      if edtVlrServico.Text = '' then
      begin
        SetiMens(1,'Valor do servi�o n�o informado.');
        edtVlrServico.SetFocus;
        Exit;
      end else
      begin
        vVlrServico := StrToFloatDef(edtVlrServico.Text,0);
        if (vVlrServico <= 0) then
        begin
          SetiMens(1,'Valor do servi�o n�o permitido.');
          edtVlrServico.SetFocus;
          Exit;
        end;
      end;
      if (edtCodProdutoMarca.Text <> '') then
        SetqId_ProdutoMarca(StrToInt(edtCodProdutoMarca.Text));
      if (edtCodProdutoModelo.Text <> '') then
        SetqId_ProdutoModelo(StrToInt(edtCodProdutoModelo.Text));
      if (edtCodProdutoDefeito.Text <> '') then
        SetqId_ProdutoDefeito(StrToInt(edtCodProdutoDefeito.Text));
      if (edtCodTecnico.Text <> '') then
        SetqId_Tecnico(StrToInt(edtCodTecnico.Text));
      if (mObservacao.Text <> '') then
        SetqObservacao(mObservacao.Text);
      if (edtVlrServico.Text <> '') then
        SetqVlrServico(StrToFloatDef(edtVlrServico.Text,0));

      Result := True;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.ProviderFlag;
begin
    try
      if NOT dsItens.DataSet.IsEmpty then
      begin
        with dsItens.DataSet do
        begin
          FieldByName('ID_OS').DisplayLabel := 'O.S';
          FieldByName('ID').DisplayLabel := 'Cont.';
          FieldByName('ID_CADPRODUTOMARCA').DisplayLabel := 'Cod.Marca Prod.';
          FieldByName('ID_CADPRODUTOMODELO').DisplayLabel := 'Cod.Modelo Prod.';
          FieldByName('ID_CADPRODUTODEFEITO').DisplayLabel
            := 'Cod.Defeito Prod.';
          FieldByName('ID_FUNCIONARIO').DisplayLabel := 'C�d.T�cnico';
          FieldByName('OBSERVACAO').DisplayLabel := 'OBS.';
          FieldByName('VLRSERVICOS').DisplayLabel := 'Vlr.Servi�os';

          FieldByName('ID_OS').DisplayWidth := 5;
          FieldByName('ID').DisplayWidth := 5;
          FieldByName('ID_CADPRODUTOMARCA').DisplayWidth := 10;
          FieldByName('ID_CADPRODUTOMODELO').DisplayWidth := 10;
          FieldByName('ID_CADPRODUTODEFEITO').DisplayWidth := 10;
          FieldByName('ID_FUNCIONARIO').DisplayWidth := 10;
          FieldByName('OBSERVACAO').DisplayWidth := 30;
          FieldByName('VLRSERVICOS').DisplayWidth := 10;
        end;
      end;
    finally

    end;
end;

function TfrmOrdemServicos_Detalhes.ProximoCod: Integer;
var
  sql : TSQLQuery;
begin
    try
      Result := 0;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.Close;
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Add( ' SELECT MAX(ID) AS CONT FROM TBOS_DETALHES D ');
      sql.SQL.Add( ' WHERE D.ID_OS = '+IntToStr(qOs));
      sql.Open;
      if NOT sql.IsEmpty then
      begin
        Result := sql.FieldByName('CONT').AsInteger + 1;
      end;
    finally
      FreeAndNil(sql);
      //qConnects.Free;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.sbCancelarClick(Sender: TObject);
begin
    SetModo('INSERT');
    ControleTela;
end;

procedure TfrmOrdemServicos_Detalhes.sbDelClick(Sender: TObject);
begin
    SetqId(dsItens.DataSet.FieldByName('ID').Value);
    ExcluiServico;
end;

procedure TfrmOrdemServicos_Detalhes.sbGravarClick(Sender: TObject);
begin
    if (PassaParametros) then
    begin
      InsereServico;
      AtualizaOS;
    end;
end;

procedure TfrmOrdemServicos_Detalhes.sbIncluirClick(Sender: TObject);
begin
    SetModo('NEW');
    ControleTela;
    edtCodProdutoMarca.SetFocus;
end;

procedure TfrmOrdemServicos_Detalhes.sbLocalizarProdutoMarcaClick(
  Sender: TObject);
begin
    frmCadProdutoMarca := TfrmCadProdutoMarca.Create(Nil);
    if frmCadProdutoMarca.ShowModal = mrOk then
    begin
      if frmCadProdutoMarca.qIdSelec > -1 then
        edtCodProdutoMarca.Text := IntToStr(frmCadProdutoMarca.qIdSelec);
    end
end;

procedure TfrmOrdemServicos_Detalhes.SetaCamposDbgrid;
begin
  try
    if NOT dsItens.DataSet.IsEmpty then
    begin
      edtCodProdutoMarca.Text :=
        IntToStr(dsItens.DataSet.FieldByName('ID_CADPRODUTOMARCA').AsInteger);
      if (edtCodProdutoMarca.Text <> '') then
        edtProdutoMarca.Text := BuscaMarca(StrToInt(edtCodProdutoMarca.Text));

      edtCodProdutoModelo.Text :=
        IntToStr(dsItens.DataSet.FieldByName('ID_CADPRODUTOMODELO').AsInteger);
      if (edtCodProdutoModelo.Text <> '') then
        edtProdutoModelo.Text :=
          BuscaModelo(StrToInt(edtCodProdutoModelo.Text));

      edtCodProdutoDefeito.Text :=
        IntToStr(dsItens.DataSet.FieldByName('ID_CADPRODUTODEFEITO').AsInteger);
      if (edtCodProdutoDefeito.Text <> '') then
        edtProdutoDefeito.Text :=
          BuscaMarca(StrToInt(edtCodProdutoDefeito.Text));

      edtCodTecnico.Text :=
        IntToStr(dsItens.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger);
      if (edtCodTecnico.Text <> '') then
        edtTecnico.Text :=
          BuscaTecnico(StrToInt(edtCodTecnico.Text));

      mObservacao.Text :=
        dsItens.DataSet.FieldByName('OBSERVACAO').AsString;

      edtVlrServico.Text :=
        StringReplace(dsItens.DataSet.FieldByName('VLRSERVICOS').AsString,
                          '.',',',[]);

    end else
    begin
      edtCodProdutoMarca.Clear;
      edtCodProdutoModelo.Clear;
      edtCodProdutoDefeito.Clear;
      mObservacao.Clear;
    end;
  finally

  end;
end;

procedure TfrmOrdemServicos_Detalhes.SetModo(const Value: string);
begin
    FModo := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetOs(const Value: Integer);
begin
    FOs := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqExisteItem(const Value: Boolean);
begin
    FqExisteItem := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqId(const Value: Integer);
begin
    FqId := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqId_ProdutoDefeito(
  const Value: Integer);
begin
    FqId_ProdutoDefeito := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqId_ProdutoMarca(const Value: Integer);
begin
    FqId_ProdutoMarca := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqId_ProdutoModelo(const Value: Integer);
begin
    FqId_ProdutoModelo := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqId_Tecnico(const Value: Integer);
begin
    FqId_Tecnico := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqObservacao(const Value: string);
begin
    FqObservacao := Value;
end;

procedure TfrmOrdemServicos_Detalhes.SetqVlrServico(const Value: Double);
begin
    FqVlrServico := Value;
end;

procedure TfrmOrdemServicos_Detalhes.sbProdutosMarcasClick(Sender: TObject);
begin
      { pType:
        pCds:
        pTable:
        pField:
        pKey:
        pFieldReturn:
        pTitle:
        pComm:
        pOrder:
        pIdConnect
      }
{

  n�o � possivel usar este botao, pois a classe de pesquisa utiliza o mesmo
  dataset da tela principal, sendo assim, com a tela esta em modo de altera��o
  ou insercao, e a tela de pesquisa � aberta, quando for gravar a tela principal
  � estorado um erro, dizendo que o dataset n�o esta criado, uma vez que o mesmo
  � destuido ao fechar a tela de pesquisa...

    try
      cLocate := TLocate.Create;
      edtCodProdutoMarca.Text :=
      cLocate.GetSearch(0,
                      NIL,
                      'TBCADPRODUTOMARCA',
                      'ID',
                      'ID',
                      'ID',
                      'Produtos - Marcas',
                      '',
                      '',
                      '',
                      'ORDER BY ID'
                      );
    finally
      if (edtCodProdutoMarca.Text <> '') then
        edtProdutoMarca.Text := BuscaMarca(StrToInt(edtCodProdutoMarca.Text));
      cLocate.Free;
    end;
}
end;

end.
