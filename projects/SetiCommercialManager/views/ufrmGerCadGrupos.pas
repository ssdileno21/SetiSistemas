unit ufrmGerCadGrupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmGerCadGrupos = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerCadGrupos: TfrmGerCadGrupos;

implementation

{$R *.dfm}

procedure TfrmGerCadGrupos.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
