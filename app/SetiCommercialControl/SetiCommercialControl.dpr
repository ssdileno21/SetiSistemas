program SetiCommercialControl;

uses
  Vcl.Forms,
  udmGen in 'dm\udmGen.pas' {dmGen: TDataModule},
  uSetiConnects in 'class\uSetiConnects.pas',
  uSetiConfig in 'class\uSetiConfig.pas',
  udmMasterDataModule in 'dm\udmMasterDataModule.pas' {dmMasterDataModule: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  ufrmCadPadraoReduzido in 'views\ufrmCadPadraoReduzido.pas' {frmCadPadraoReduzido},
  ufrmLogin in 'views\ufrmLogin.pas' {frmLogin},
  udmLogin in 'dm\udmLogin.pas' {dmLogin: TDataModule},
  ufrmCadRotas in 'views\ufrmCadRotas.pas' {frmCadRotas},
  ufrmCadRegioes in 'views\ufrmCadRegioes.pas' {frmCadRegioes},
  ufrmCadSetores in 'views\ufrmCadSetores.pas' {frmCadSetores},
  ufrmControleVendaManual in 'views\ufrmControleVendaManual.pas' {frmControleVendaManual},
  uLocateDAO in 'class\uLocateDAO.pas',
  udmLocate in 'dm\udmLocate.pas' {dmLocate: TDataModule},
  uLocate in 'class\uLocate.pas',
  ufrmToLocate in 'views\ufrmToLocate.pas' {frmToLocate},
  udmControleVendaManual in 'dm\udmControleVendaManual.pas' {dmControleVendaManual: TDataModule},
  ufrmMain in 'views\ufrmMain.pas' {frmMain},
  ufrmCadFormaPagto in 'views\ufrmCadFormaPagto.pas' {frmCadFormaPagto},
  uQrpControleVendaManual in 'qrps\uQrpControleVendaManual.pas' {QrpControleVendaManual},
  uQrpControleVendaManualFicha in 'qrps\uQrpControleVendaManualFicha.pas' {qrpControleVendaManualFicha},
  ufrmGetDate in 'views\ufrmGetDate.pas' {frmGetDate},
  uRepVendaManual in 'rep\uRepVendaManual.pas' {RepVendaManual},
  ufrmStanRec in 'her\ufrmStanRec.pas' {frmStanRec},
  ufrmccnCadEmpresa in 'views\ufrmccnCadEmpresa.pas' {frmccnCadEmpresa},
  ufrmccnCadUsuarios in 'views\ufrmccnCadUsuarios.pas' {frmccnCadUsuarios},
  ufrmccnCadFuncionarios in 'views\ufrmccnCadFuncionarios.pas' {frmccnCadFuncionarios},
  jb in 'class\jb.pas',
  ufrmccnCadProdutos in 'views\ufrmccnCadProdutos.pas' {frmccnCadProdutos},
  ufrmccnCadClientes in 'views\ufrmccnCadClientes.pas' {frmccnCadClientes},
  uSetiUseful in 'class\uSetiUseful.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
