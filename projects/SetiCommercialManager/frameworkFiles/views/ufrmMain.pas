unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, uSetiFramework,
  Vcl.StdCtrls, VCLTee.TeCanvas, Vcl.Grids, Vcl.Outline, Vcl.Samples.DirOutln,
  Vcl.TabNotBk, VCLTee.TeePenDlg, Vcl.ButtonGroup, Vcl.ImgList, uMess,
  MIDASLIB, EAppProt, uInitialSettingControl, ShellAPI, uMainControl,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Data.Bind.Components;

type
  TfrmMain = class(TForm)
    mmMain: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    CadastroPadro1: TMenuItem;
    pHeader: TPanel;
    pgcMain: TPageControl;
    FormPadrao1: TMenuItem;
    pLeftBar: TPanel;
    pMenuLeft: TPanel;
    Splitter1: TSplitter;
    SpeedButton3: TSpeedButton;
    Visualizar1: TMenuItem;
    PainelEsquerdo1: TMenuItem;
    sbFooter: TStatusBar;
    Rodap1: TMenuItem;
    Rodap2: TMenuItem;
    Ferramentas1: TMenuItem;
    Calculadora1: TMenuItem;
    Ajuda1: TMenuItem;
    ManualSetiFramework1: TMenuItem;
    Sobre1: TMenuItem;
    SetiSistemas1: TMenuItem;
    ASetiSistemas1: TMenuItem;
    Contato1: TMenuItem;
    ImgMenuList: TImageList;
    este1: TMenuItem;
    pgMenuLeft: TPageControl;
    tsMenuLeft: TTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ppmHeader: TPopupMenu;
    Ocultar1: TMenuItem;
    ppmFooter: TPopupMenu;
    Ocultar2: TMenuItem;
    SpeedButton5: TSpeedButton;
    Desenvolvedor1: TMenuItem;
    CadastrodeTelas1: TMenuItem;
    EvAppProtect1: TEvAppProtect;
    ESTE2: TMenuItem;
    estePesquisa1: TMenuItem;
    estePesquisa21: TMenuItem;
    Panel3: TPanel;
    Image2: TImage;
    tvMenu: TTreeView;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Grupos1: TMenuItem;
    Etiquetas1: TMenuItem;
    Marcas1: TMenuItem;
    Modelos1: TMenuItem;
    Servios1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    ransportadores1: TMenuItem;
    N1: TMenuItem;
    Oramentos1: TMenuItem;
    OSOrdemdeservios1: TMenuItem;
    N3: TMenuItem;
    Movimentaes1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    Vendas1: TMenuItem;
    PDV1: TMenuItem;
    Caixas1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes2: TMenuItem;
    Ajustes1: TMenuItem;
    ransferncias1: TMenuItem;
    Cotaes1: TMenuItem;
    PedidodeCompras1: TMenuItem;
    N4: TMenuItem;
    Financeiro1: TMenuItem;
    Contasapagar1: TMenuItem;
    Contasareceber1: TMenuItem;
    Fluxodecaixa1: TMenuItem;
    Boletosbancrios1: TMenuItem;
    Caixas2: TMenuItem;
    Bancos1: TMenuItem;
    Contasbancrias1: TMenuItem;
    Formasdepagamento1: TMenuItem;
    Cadastrodecontas1: TMenuItem;
    Movimentaesbancrias1: TMenuItem;
    Cheques1: TMenuItem;
    ransferncias2: TMenuItem;
    N5: TMenuItem;
    Notasfiscais1: TMenuItem;
    GerenciarNFe1: TMenuItem;
    GerenciarNFSe1: TMenuItem;
    GerenciarNFCe1: TMenuItem;
    Operaes1: TMenuItem;
    N6: TMenuItem;
    Atendimentos1: TMenuItem;
    Atendimentos2: TMenuItem;
    Agendamentos1: TMenuItem;
    Operaes2: TMenuItem;
    N7: TMenuItem;
    Gerenciar1: TMenuItem;
    Configuraesgerais1: TMenuItem;
    Plano1: TMenuItem;
    Cadastrodeusurios1: TMenuItem;
    Cadastrodeempresa1: TMenuItem;
    Empresa1: TMenuItem;
    Cadastrodelojas1: TMenuItem;
    AvisosAlertas1: TMenuItem;
    Certificadodigital1: TMenuItem;
    N2: TMenuItem;
    Relatrios1: TMenuItem;
    Agenda1: TMenuItem;
    ImprtarXML1: TMenuItem;
    Certificadodigital2: TMenuItem;
    Naturezadeoperaes1: TMenuItem;
    ributaes1: TMenuItem;
    ICMS1: TMenuItem;
    IPI1: TMenuItem;
    PIS1: TMenuItem;
    COFINS1: TMenuItem;
    NCM1: TMenuItem;
    Atividadesdeservios1: TMenuItem;
    Formasdeatendimento1: TMenuItem;
    Assuntos1: TMenuItem;
    Situaes1: TMenuItem;
    Controledepermisses1: TMenuItem;
    Usurios1: TMenuItem;
    Grupos2: TMenuItem;
    Pessoal1: TMenuItem;
    N8: TMenuItem;
    Funcionrios1: TMenuItem;
    Funes1: TMenuItem;
    Comisses1: TMenuItem;
    Comisses2: TMenuItem;
    SubGrupo1: TMenuItem;
    pButtonsRight: TPanel;
    pTitle: TPanel;
    sbLast: TSpeedButton;
    sbNext: TSpeedButton;
    Permisses1: TMenuItem;
    sbClose: TSpeedButton;
    ppmTopRightBarButton: TPopupMenu;
    Fechar1: TMenuItem;
    Button1: TButton;
    sbFirst: TSpeedButton;
    sbPrior: TSpeedButton;
    SpeedButton7: TSpeedButton;
    tsOne: TTabSheet;
    Panel1: TPanel;
    Image1: TImage;
    pnGreetings: TPanel;
    Logomarca1: TMenuItem;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    procedure CadastroPadro1Click(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormPadrao1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PainelEsquerdo1Click(Sender: TObject);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure Rodap1Click(Sender: TObject);
    procedure Ocultar1Click(Sender: TObject);
    procedure Ocultar2Click(Sender: TObject);
    procedure Rodap2Click(Sender: TObject);
    procedure este1Click(Sender: TObject);
    procedure ControledeForms1Click(Sender: TObject);
    procedure CadastrodeTelas1Click(Sender: TObject);
    procedure ESTE2Click(Sender: TObject);
    procedure estePesquisa1Click(Sender: TObject);
    procedure estePesquisa21Click(Sender: TObject);
    procedure tvMenuClick(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Modelos1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure ransportadores1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure OSOrdemdeservios1Click(Sender: TObject);
    procedure PedidodeVenda1Click(Sender: TObject);
    procedure Movimentaes2Click(Sender: TObject);
    procedure Ajustes1Click(Sender: TObject);
    procedure PedidodeCompras1Click(Sender: TObject);
    procedure Contasapagar1Click(Sender: TObject);
    procedure Contasareceber1Click(Sender: TObject);
    procedure Fluxodecaixa1Click(Sender: TObject);
    procedure Boletosbancrios1Click(Sender: TObject);
    procedure Caixas2Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Contasbancrias1Click(Sender: TObject);
    procedure Formasdepagamento1Click(Sender: TObject);
    procedure Cadastrodecontas1Click(Sender: TObject);
    procedure ransferncias2Click(Sender: TObject);
    procedure Configuraesgerais1Click(Sender: TObject);
    procedure Grupos2Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Logomarca1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Funes1Click(Sender: TObject);
    procedure Comisses1Click(Sender: TObject);
    procedure Comisses2Click(Sender: TObject);
    procedure pgcMainChange(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
      FInitialSettingControl : TInitialSettingControl;
      FUsuLogin : string;
      FUsuId : Integer;
      FUsuNome : string;
      FMainControl : TMainControl;
      procedure TagFormCreate(Tag:Integer);
      procedure MainMenuOnClick(Sender: TObject);
  public
    { Public declarations }
  published
    property cInitialSettingControl : TInitialSettingControl
      read FInitialSettingControl write FInitialSettingControl;
    property qUsuLogin : string read FUsuLogin write FUsuLogin;
    property qUsuId : Integer read FUsuId write FUsuId;
    property qUsuNome : string read FUsuNome write FUsuNome;
    property cMainControl : TMainControl read FMainControl write FMainControl;
  end;

var
  frmMain: TfrmMain;
  cSetiFramework : TSetiFramework;
  ipag : TTabSheet;

implementation

{$R *.dfm}

uses ufrmStandardReg, ufrmTesteHeranca, ufrmForms, ufrmLogin,
ufrmTestePesquisa, ufrmTestePesquisa2, ufrmGerCadUsuarios, ufrmDpCadFuncionario,
ufrmCadProdutos, uSetiConfig, ufrmCadGrupoProdutos, ufrmCadMarcasProdutos,
  ufrmCadModeloProdutos, ufrmCadServicos, ufrmCadClientes, ufrmCadFornecedor,
  ufrmCadTransportadoras, ufrmOrcamentos, ufrmOrdemServicos, ufrmPedidoVenda,
  ufrmEstoqueAjuste, ufrmPedidoCompra, ufrmFinContasPagar, ufrmFinContasReceber,
  ufrmFinFluxoCaixa, ufrmFinBancos, ufrmFinContasBancarias, ufrmFinFormasPagto,
  ufrmFinContas, ufrmGerConfiguracoesGerais, ufrmGerCadGrupos,
  ufrmGerCadEmpresa, ufrmDpCadCargos, ufrmDpCadComissoes, ufrmDpCadFuncoes,
  ufrmInitialSetting, uSetiUseful, ufrmMasterSearchScreen;

procedure TfrmMain.Ajustes1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Bancos1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Boletosbancrios1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(RadioGroup1.ItemIndex));
end;

procedure TfrmMain.Cadastrodecontas1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.CadastrodeTelas1Click(Sender: TObject);
begin
    try
    frmForms := TfrmForms.Create(Nil);
    frmForms.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.CadastroPadro1Click(Sender: TObject);
begin
    try
      frmStandardReg := TfrmStandardReg.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmStandardReg);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Caixas2Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Comisses1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Comisses2Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Configuraesgerais1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Contasapagar1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Contasareceber1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Contasbancrias1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.ControledeForms1Click(Sender: TObject);
begin
    try
      frmForms := TfrmForms.Create(Nil);
      frmForms.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Empresa1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.este1Click(Sender: TObject);
begin
    try
      frmTesteHeranca := TfrmTesteHeranca.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmTesteHeranca);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.ESTE2Click(Sender: TObject);
