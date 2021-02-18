unit ufrmCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadProdutos = class(TfrmStandardReg)
    cbx_Status: TCheckBox;
    Label1: TLabel;
    Edt_Id: TEdit;
    Label2: TLabel;
    edt_Nome: TEdit;
    Label3: TLabel;
    edt_CodigoInterno: TEdit;
    Label4: TLabel;
    edt_CodigoBarras: TEdit;
    Label6: TLabel;
    edt_ProdutoGrupo: TEdit;
    edt_IdProdutoGrupo: TEdit;
    TabSheet2: TTabSheet;
    Label10: TLabel;
    Mem_Descricao: TMemo;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    sbComposicaoAtualizar: TSpeedButton;
    sbComposicaoNovo: TSpeedButton;
    sbComposicaoExcluirProduto: TSpeedButton;
    Panel9: TPanel;
    Label7: TLabel;
    edt_IdProduto: TEdit;
    Label8: TLabel;
    edt_Quantidade: TEdit;
    Label9: TLabel;
    edt_Unidade: TEdit;
    Label11: TLabel;
    edt_Custo: TEdit;
    Label12: TLabel;
    edt_Total: TEdit;
    DBGrid1: TDBGrid;
    Label13: TLabel;
    edt_IdFornecedor: TEdit;
    edt_Fornecedor: TEdit;
    Label14: TLabel;
    edt_IdProdutoMarca: TEdit;
    edt_ProdutoMarca: TEdit;
    Label15: TLabel;
    edt_IdProdutoModelo: TEdit;
    edt_ProdutoModelo: TEdit;
    TabSheet6: TTabSheet;
    rgr_MovimentaEstoque: TRadioGroup;
    rgr_HabNf: TRadioGroup;
    rgr_PossuiComposicao: TRadioGroup;
    rgr_UsoConsumo: TRadioGroup;
    cbx_VendidoSeparadamente: TCheckBox;
    cbx_ComercializaPdv: TCheckBox;
    cbx_AlteraPrecoNaVenda: TCheckBox;
    Label5: TLabel;
    edt_Peso: TEdit;
    Label17: TLabel;
    edt_Largura: TEdit;
    Label18: TLabel;
    edt_Altura: TEdit;
    Label19: TLabel;
    edt_Comprimento: TEdit;
    Label16: TLabel;
    edt_Comissao: TEdit;
    Label23: TLabel;
    edt_UnidadeVenda: TEdit;
    Label24: TLabel;
    edt_VlrCusto: TEdit;
    Label25: TLabel;
    edt_VlrDespesas: TEdit;
    Label26: TLabel;
    edt_VlrDespesasOutros: TEdit;
    Label27: TLabel;
    edt_CustoFinal: TEdit;
    Label20: TLabel;
    edt_VlrLucroRequerido: TEdit;
    Label21: TLabel;
    edt_VlrVendaSugerido: TEdit;
    Label22: TLabel;
    edt_VlrVendaUtilizado: TEdit;
    Edit31: TEdit;
    Label28: TLabel;
    Edit32: TEdit;
    Label29: TLabel;
    Edit33: TEdit;
    Edit34: TEdit;
    Label30: TLabel;
    Edit35: TEdit;
    Edit36: TEdit;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    Label31: TLabel;
    Edit37: TEdit;
    Edit38: TEdit;
    Label32: TLabel;
    Edit39: TEdit;
    Edit40: TEdit;
    Label33: TLabel;
    Edit41: TEdit;
    Edit42: TEdit;
    Label34: TLabel;
    Edit43: TEdit;
    Edit44: TEdit;
    Label35: TLabel;
    Edit45: TEdit;
    Edit46: TEdit;
    Label36: TLabel;
    edt_IdProdutoSubGrupo: TEdit;
    edt_ProdutoSubGrupo: TEdit;
    sbBuscaFornecedor: TButtonPen;
    sbBuscaProdutoGrupo: TButtonPen;
    sbProdutoSubGrupo: TButtonPen;
    sbProdutoMarca: TButtonPen;
    sbProdutoModelo: TButtonPen;
    ButtonPen12: TButtonPen;
    ButtonPen13: TButtonPen;
    ButtonPen14: TButtonPen;
    ButtonPen15: TButtonPen;
    ButtonPen16: TButtonPen;
    ButtonPen17: TButtonPen;
    ButtonPen18: TButtonPen;
    ButtonPen19: TButtonPen;
    sbIdProduto: TButtonPen;
    sbUnidadeVenda: TButtonPen;
    sbUnidade: TButtonPen;
    procedure FormCreate(Sender: TObject);
    procedure bpSearchClick(Sender: TObject);
    procedure edt_IdFornecedorChange(Sender: TObject);
    procedure edt_FornecedorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.bpSearchClick(Sender: TObject);
begin
  fnSearchParamFS8F1('TBCADPRODUTOS', 'ID',Caption);
  inherited;
end;

procedure TfrmCadProdutos.edt_FornecedorChange(Sender: TObject);
begin
    prFieldIdDescValueFS8F1( 0,
                         'TBCADFORNECEDOR',
                         'ID',
                         'NOMEFORNECEDOR',
                         edt_IdFornecedor,
                         edt_IdFornecedor);
  inherited;
end;

procedure TfrmCadProdutos.edt_IdFornecedorChange(Sender: TObject);
begin
    prFieldIdDescValueFS8F1(  1,
                          'TBCADFORNECEDOR',
                          'ID',
                          'NOMEFORNECEDOR',
                          edt_IdFornecedor,
                          edt_Fornecedor);
  inherited;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
    SetTableNameFS8F1('TBCADPRODUTOS');
    SetFormNameFS8F1(Self.Name);
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
