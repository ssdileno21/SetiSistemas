unit ufrmRelControleEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmRelatorioPadrao, Data.FMTBcd,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  System.UITypes, Vcl.ImgList, Vcl.Menus;

type
  TfrmRelControleEstoque = class(TfrmRelatorioPadrao)
    GroupBox1: TGroupBox;
    cbxGp1: TCheckBox;
    cbxGp2: TCheckBox;
    cbxGp3: TCheckBox;
    cbxGp4: TCheckBox;
    pnEstoque: TPanel;
    Panel7: TPanel;
    sbVerificarEstoque: TSpeedButton;
    sbAtualizarEstoque: TSpeedButton;
    Panel8: TPanel;
    Label3: TLabel;
    edtDtaUltimaAtEstoque: TEdit;
    cbxQtdEstoque: TCheckBox;
    edtQtdEstoque: TEdit;
    GroupBox2: TGroupBox;
    lbDtIni: TLabel;
    lbDtFim: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    cbxInformarPeriodo: TCheckBox;
    Panel6: TPanel;
    rgStatusPrd: TRadioGroup;
    rgMovimentaEstoque: TRadioGroup;
    Panel10: TPanel;
    Label1: TLabel;
    edtIdProduto: TEdit;
    edtProduto: TEdit;
    Panel11: TPanel;
    Label2: TLabel;
    edtQdtProdCad: TEdit;
    Panel12: TPanel;
    Label4: TLabel;
    edtQtdProdEstoque: TEdit;
    lbAtualizandoEstoque: TLabel;
    imgEstoque: TImage;
    btnPesquisaProduto: TButton;
    PopupMenu1: TPopupMenu;
    Pesquisaporcdigo1: TMenuItem;
    Pesquisapornome1: TMenuItem;
    sbExcel: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure edtIdProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxQtdEstoqueClick(Sender: TObject);
    procedure edtQtdEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure cbxInformarPeriodoClick(Sender: TObject);
    procedure sbListarClick(Sender: TObject);
    procedure sbLimparFiltroClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbIniciarClick(Sender: TObject);
    procedure sbVerificarEstoqueClick(Sender: TObject);
    procedure sbAtualizarEstoqueClick(Sender: TObject);
    procedure Pesquisaporcdigo1Click(Sender: TObject);
    procedure Pesquisapornome1Click(Sender: TObject);
    procedure edtProdutoChange(Sender: TObject);
    procedure edtIdProdutoChange(Sender: TObject);
    procedure sbExcelClick(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetaDatas;
    procedure MontaComando;
    procedure HabAtEstoque;
    procedure VerificarEstoque;
    procedure AtualizarEstoque;
    procedure ProviderFlag;
    function BuscaNomeProdutoPorId : string;
    function BuscaIdProdutoPorNome : string;

  public
    { Public declarations }
  end;

var
  frmRelControleEstoque: TfrmRelControleEstoque;

implementation

{$R *.dfm}

uses uSetiUseful, uMess, uSetiConnects, uLocate;

procedure TfrmRelControleEstoque.AtualizarEstoque;
begin
    try
      if (SetiMensQuestions(0,'Confirma atualização do estoque? '+
      'Este procedimento pode ser demorado.')) then
      begin
        qConnects := TSetiConnects.Create;
        //Screen.Cursor := crHourGlass;
        lbAtualizandoEstoque.Visible := True;
        imgEstoque.Visible := True;
        Application.ProcessMessages;
        Sleep(10000);
        SetiSqlStoredProc.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        SetiSqlStoredProc.StoredProcName := 'SP_ESTOQUE_ATUALIZA';
        SetiSqlStoredProc.ExecProc;
        SetiMens(1,'Atualização do estoque concluída com sucesso.');
        //Screen.Cursor := crDefault;
      end;
    finally
        lbAtualizandoEstoque.Visible := False;
        imgEstoque.Visible := False;
        qConnects.Free;
    end;
end;

function TfrmRelControleEstoque.BuscaIdProdutoPorNome: string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      if edtProduto.Text <> '' then
      begin
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT FIRST 1 * FROM TBCADPRODUTOS P ');
        sql.sql.Add( ' WHERE P.NOME = '+QuotedStr(edtProduto.Text));
        sql.Open;
        if not sql.IsEmpty then
        begin
          Result := SQL.FieldByName('ID').AsString;
        end else
          edtProduto.Clear;
        qConnects.Free;
      end;
    finally
      sql.Free;
    end;
end;

function TfrmRelControleEstoque.BuscaNomeProdutoPorId: string;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      if edtIdProduto.Text <> '' then
      begin
        qConnects := TSetiConnects.Create;
        sql := TSQLQuery.Create(Nil);
        sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        sql.sql.Add( ' SELECT FIRST 1 * FROM TBCADPRODUTOS P ');
        sql.sql.Add( ' WHERE P.ID = '+edtIdProduto.Text);
        sql.Open;
        if not sql.IsEmpty then
        begin
          Result := SQL.FieldByName('NOME').AsString;
        end else
          edtIdProduto.Clear;
        qConnects.Free;
      end;
    finally
      sql.Free;
    end;
end;

procedure TfrmRelControleEstoque.cbxInformarPeriodoClick(Sender: TObject);
begin
  inherited;
    if cbxInformarPeriodo.Checked then
    begin
      lbDtIni.Enabled := True;
      lbDtFim.Enabled := True;
      dtpIni.Enabled := True;
      dtpFim.Enabled := True;
      SetaDatas;
    end else
    begin
      lbDtIni.Enabled := False;
      lbDtFim.Enabled := False;
      dtpIni.Enabled := False;
      dtpFim.Enabled := False;
      SetaDatas;
    end;
end;

procedure TfrmRelControleEstoque.cbxQtdEstoqueClick(Sender: TObject);
begin
  inherited;
    if cbxQtdEstoque.Checked then
    begin
      edtQtdEstoque.Color := clWindow;
      edtQtdEstoque.ReadOnly := False;
      edtQtdEstoque.Enabled := True;
      edtQtdEstoque.Text := '0';
    end else
    begin
      edtQtdEstoque.Color := clInfoBk;
      edtQtdEstoque.ReadOnly := True;
      edtQtdEstoque.Clear;
    end;
end;

procedure TfrmRelControleEstoque.edtIdProdutoChange(Sender: TObject);
begin
  inherited;
    if (edtIdProduto.Text = '') and (edtProduto.Text = '')then
      Exit;
    if qStatus = 1 then
    begin
      if edtIdProduto.Text <> '' then
        edtProduto.Text := BuscaNomeProdutoPorId else
      edtProduto.Clear;
    end;
end;

procedure TfrmRelControleEstoque.edtIdProdutoKeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TfrmRelControleEstoque.edtProdutoChange(Sender: TObject);
begin
  inherited;
    if (edtIdProduto.Text = '') and (edtProduto.Text = '')then
      Exit;
    if qStatus = 1 then
    begin
      if edtProduto.Text <> '' then
        edtIdProduto.Text := BuscaIdProdutoPorNome else
      edtIdProduto.Clear;
    end;
end;

procedure TfrmRelControleEstoque.edtQtdEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TfrmRelControleEstoque.FormShow(Sender: TObject);
begin
  inherited;
    Controle(0);
    HabAtEstoque;
end;

procedure TfrmRelControleEstoque.HabAtEstoque;
begin
  //sbAtualizarEstoque.Enabled := (qStatus = 0);
  //sbAtualizarEstoque.Visible := (qStatus = 0);
  pnEstoque.Visible :=  (qStatus = 0);
end;

procedure TfrmRelControleEstoque.MontaComando;
var
  vParam1,vParam2,vParam3,vParam4,vParam5,vParam6,vParam7,vParam8 : String;
  vDtIni, vDtFim : string;
begin
    try
      vParam1 := 'NULL';
      vParam2 := ',NULL';
      vParam3 := ',NULL';
      vParam4 := ',NULL';
      vParam5 := ',NULL';
      vParam6 := ',NULL';
      vParam7 := ',NULL';
      vParam8 := ',NULL';

      if edtIdProduto.Text <> '' then
        vParam1 := edtIdProduto.Text;
      case rgStatusPrd.ItemIndex of
        1 : vParam2 := ','+'''S''';
        2 : vParam2 := ','+'''N''';
      end;

      case rgMovimentaEstoque.ItemIndex of
        1 : vParam3 := ','+'''S''';
        2 : vParam3 := ','+'''N''';
      end;
      if cbxQtdEstoque.Checked then
        vParam4 := ','+edtQtdEstoque.Text;
      if cbxGp1.Checked then
        vParam5 := ',0';
      if cbxGp2.Checked then
        vParam6 := ',0';
      if cbxGp3.Checked then
        vParam7 := ',0';
      if cbxGp4.Checked then
        vParam8 := ',0';

      if cbxInformarPeriodo.Checked then
      begin
        vDtIni :=
          StringReplace(DateTimeToStr(dtpIni.Date),'/','.',[rfReplaceAll]);
        vDtFim :=
          StringReplace(DateTimeToStr(dtpFim.Date),'/','.',[rfReplaceAll]);
        //ShowMessage(vDtIni);
        //ShowMessage(vDtFim);
      end;

      sqlPadrao.SQL.Add('SELECT * FROM SP_REL_ESTOQUE ');
      sqlPadrao.SQL.Add('(                            ');
      sqlPadrao.SQL.Add('  '+vParam1                   );
      sqlPadrao.SQL.Add('  '+vParam2                   );
      sqlPadrao.SQL.Add('  '+vParam3                   );
      sqlPadrao.SQL.Add('  '+vParam4                   );
      sqlPadrao.SQL.Add('  '+vParam5                   );
      sqlPadrao.SQL.Add('  '+vParam6                   );
      sqlPadrao.SQL.Add('  '+vParam7                   );
      sqlPadrao.SQL.Add('  '+vParam8                   );
      sqlPadrao.SQL.Add(' )                           ');
      if cbxInformarPeriodo.Checked then
      begin
        sqlPadrao.SQL.Add('WHERE DTACADASTRO_ BETWEEN '
          +QuotedStr(vDtIni)+ ' AND ' +QuotedStr(vDtFim));
      end;
    finally

    end;
end;

procedure TfrmRelControleEstoque.Pesquisaporcdigo1Click(Sender: TObject);
begin
  inherited;
    try
    cLocate := TLocate.Create;
      edtIdProduto.Text :=
        cLocate.GetSearch(0,
                          NIL,
                          'TBCADPRODUTOS',
                          'ID',
                          'ID',
                          'ID',
                          '',
                          '',
                          '',
                          '',
                          'ORDER BY ID'
                          );
    finally
      cLocate.Free;
    end;
end;

procedure TfrmRelControleEstoque.Pesquisapornome1Click(Sender: TObject);
begin
  inherited;
    try
    cLocate := TLocate.Create;
      edtProduto.Text :=
        cLocate.GetSearch(0,
                          NIL,
                          'TBCADPRODUTOS',
                          'NOME',
                          'ID',
                          'NOME',
                          '',
                          '',
                          '',
                          '',
                          'ORDER BY NOME'
                          );
    finally

    end;
end;

procedure TfrmRelControleEstoque.ProviderFlag;
begin
    try
      if NOT dsPadrao.DataSet.IsEmpty then
      begin
        with dsPadrao.DataSet do
        begin
          FieldByName('ID_').DisplayLabel := 'Cod.Produto';
          FieldByName('NOME_').DisplayLabel := 'Nome Produto';
          FieldByName('DTACADASTRO_').DisplayLabel := 'Dta.Cadastro';
          FieldByName('VALORCUSTO_').DisplayLabel := 'Vlr.Custo';
          FieldByName('PRECOVENDA_').DisplayLabel := 'Preco de venda';
          FieldByName('MOVIMENTAESTOQUE_').DisplayLabel := 'Movimenta estoque';
          FieldByName('QTDESTOQUEINCIAL_').DisplayLabel
            := 'Qtd.Est.inicial prod.';
          FieldByName('QTDINICIALESTOQUE_').DisplayLabel
            := 'Qtd.inicial no estoque.';
          FieldByName('QTDENTRADA_').DisplayLabel := 'Qtd.Entrada';
          FieldByName('QTDSAIDA_').DisplayLabel := 'Qtd.Saida';
          FieldByName('QTDESTOQUE_').DisplayLabel := 'Qtd.Estoque';

          FieldByName('ID_').DisplayWidth := 5;
          FieldByName('NOME_').DisplayWidth := 70;
          FieldByName('DTACADASTRO_').DisplayWidth := 15;
          FieldByName('VALORCUSTO_').DisplayWidth := 15;
          FieldByName('PRECOVENDA_').DisplayWidth := 15;
          FieldByName('MOVIMENTAESTOQUE_').DisplayWidth := 10;
          FieldByName('QTDESTOQUEINCIAL_').DisplayWidth := 10;
          FieldByName('QTDINICIALESTOQUE_').DisplayWidth := 10;
          FieldByName('QTDENTRADA_').DisplayWidth := 10;
          FieldByName('QTDSAIDA_').DisplayWidth := 10;
          FieldByName('QTDESTOQUE_').DisplayWidth := 10;
        end;
      end;
    finally

    end;
end;

procedure TfrmRelControleEstoque.sbAtualizarEstoqueClick(Sender: TObject);
begin
  inherited;
  AtualizarEstoque
end;

procedure TfrmRelControleEstoque.sbCancelarClick(Sender: TObject);
begin
  inherited;
  HabAtEstoque;
end;

procedure TfrmRelControleEstoque.sbExcelClick(Sender: TObject);
var
  v : Boolean;
begin
  inherited;
    if NOT dsPadrao.DataSet.IsEmpty then
    begin
      v := True;
      if dsPadrao.DataSet.RecordCount > 100 then
      begin
        if NOT SetiMensQuestions(0,'Alta quantidade de registros, '+
                               'este procedimento pode demorar, '+
                               'deseja realmente gerar a planilha?') then
          v := False;
      end;
      if v then
        SetiExpDataSet(2,dsPadrao.DataSet);
    end;
end;

procedure TfrmRelControleEstoque.sbIniciarClick(Sender: TObject);
begin
  inherited;
  HabAtEstoque;
end;

procedure TfrmRelControleEstoque.sbLimparFiltroClick(Sender: TObject);
begin
  inherited;
  HabAtEstoque;
end;

procedure TfrmRelControleEstoque.sbListarClick(Sender: TObject);
begin
  if (cbxInformarPeriodo.Checked) and
    (NOT SetiUseFulSetiValidatePeriod(dtpIni.DateTime,dtpFim.DateTime)) then
  begin
    SetiMens(2,'Período selecionado é inválido.');
    Exit;
  end else
  begin
    PreparaDataSet;
    MontaComando;
    AbreDataSet;
    inherited;
    ProviderFlag;
  end;
  HabAtEstoque;
end;

procedure TfrmRelControleEstoque.sbSairClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfrmRelControleEstoque.SetaDatas;
begin
    dtpIni.DateTime := SetiUsefulSetiFirstLastDay(1,Now);
    dtpFim.DateTime := SetiUsefulSetiFirstLastDay(2,Now);
end;

procedure TfrmRelControleEstoque.sbVerificarEstoqueClick(Sender: TObject);
begin
  inherited;
    VerificarEstoque;
end;

procedure TfrmRelControleEstoque.VerificarEstoque;
var
  sql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.sql.Add( ' SELECT FIRST 1 * FROM TBESTOQUELOG E ');
      sql.Open;
      if not sql.IsEmpty then
      begin
        edtQdtProdCad.Text := sql.FieldByName('QTDPRODUTOSCAD').AsString;
        edtQtdProdEstoque.Text := sql.FieldByName('QTDPRODUTOSCAD').AsString;
        edtDtaUltimaAtEstoque.Text :=
          sql.FieldByName('DTAATUALIZACAO').AsString;
      end else
      begin
        edtQdtProdCad.Clear;
        edtQtdProdEstoque.Clear;
        edtDtaUltimaAtEstoque.Clear;
      end;
      qConnects.Free;
    finally
      sql.Free;
    end;
end;

end.