var
    I: word;
begin
  for I:=0 to application.ComponentCount-1 do
  begin
    if application.Components[I].ClassParent = TForm then
      showmessage((application.Components[I] as TForm).ClassName);
  end;
end;

procedure TfrmMain.estePesquisa1Click(Sender: TObject);
begin
    try
    frmTestePesquisa := TfrmTestePesquisa.Create(NIL);
    frmTestePesquisa.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end;

end;

procedure TfrmMain.estePesquisa21Click(Sender: TObject);
begin
    try
    frmTestePesquisa2 := TfrmTestePesquisa2.Create(NIL);
    frmTestePesquisa2.Show;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Etiquetas1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Fluxodecaixa1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Formasdepagamento1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
    if (NewWidth <= 1200) then
      NewWidth := 1200;
    if (NewHeight <= 700) then
      NewHeight := 700;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
      Self := Nil;
      Action := caFree;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.TagFormCreate(Tag: Integer);
begin
    try
        //Cadastro de produtos
        if (Tag = 1011) then
        begin
          frmCadProdutos := TfrmCadProdutos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadProdutos);
        end else
        //Cadastro de grupos de produtos
        if (Tag = 1012) then
        begin
          frmCadGrupoProdutos := TfrmCadGrupoProdutos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadGrupoProdutos);
        end else
        //Cadastro de marcas de produtos
        if (Tag = 1015) then
        begin
          frmCadMarcasProdutos := TfrmCadMarcasProdutos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadMarcasProdutos);
        end else
        //Cadastro de modelos de produtos
        if (Tag = 1016) then
        begin
          frmCadModeloProdutos := TfrmCadModeloProdutos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadModeloProdutos);
        end else
        //Cadastro de servi�os
        if (Tag = 102) then
        begin
          frmCadServicos := TfrmCadServicos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadServicos);
        end else
        //Cadastro de clientes
        if (Tag = 103) then
        begin
          frmCadClientes := TfrmCadClientes.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadClientes);
        end else
        //Cadastro de fornecedores
        if (Tag = 104) then
        begin
          frmCadFornecedor := TfrmCadFornecedor.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadFornecedor);
        end else
        //Cadastro de transportadoras
        if (Tag = 105) then
        begin
          frmCadTransportadoras := TfrmCadTransportadoras.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmCadTransportadoras);
        end else
        //Or�amentos
        if (Tag = 2) then
        begin
          frmOrcamentos := TfrmOrcamentos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmOrcamentos);
        end else
        //Ordem de servi�os
        if (Tag = 3) then
        begin
          frmOrdemServicos := TfrmOrdemServicos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmOrdemServicos);
        end else
        //Movimenta��o -> Pedido de venda
        if (Tag = 401) then
        begin
          frmPedidoVenda := TfrmPedidoVenda.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmPedidoVenda);
        end else
        //Movimenta��o -> Estoque -> Ajuste
        if (Tag = 4032) then
        begin
          frmEstoqueAjuste := TfrmEstoqueAjuste.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmEstoqueAjuste);
        end else
        //Movimenta��o -> Estoque -> Pedido de compra
        if (Tag = 4035) then
        begin
          frmPedidoCompra := TfrmPedidoCompra.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmPedidoCompra);
        end else
        //Financeiro -> Contas a pagar
        if (Tag = 501) then
        begin
          frmFinContasPagar := TfrmFinContasPagar.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinContasPagar);
        end else
        //Financeiro -> Contas a receber
        if (Tag = 502) then
        begin
          frmFinContasReceber := TfrmFinContasReceber.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinContasReceber);
        end else
        //Financeiro -> Fluxo de caixa
        if (Tag = 503) then
        begin
          frmFinFluxoCaixa := TfrmFinFluxoCaixa.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinFluxoCaixa);
        end else
        //Financeiro -> Bancos
        if (Tag = 506) then
        begin
          frmFinBancos := TfrmFinBancos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinBancos);
        end else
        //Financeiro -> Contas banc�rias
        if (Tag = 507) then
        begin
          frmFinContasBancarias := TfrmFinContasBancarias.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinContasBancarias);
        end else
        //Financeiro -> Formas de pagamento
        if (Tag = 508) then
        begin
          frmFinFormasPagto := TfrmFinFormasPagto.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinFormasPagto);
        end else
        //Financeiro -> Cadastro de contas
        if (Tag = 509) then
        begin
          frmFinContas := TfrmFinContas.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmFinContas);
        end else
        //Gerenciar -> Configura��es gerais
        if (Tag = 509) then
        begin
          frmGerConfiguracoesGerais := TfrmGerConfiguracoesGerais.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmGerConfiguracoesGerais);
        end else
        //Gerenciar -> Cadastro de usu�rios -> Usu�rios
        if (Tag = 9031) then
        begin
          frmGerCadUsuarios := TfrmGerCadUsuarios.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmGerCadUsuarios);
        end else
        //Gerenciar -> Cadastro de usu�rios -> Grupos
        if (Tag = 9032) then
        begin
          frmGerCadGrupos := TfrmGerCadGrupos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmGerCadGrupos);
        end else
        //Gerenciar -> Cadastro de empresa -> Empresa
        if (Tag = 9051) then
        begin
          frmGerCadEmpresa := TfrmGerCadEmpresa.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmGerCadEmpresa);
        end else
        //Departamento pessoal -> Funcion�rios
        if (Tag = 10001) then
        begin
          frmDpCadFuncionario := TfrmDpCadFuncionario.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmDpCadFuncionario);
        end;
        //Departamento pessoal -> Cargos
        if (Tag = 10002) then
        begin
          frmDpCadCargos := TfrmDpCadCargos.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmDpCadCargos);
        end;
        //Departamento pessoal -> Fun��es
        if (Tag = 10003) then
        begin
          frmDpCadFuncoes := TfrmDpCadFuncoes.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmDpCadFuncoes);
        end;
        //Departamento pessoal -> Comiss�es
        if (Tag = 10004) then
        begin
          frmDpCadComissoes := TfrmDpCadComissoes.Create(Nil);
          cSetiFramework.SetiFramNewTabSheet(frmDpCadComissoes);
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  pUsuNome : string;
  pFrase : string;

