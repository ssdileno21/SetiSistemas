{
    Parametros para tela frmCadPadraoReduzido

    //COMANDO PARA O TITULO DO FORM
    SetqTituloForm(const Value: string);
    //COMANDO PARA CONSULTA DE ITENS
    SetqCommandCons(const Value: string);
    //COMANDO PARA INSERT
    SetqCommandIns(const Value: string);
    //NOME DO CAMPO C�D.
    SetqNomeCampoCod(const Value: string);
    //NOME DO CAMPO DESCRI��O
    SetqNomeCampoDesc(const Value: string);
    //COMANDO PARA DELETAR
    SetqCommandDel(const Value: string);

    COLOCAR NO ONCREATE DE CADA FORM HERDADO...

}


unit ufrmCadPadraoReduzido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  uSetiConnects;

type
  TfrmCadPadraoReduzido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    sbIncluirItem: TSpeedButton;
    sbDelItem: TSpeedButton;
    Label1: TLabel;
    edtCod: TEdit;
    Label2: TLabel;
    edtDescricao: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    dsPadrao: TDataSource;
    sqlPadrao: TSQLQuery;
    dspPadrao: TDataSetProvider;
    cdsPadrao: TClientDataSet;
    sbSelRegistro: TSpeedButton;
    sbClose: TSpeedButton;
    mObservacao: TMemo;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure sbIncluirItemClick(Sender: TObject);
    procedure sbDelItemClick(Sender: TObject);
    procedure edtCodKeyPress(Sender: TObject; var Key: Char);
    procedure sbGravarClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbSelRegistroClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    FTipoAcessoPadrao: Integer;
    { Private declarations }
    FConnects : TSetiConnects;
    FqQryPadrao: string;
    FqCommandDel: string;
    FqCommandIns: string;
    FqCommandParamDel: string;
    FqExistemItens: Boolean;
    FqCommandCons: string;
    FqTituloForm: string;
    FqNomeCampoCod: string;
    FqNomeCampoDesc: string;
    FqIdSelecionado: Integer;
    FqNomeCampoObs: string;
    function ExistemItens(param : string = '') : Boolean;
    procedure ControleTela;
    procedure AbreDataSet;
    procedure ProviderFlag;
    procedure Insere;
    procedure SetqExistemItens(const Value: Boolean);
    procedure SetqIdSelecionado(const Value: Integer);
    procedure SetaCamposDbgrid;
  public
    { Public declarations }
  protected
    function CamposValidados : Boolean;
    procedure SetqCommandCons(const Value: string);
    procedure SetqTituloForm(const Value: string);
    procedure SetqCommandDel(const Value: string);
    procedure SetqCommandParamDel(const Value: string);
    procedure SetqCommandIns(const Value: string);
    procedure SetqNomeCampoCod(const Value: string);
    procedure SetqNomeCampoDesc(const Value: string);
    procedure SetqNomeCampoObs(const Value: string);
    procedure SetqQryPadrao(const Value: string);
    procedure SetTipoAcessoPadrao(const Value: Integer);

    property qTipoAcessoPadrao : Integer read FTipoAcessoPadrao write
      SetTipoAcessoPadrao;
    property qTituloForm : string read FqTituloForm write SetqTituloForm;
    property qConnects : TSetiConnects read FConnects write FConnects;
    property qQryPadrao : string read FqQryPadrao write SetqQryPadrao;
    property qCommandDel : string read FqCommandDel write SetqCommandDel;
    property qCommandParamDel : string read FqCommandParamDel write
      SetqCommandParamDel;
    property qCommandIns : string read FqCommandIns write SetqCommandIns;
    property qCommandCons : string read FqCommandCons write SetqCommandCons;
    property qNomeCampoCod : string read FqNomeCampoCod write SetqNomeCampoCod;
    property qNomeCampoDesc : string read FqNomeCampoDesc write
      SetqNomeCampoDesc;
    property qNomeCampoObs : string read FqNomeCampoObs write SetqNomeCampoObs;
    property qExistemItens : Boolean read FqExistemItens write SetqExistemItens;
    property qIdSelecionado : Integer read FqIdSelecionado write
      SetqIdSelecionado;
  end;

var
  frmCadPadraoReduzido: TfrmCadPadraoReduzido;

implementation

{$R *.dfm}

uses uMess, udmGen;

{ TfrmCadPadraoReduzido }

