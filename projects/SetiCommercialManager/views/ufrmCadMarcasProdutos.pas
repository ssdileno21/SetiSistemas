unit ufrmCadMarcasProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmCadMarcasProdutos = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    Image2: TImage;
    procedure bpSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMarcasProdutos: TfrmCadMarcasProdutos;

implementation

{$R *.dfm}

procedure TfrmCadMarcasProdutos.bpSearchClick(Sender: TObject);
begin
  fnSearchParamFS8F1('TBCADPRODUTOMARCA', 'ID',Caption);
  inherited;
end;

end.