begin
    try
      Caption := SConfigSoftwareCaption;
      pTitle.Caption := SConfigClientTitle;
      frmLogin := TfrmLogin.Create(Application);
      if (frmLogin.ShowModal = mrOk) then
      begin
        qUsuLogin := frmLogin.edtUserName.Text;
        frmLogin.Hide;
        cSetiFramework := TSetiFramework.Create;
        cMainControl := TMainControl.Create(Self);
        cMainControl.SetarUsuarioLogado(Self);
        FUsuLogin := cMainControl.GetUsuarioLogadoLogin;
        FUsuId := cMainControl.GetUsuarioLogadoId;
        FUsuNome := cMainControl.GetUsuarioLogadoNome;
        pnGreetings.Caption := 'BEM VINDO '+ qUsuNome;

      end else
      Application.Terminate;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.FormPadrao1Click(Sender: TObject);
begin
    try
      {frmPattern := TfrmPattern.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmPattern);}
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    try
        pTitle.Width := (pMenuLeft.Width);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Fornecedores1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Funcionrios1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Funes1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Grupos1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Grupos2Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Logomarca1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.MainMenuOnClick(Sender: TObject);
begin
    try
      TagFormCreate(TMenuItem(Sender).Tag);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Marcas1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Modelos1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Movimentaes2Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Ocultar1Click(Sender: TObject);