procedure TfrmCadPadraoReduzido.AbreDataSet;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlPadrao.Close;
      sqlPadrao.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlPadrao.SQL.Clear;
      sqlPadrao.SQL.Add(qCommandCons);
      cdsPadrao.Open;
      if NOT (cdsPadrao.IsEmpty) then
        dsPadrao.DataSet.First;
      ProviderFlag;
      cdsPadrao.Refresh;
    finally
      qConnects.Free;
      SetTipoAcessoPadrao(1);
      ControleTela;
    end;
end;

function TfrmCadPadraoReduzido.CamposValidados: Boolean;
begin
    Result := True;

    if edtCod.Text = '' then
    begin
      SetiMens(1,'C�digo n�o informado.');
      Result := False;
      Exit;
    end else
    begin
      if ExistemItens('S') = True then
      begin
        SetiMens(1,'J� existe registro com esse c�digo.');
        Result := False;
        Exit;
      end;
    end;
    if edtDescricao.Text = '' then
    begin
      SetiMens(1,'Descri��o n�o informada.');
      Result := False;
      Exit;
    end;
end;

procedure TfrmCadPadraoReduzido.ControleTela;
var
  vExistemItens : Boolean;
begin
    if qTipoAcessoPadrao = 1 then  //MODO ACAO...
    begin
      vExistemItens := ExistemItens;
      sbIncluirItem.Enabled := True;
      sbDelItem.Enabled := vExistemItens;
      sbSelRegistro.Enabled := vExistemItens;
      edtCod.Enabled := False;
      edtCod.Clear;
      edtDescricao.Enabled := False;
      edtDescricao.Clear;
      sbGravar.Enabled := False;
      sbCancelar.Enabled := False;
      mObservacao.Enabled := False;
      mObservacao.Lines.Clear;
      if vExistemItens then
        SetaCamposDbgrid;
    end;
    if qTipoAcessoPadrao = 2 then  //MODO INSERT...
    begin
      sbIncluirItem.Enabled := False;
      sbDelItem.Enabled := False;
      edtCod.Enabled := True;
      edtCod.Clear;
      edtDescricao.Enabled := True;
      edtDescricao.Clear;
      sbGravar.Enabled := True;
      sbCancelar.Enabled := True;
      sbSelRegistro.Enabled := False;
      mObservacao.Clear;
      mObservacao.Enabled := True;
    end;
end;

procedure TfrmCadPadraoReduzido.DBGrid1CellClick(Column: TColumn);
begin
    SetaCamposDbgrid;
end;

procedure TfrmCadPadraoReduzido.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

function TfrmCadPadraoReduzido.ExistemItens(param : string): Boolean;
var
    vSql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add(qCommandCons);
      if param = 'S' then
      begin
        vSql.SQL.Clear;
        vSql.SQL.Add(qCommandCons + 'WHERE '+qNomeCampoCod+ ' = '+edtCod.Text );
      end;
      vSql.Open;
      Result := (NOT vSql.IsEmpty);
    finally
      qConnects.Free;
      vSql.Free;
    end;
end;

procedure TfrmCadPadraoReduzido.FormShow(Sender: TObject);
begin
    AbreDataSet;
end;

procedure TfrmCadPadraoReduzido.Insere;
var
    vSql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add(qCommandIns);
      vSql.Params.ParamByName(qNomeCampoCod).AsInteger :=
        StrToInt(edtCod.Text);
      vSql.Params.ParamByName(qNomeCampoDesc).AsString := edtDescricao.Text;
      vSql.Params.ParamByName(qNomeCampoObs).AsString := mObservacao.Text;
      vSql.ExecSQL;
      SetiMens(1,'Registro inserido com sucesso');
    finally
      qConnects.Free;
      vSql.Free;
    end;
end;

procedure TfrmCadPadraoReduzido.ProviderFlag;
begin
    try
      if NOT dsPadrao.DataSet.IsEmpty then
      begin
        with dsPadrao.DataSet do
        begin
          FieldByName(qNomeCampoCod).DisplayLabel := 'C�d.';
          FieldByName(qNomeCampoDesc).DisplayLabel := 'Descri��o';
          FieldByName(qNomeCampoObs).DisplayLabel := 'Observa��o';
          FieldByName(qNomeCampoCod).DisplayWidth := 10;
          FieldByName(qNomeCampoDesc).DisplayWidth := 30;
          FieldByName(qNomeCampoObs).DisplayWidth := 60;
        end;
      end;
    finally

    end;
