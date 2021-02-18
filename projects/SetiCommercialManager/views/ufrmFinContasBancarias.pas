unit ufrmFinContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmFinContasBancarias = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Edit14: TEdit;
    Button3: TButton;
    Label3: TLabel;
    Label24: TLabel;
    Edit21: TEdit;
    Label5: TLabel;
    dtpUnicaDtaVencimento: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinContasBancarias: TfrmFinContasBancarias;

implementation

{$R *.dfm}

procedure TfrmFinContasBancarias.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