begin
    try
      pHeader.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Ocultar2Click(Sender: TObject);
begin
    try
        sbFooter.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Oramentos1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.OSOrdemdeservios1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.PainelEsquerdo1Click(Sender: TObject);
begin
    try
      pMenuLeft.Visible := True;
      pLeftBar.Visible := False;
      pLeftBar.Width := cSetiFramework.SetiFramGetComponentsInfo(
        frmMain.Name,pMenuLeft.Name,'WIDTH');
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.PedidodeCompras1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.PedidodeVenda1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.pgcMainChange(Sender: TObject);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Produtos2Click(Sender: TObject);
begin 
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.ransferncias2Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.ransportadores1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

procedure TfrmMain.Rodap1Click(Sender: TObject);
begin
    try
        pHeader.Visible := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Rodap2Click(Sender: TObject);
begin
    try
        sbFooter.Visible := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbCloseClick(Sender: TObject);
begin
    try
      cSetiFramework.SetiFramCloseTabSheet(pgcMain);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbFirstClick(Sender: TObject);
begin
    try
      if (pgcMain.PageCount > 1) then
        if (pgcMain.ActivePageIndex <> 0) then
          pgcMain.ActivePageIndex := 1;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbLastClick(Sender: TObject);
var
  c : Integer;
begin
    try
      c := pgcMain.PageCount -1;
      pgcMain.ActivePageIndex := c;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbNextClick(Sender: TObject);