end;

procedure TfrmCadPadraoReduzido.sbCancelarClick(Sender: TObject);
begin
    SetTipoAcessoPadrao(1);
    ControleTela;
end;

procedure TfrmCadPadraoReduzido.sbCloseClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmCadPadraoReduzido.sbDelItemClick(Sender: TObject);
var
  sql : TSQLQuery;
  vParam : Integer;
begin
    if SetiMensQuestions(1,'Confirma exclus�o do registro?') then
    begin
        if qCommandDel <> '' then
        begin
          if (edtCod.Text <> '') then
          begin
            vParam := StrToInt(edtCod.Text);
            try
              qConnects := TSetiConnects.Create;
              sql := TSQLQuery.Create(Nil);
              sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
              sql.SQL.Add(qCommandDel);
              sql.Params.ParamByName(qNomeCampoCod).AsInteger :=
                StrToInt(edtCod.Text);
              sql.SQL.Add(qCommandParamDel +IntToStr(vParam));
              sql.ExecSQL;
              dsPadrao.DataSet.Refresh;
            finally
              sql.Free;
              qConnects.Free;
              SetTipoAcessoPadrao(1);
              ControleTela;
            end;
          end;
        end;
    end;
end;

procedure TfrmCadPadraoReduzido.sbGravarClick(Sender: TObject);
begin
    if CamposValidados then
    begin
        if qTipoAcessoPadrao = 2 then
        begin
          Insere;
          dsPadrao.DataSet.Refresh;
          SetTipoAcessoPadrao(1);
          ControleTela;
        end;
    end;
end;

procedure TfrmCadPadraoReduzido.sbIncluirItemClick(Sender: TObject);
begin
    SetTipoAcessoPadrao(2);
    ControleTela;
end;


procedure TfrmCadPadraoReduzido.sbSelRegistroClick(Sender: TObject);
begin
    if NOT (dsPadrao.DataSet.IsEmpty) then
    begin
      SetqIdSelecionado(StrToIntDef(edtCod.Text,-1));
      ModalResult := mrOk;
    end;
end;

procedure TfrmCadPadraoReduzido.SetaCamposDbgrid;
begin
    if NOT dsPadrao.DataSet.IsEmpty then
    begin
      edtCod.Text := dsPadrao.DataSet.FieldByName(qNomeCampoCod).AsString;
      edtDescricao.Text :=
        dsPadrao.DataSet.FieldByName(qNomeCampoDesc).AsString;
      mObservacao.Lines.Add(dsPadrao.DataSet.FieldByName(
        qNomeCampoObs).AsString);
    end else
    begin
      edtCod.Clear;
      edtDescricao.Clear;
    end;
end;

procedure TfrmCadPadraoReduzido.SetqCommandCons(const Value: string);
begin
    FqCommandCons := Value;
end;

procedure TfrmCadPadraoReduzido.SetqCommandDel(const Value: string);
begin
    FqCommandDel := Value;
end;

procedure TfrmCadPadraoReduzido.SetqCommandIns(const Value: string);
begin
    FqCommandIns := Value;
end;

procedure TfrmCadPadraoReduzido.SetqCommandParamDel(const Value: string);
begin
    FqCommandParamDel := Value;
end;

procedure TfrmCadPadraoReduzido.SetqExistemItens(const Value: Boolean);
begin
    FqExistemItens := Value;
end;

procedure TfrmCadPadraoReduzido.SetqIdSelecionado(const Value: Integer);
begin
    FqIdSelecionado := Value;
end;

procedure TfrmCadPadraoReduzido.SetqNomeCampoCod(const Value: string);
begin
    FqNomeCampoCod := Value;
end;

procedure TfrmCadPadraoReduzido.SetqNomeCampoDesc(const Value: string);
begin
    FqNomeCampoDesc := Value;
end;

procedure TfrmCadPadraoReduzido.SetqNomeCampoObs(const Value: string);
begin
    FqNomeCampoObs := Value;
end;

procedure TfrmCadPadraoReduzido.SetqQryPadrao(const Value: string);
begin
    FqQryPadrao := Value;
end;

procedure TfrmCadPadraoReduzido.SetqTituloForm(const Value: string);
begin
    FqTituloForm := Value;
end;

procedure TfrmCadPadraoReduzido.SetTipoAcessoPadrao(const Value: Integer);
begin
    FTipoAcessoPadrao := Value;
end;

end.