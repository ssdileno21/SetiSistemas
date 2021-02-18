unit ufrmCadGrupoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmCadGrupoProdutos = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    procedure bpSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrupoProdutos: TfrmCadGrupoProdutos;

implementation

{$R *.dfm}

procedure TfrmCadGrupoProdutos.bpSearchClick(Sender: TObject);
begin
  fnSearchParamFS8F1('TBCADPRODUTOGRUPO', 'ID',Caption);
  inherited;
end;

end.
