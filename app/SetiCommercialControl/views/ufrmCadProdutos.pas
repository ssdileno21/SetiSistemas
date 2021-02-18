unit ufrmCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadrao, Vcl.ImgList, Vcl.Menus, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons, MIDASLIB;

type
  TfrmCadProdutos = class(TfrmCadPadrao)
    dbeNome: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbeCodInterno: TDBEdit;
    Label4: TLabel;
    dbeCodigoBarras: TDBEdit;
    Label5: TLabel;
    dbmDescricao: TDBMemo;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    dbeVlrCusto: TDBEdit;
    Label7: TLabel;
    dbeVlrDespesas: TDBEdit;
    Label8: TLabel;
    dbeVlrOutrasDespesas: TDBEdit;
    Label9: TLabel;
    dbeVlrCustoFinal: TDBEdit;
    Label10: TLabel;
    dbePercLucroRequerido: TDBEdit;
    Label11: TLabel;
    dbeVlrVendaSugerido: TDBEdit;
    Label12: TLabel;
    dbeVlrVendaUtilizado: TDBEdit;
    Label17: TLabel;
    dbePercComissao: TDBEdit;
    TabSheet3: TTabSheet;
    Label13: TLabel;
    dbePeso: TDBEdit;
    Label14: TLabel;
    dbeLargura: TDBEdit;
    Label15: TLabel;
    dbeAltura: TDBEdit;
    Label16: TLabel;
    dbeCumprimento: TDBEdit;
    Label18: TLabel;
    dbeUnidadeVendaUtilizada: TDBEdit;
    tbsParametros: TTabSheet;
    dbcbxMovEstoque: TDBCheckBox;
    dbcbxAlteraPrecoDurantVenda: TDBCheckBox;
    Label19: TLabel;
    dbeEstoqueInicial: TDBEdit;
    dbcStatus: TDBCheckBox;
    dbcbxUtilizarEmServicos: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure dbeVlrCustoExit(Sender: TObject);
    procedure dbeVlrDespesasExit(Sender: TObject);
    procedure dbeVlrOutrasDespesasExit(Sender: TObject);
    procedure dbePercLucroRequeridoExit(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaPreco;
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

uses uSetiConfig;

procedure TfrmCadProdutos.CalculaPreco;
var
  vVlrCusto, vVlrDespesas, vVlrOutrasDespesas,
  vVlrCustoFinal, vLucroRequerido : Double;
  vVlrFinal : Double;
begin
    vVlrCusto :=
      StrToFloatDef(
        StringReplace(dbeVlrCusto.Text,'R$','',[rfReplaceAll]),0.00);
    vVlrDespesas :=
      StrToFloatDef(
        StringReplace(dbeVlrDespesas.Text,'R$','',[rfReplaceAll]),0.00);
    vVlrOutrasDespesas :=
      StrToFloatDef(
        StringReplace(dbeVlrOutrasDespesas.Text,'R$','',[rfReplaceAll]),0.00);
    vLucroRequerido :=
      StrToFloatDef(
        StringReplace(dbePercLucroRequerido.Text,'R$','',[rfReplaceAll]),0.00);

    vVlrCustoFinal := (vVlrCusto + vVlrDespesas + vVlrOutrasDespesas);

    dbeVlrCustoFinal.Text := FloatToStr(vVlrCustoFinal);

    vVlrFinal := vVlrCustoFinal + (vVlrCustoFinal * vLucroRequerido / 100);

    dbeVlrVendaSugerido.Text := FloatToStr(vVlrFinal);
end;

procedure TfrmCadProdutos.dbePercLucroRequeridoExit(Sender: TObject);
begin
  inherited;
    CalculaPreco;
end;

procedure TfrmCadProdutos.dbeVlrCustoExit(Sender: TObject);
begin
  inherited;
    CalculaPreco;
end;

procedure TfrmCadProdutos.dbeVlrDespesasExit(Sender: TObject);
begin
  inherited;
    CalculaPreco;
end;

procedure TfrmCadProdutos.dbeVlrOutrasDespesasExit(Sender: TObject);
begin
  inherited;
    CalculaPreco;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
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
    SetCaptionForm('Cadastro de produtos');
    SetQryForm('SELECT                         '+
              '   ID                          '+
              '   ,NOME                       '+
              '   ,CODIGOINTERNO              '+
              '   ,IDFORNECEDOR               '+
              '   ,IDPRODUTOGRUPO             '+
              '   ,IDPRODUTOSUBGRUPO          '+
              '   ,CODIGOBARRAS               '+
              '   ,IDPRODUTOMARCA             '+
              '   ,IDPRODUTOMODELO            '+
              '   ,DESCRICAO                  '+
              '   ,VLRCUSTO                   '+
              '   ,VLRDESPESAS                '+
              '   ,VLRDESPESASOUTROS          '+
              '   ,VLRCUSTOFINAL              '+
              '   ,VLRLUCROREQUERIDO          '+
              '   ,VLRVENDASUGERIDO           '+
              '   ,VLRVENDAUTILIZADO          '+
              '   ,PESO                       '+
              '   ,LARGURA                    '+
              '   ,ALTURA                     '+
              '   ,COMPRIMENTO                '+
              '   ,COMISSAO                   '+
              '   ,UNIDADEVENDA               '+
              '   ,STATUS                     '+
              '   ,MOVIMENTAESTOQUE           '+
              '   ,ALTERAPRECONAVENDA         '+
              '   ,QTDESTOQUEINICIAL          '+
              '   ,UTILIZAREMSERVICOS         '+
              ' FROM TBCADPRODUTOS            '+
              ' WHERE 1 = 1                   ');
    SetTableForm('TBCADPRODUTOS');
    SetGenForm('GEN_ID_PRODUTO');
    SetKeyFieldForm('ID');
    SetListProviderForm('ID;NOME;DATCADASTRO;VLRCUSTO;VLRDESPESAS;'+
    'VLRDESPESASOUTROS;VLRCUSTOFINAL;VLRLUCROREQUERIDO;VLRVENDASUGERIDO;'+
    'VLRVENDAUTILIZADO;QTDESTOQUEINICIAL;STATUS');
    SetListMenuForm('ID;NOME');
    SetListMenuCaptionForm('Por Codigo;Por Nome');
    SetOrderByForm('ORDER BY ID');
    SetListRequiredFields('dbeNome');
    SetInfLabelCompName(dbeNome.Name);
    if (SConfig_Ex_TabParametros) then
    begin
      dbcbxMovEstoque.Tag := 0;
      dbcbxAlteraPrecoDurantVenda.Tag := 0;
      dbcbxUtilizarEmServicos.Tag := 0;
      Label19.Tag := 0;
      dbeEstoqueInicial.Tag := 0;
      dbcbxMovEstoque.Visible := True;
      dbcbxAlteraPrecoDurantVenda.Visible := True;
      dbcbxUtilizarEmServicos.Visible := True;
      Label19.Visible := True;
      dbeEstoqueInicial.Visible := True;
    end else
    begin
      dbcbxMovEstoque.Tag := 99;
      dbcbxAlteraPrecoDurantVenda.Tag := 99;
      dbcbxUtilizarEmServicos.Tag := 99;
      Label19.Tag := 99;
      dbeEstoqueInicial.Tag := 99;
      dbcbxMovEstoque.Visible := False;
      dbcbxAlteraPrecoDurantVenda.Visible := False;
      dbcbxUtilizarEmServicos.Visible := False;
      Label19.Visible := False;
      dbeEstoqueInicial.Visible := False;
    end;
  inherited;
end;

procedure TfrmCadProdutos.sbInsertClick(Sender: TObject);
begin
  inherited;
    dbcStatus.Checked := True;
end;

end.