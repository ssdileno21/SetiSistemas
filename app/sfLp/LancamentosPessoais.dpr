program LancamentosPessoais;

uses
  Vcl.Forms,
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  uSetiConfig in 'classes\uSetiConfig.pas',
  uSetiConnects in '..\sfCls\uSetiConnects.pas',
  uMess in '..\sfCls\uMess.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.