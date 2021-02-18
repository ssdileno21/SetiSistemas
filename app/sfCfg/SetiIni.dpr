program SetiIni;

uses
  Vcl.Forms,
  udmMain in 'dm\udmMain.pas' {dmMain: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uLocate in '..\sfCls\uLocate.pas',
  uLocateDAO in '..\sfCls\uLocateDAO.pas',
  uMess in '..\sfCls\uMess.pas',
  uSetiConfig in '..\sfCls\uSetiConfig.pas',
  uSetiConnects in '..\sfCls\uSetiConnects.pas',
  uSetiUseful in '..\sfCls\uSetiUseful.pas',
  ufrmMain in 'views\ufrmMain.pas' {frmMain},
  ufrmToLocate in '..\sfVw\ufrmToLocate.pas' {frmToLocate},
  ufrmGetDate in '..\sfVw\ufrmGetDate.pas' {frmGetDate},
  udmMasterDataModule in '..\sfDm\udmMasterDataModule.pas' {dmMasterDataModule: TDataModule},
  udmLocate in '..\sfDm\udmLocate.pas' {dmLocate: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
