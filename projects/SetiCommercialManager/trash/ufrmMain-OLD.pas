unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, uSetiFramework,
  Vcl.StdCtrls, VCLTee.TeCanvas, Vcl.Grids, Vcl.Outline, Vcl.Samples.DirOutln,
  Vcl.TabNotBk, VCLTee.TeePenDlg, Vcl.ButtonGroup, Vcl.ImgList, uMess,
  MIDASLIB, uSetiComponentRegisters, EAppProt;

type
  TfrmMain = class(TForm)
    mmMain: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    CadastroPadro1: TMenuItem;
    pHeader: TPanel;
    sbClose: TSpeedButton;
    pgcMain: TPageControl;
    FormPadrao1: TMenuItem;
    tsOne: TTabSheet;
    pLeftBar: TPanel;
    pMenuLeft: TPanel;
    Splitter1: TSplitter;
    SpeedButton3: TSpeedButton;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Deletar1: TMenuItem;
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
    procedure FormShow(Sender: TObject);
    procedure CadastrodeTelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  cSetiFramework : TSetiFramework;
  ipag : TTabSheet;
  cSFCR : TSetiComponentRegisters;

implementation

{$R *.dfm}

uses ufrmStandardReg, ufrmPattern, ufrmDefaultSearch, ufrmTesteHeranca,
  ufrmForms, ufrmLogin;

procedure TfrmMain.CadastrodeTelas1Click(Sender: TObject);
begin
    try
    frmForms := TfrmForms.Create(Nil);
    frmForms.FSetFormName(frmMain.Name);
    frmForms.SetForm(Self);
    frmForms.Show;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.CadastroPadro1Click(Sender: TObject);
begin
    try
      frmStandardReg := TfrmStandardReg.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmStandardReg);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.ControledeForms1Click(Sender: TObject);
begin
    try
      frmForms := TfrmForms.Create(Nil);
      frmForms.Show;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.este1Click(Sender: TObject);
begin
    try
      frmTesteHeranca := TfrmTesteHeranca.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmTesteHeranca);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
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
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    try
      frmLogin := TfrmLogin.Create(Application);
      if (frmLogin.ShowModal = mrOk) then
      begin
        frmLogin.Hide;
        cSetiFramework := TSetiFramework.Create;
        //cSetiFramework.SetiFramComponentsInfo(Self);

      end else
        Application.Terminate;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.FormPadrao1Click(Sender: TObject);
begin
    try
      frmPattern := TfrmPattern.Create(Nil);
      cSetiFramework.SetiFramNewTabSheet(frmPattern);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    try
     { cSFCR := TSetiComponentRegisters.Create(Self);
      cSFCR.FormRecording;
      cSFCR.ComponnentRecording;}
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.Ocultar1Click(Sender: TObject);
begin
    try
      pHeader.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.Ocultar2Click(Sender: TObject);
begin
    try
        sbFooter.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.PainelEsquerdo1Click(Sender: TObject);
begin
    try
      pMenuLeft.Visible := True;
      pLeftBar.Visible := False;
      pLeftBar.Width := cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pMenuLeft.Name,'WIDTH');
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.Rodap1Click(Sender: TObject);
begin
    try
        pHeader.Visible := True;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.Rodap2Click(Sender: TObject);
begin
    try
        sbFooter.Visible := True;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.sbCloseClick(Sender: TObject);
begin
    try
      cSetiFramework.SetiFramCloseTabSheet(pgcMain);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
    try
      pLeftBar.Visible := True;
      pMenuLeft.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
begin
    try
      pLeftBar.Visible := False;
      pMenuLeft.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
begin
    try
      pMenuLeft.Visible := True;
      pLeftBar.Visible := False;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TfrmMain.Splitter1CanResize(Sender: TObject; var NewSize: Integer;
  var Accept: Boolean);
begin
    if (NewSize <= (cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pMenuLeft.Name,'WIDTH')/2)) then
      NewSize := Round(cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pMenuLeft.Name,'WIDTH')/2);
    //pLeftBar.Width := Round(cSetiFramework.SetiFramGetComponentsInfo(frmMain.Name,pLeftBar.Name,'WIDTH'));
end;

end.
