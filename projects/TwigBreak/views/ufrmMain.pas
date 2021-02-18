unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.ImgList, Vcl.Buttons, Vcl.Menus,
  Vcl.Imaging.pngimage, EAppProt;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    imgButtons: TImageList;
    Panel2: TPanel;
    ImageList1: TImageList;
    Panel6: TPanel;
    Panel4: TPanel;
    Panel10: TPanel;
    sbFornecedores: TSpeedButton;
    Panel11: TPanel;
    sbCompras: TSpeedButton;
    Panel12: TPanel;
    sbEstoque: TSpeedButton;
    Panel13: TPanel;
    Panel9: TPanel;
    SpeedButton4: TSpeedButton;
    Panel16: TPanel;
    SpeedButton6: TSpeedButton;
    Panel15: TPanel;
    sbFuncionarios: TSpeedButton;
    Panel5: TPanel;
    Panel7: TPanel;
    sbClientes: TSpeedButton;
    Panel3: TPanel;
    sbProdutos: TSpeedButton;
    Panel8: TPanel;
    sbVendas: TSpeedButton;
    EvAppProtect1: TEvAppProtect;
    Panel14: TPanel;
    Panel17: TPanel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Ferramentas1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos2: TMenuItem;
    Clientes1: TMenuItem;
    Entradas1: TMenuItem;
    Compras1: TMenuItem;
    Sadas1: TMenuItem;
    Vendas1: TMenuItem;
    Servios1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    Faturamento1: TMenuItem;
    Ferramentas2: TMenuItem;
    Backup1: TMenuItem;
    Ajuda1: TMenuItem;
    Quemsomos1: TMenuItem;
    Licena1: TMenuItem;
    Manutenosistema1: TMenuItem;
    ManutenoVendas1: TMenuItem;
    ManutenoVendas2: TMenuItem;
    Cadastrodeprodutos1: TMenuItem;
    Marcas1: TMenuItem;
    s1: TMenuItem;
    Defeitos1: TMenuItem;
    Relatrios1: TMenuItem;
    Financeiro1: TMenuItem;
    Usurios1: TMenuItem;
    procedure sbProdutosClick(Sender: TObject);
    procedure sbClientesClick(Sender: TObject);
    procedure sbFornecedoresClick(Sender: TObject);
    procedure sbFuncionariosClick(Sender: TObject);
    procedure sbComprasClick(Sender: TObject);
    procedure sbVendasClick(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Cadastrodeprodutos1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure s1Click(Sender: TObject);
    procedure Defeitos1Click(Sender: TObject);
    procedure sbEstoqueClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Financeiro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uMess, uSetiConfig, ufrmCadFornecedores,
  ufrmCadFuncionarios, ufrmCadProdutos, ufrmCadClientes, ufrmCadCompras,
  ufrmVendas, ufrmCadProdutoMarca, ufrmCadOrdemServicos, ufrmCadProdutoModelo,
  ufrmCadProdutoDefeito, ufrmRelControleEstoque, ufrmRelFaturamento,
  ufrmFaturamentoPainel;

procedure TfrmMain.sbProdutosClick(Sender: TObject);
begin
    try
      frmCadProdutos := TfrmCadProdutos.Create(Nil);
      frmCadProdutos.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.sbComprasClick(Sender: TObject);
begin
    try
      frmCadCompras := TfrmCadCompras.Create(Nil);
      frmCadCompras.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.sbEstoqueClick(Sender: TObject);
begin
    try
      frmRelControleEstoque := TfrmRelControleEstoque.Create(Nil);
      frmRelControleEstoque.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.sbVendasClick(Sender: TObject);
begin
    try
      frmVendas := TfrmVendas.Create(Nil);
      frmVendas.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.SpeedButton4Click(Sender: TObject);
begin
    try
      frmCadOrdemServicos := TfrmCadOrdemServicos.Create(Nil);
      frmCadOrdemServicos.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
begin
    try
      frmFaturamentoPainel := TfrmFaturamentoPainel.Create(Nil);
      frmFaturamentoPainel.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.Vendas1Click(Sender: TObject);
begin
    sbVendasClick(Self);
end;

procedure TfrmMain.sbFornecedoresClick(Sender: TObject);
begin
    try
      frmCadFornecedores := TfrmCadFornecedores.Create(Nil);
      frmCadFornecedores.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.sbFuncionariosClick(Sender: TObject);
begin
    try
      frmCadFuncionarios := TfrmCadFuncionarios.Create(Nil);
      frmCadFuncionarios.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.Cadastrodeprodutos1Click(Sender: TObject);
begin
    sbProdutosClick(Self);
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
    sbClientesClick(Self);
end;

procedure TfrmMain.Compras1Click(Sender: TObject);
begin
    sbComprasClick(Self);
end;

procedure TfrmMain.Defeitos1Click(Sender: TObject);
begin
    try
      frmCadProdutoDefeito := TfrmCadProdutoDefeito.Create(Nil);
      frmCadProdutoDefeito.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Financeiro1Click(Sender: TObject);
begin
    try
      frmrelFaturamento := TfrmrelFaturamento.Create(Nil);
      frmrelFaturamento.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TfrmMain.Fornecedores1Click(Sender: TObject);
begin
    sbFornecedoresClick(Self);
end;

procedure TfrmMain.Marcas1Click(Sender: TObject);
begin
    try
      frmCadProdutoMarca := TfrmCadProdutoMarca.Create(Nil);
      frmCadProdutoMarca.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Produtos1Click(Sender: TObject);
begin
    sbFuncionariosClick(Self);
end;

procedure TfrmMain.s1Click(Sender: TObject);
begin
    try
      frmCadProdutoModelo := TfrmCadProdutoModelo.Create(Nil);
      frmCadProdutoModelo.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbClientesClick(Sender: TObject);
begin
    try
      frmCadClientes := TfrmCadClientes.Create(Nil);
      frmCadClientes.ShowModal;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