var
  c : Integer;
begin
    try
      c := pgcMain.PageCount -1;
      if pgcMain.ActivePageIndex <> c then
            pgcMain.SelectNextPage(True);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.sbPriorClick(Sender: TObject);
var
  c : Integer;
begin
    try
      c := (pgcMain.PageCount -1) - (pgcMain.PageCount -1);
      if pgcMain.ActivePageIndex <> c then
            if (pgcMain.ActivePageIndex <> 1) then
                pgcMain.SelectNextPage(false,false) ;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Servios1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
    try
      pLeftBar.Visible := True;
      pMenuLeft.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
    try
      pLeftBar.Visible := False;
      pMenuLeft.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
    try
      pMenuLeft.Visible := True;
      pLeftBar.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Splitter1CanResize(Sender: TObject; var NewSize: Integer;
  var Accept: Boolean);
begin
    if (NewSize <= (cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pMenuLeft.Name,'WIDTH')/2)) then
      NewSize := Round(cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pMenuLeft.Name,'WIDTH')/2);
    if NewSize > (pHeader.Width - pButtonsRight.Width) then
      NewSize := (pHeader.Width - pButtonsRight.Width + 5);
    pTitle.Width := NewSize;
end;

procedure TfrmMain.tvMenuClick(Sender: TObject);
begin
    try
        TagFormCreate(tvMenu.Selected.StateIndex);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmMain.Usurios1Click(Sender: TObject);
begin
    try
        MainMenuOnClick(Sender);
    except on e : exception do
        SetiMens(0,e.Message);
    end;    
end;

end.
