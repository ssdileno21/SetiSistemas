unit ufrmCadModeloProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.StdCtrls,
  Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmCadModeloProdutos = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Image2: TImage;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure bpSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModeloProdutos: TfrmCadModeloProdutos;

implementation

{$R *.dfm}

procedure TfrmCadModeloProdutos.bpSearchClick(Sender: TObject);
begin
  fnSearchParamFS8F1('TBCADPRODUTOMODELO', 'ID',Caption);
  inherited;
end;

end.
