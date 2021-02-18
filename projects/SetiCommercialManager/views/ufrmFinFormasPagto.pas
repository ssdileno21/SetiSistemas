unit ufrmFinFormasPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmFinFormasPagto = class(TfrmStandardReg)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Edit4: TEdit;
    Button6: TButton;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    CheckBox3: TCheckBox;
    Label9: TLabel;
    ComboBox3: TComboBox;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Edit10: TEdit;
    CheckBox2: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinFormasPagto: TfrmFinFormasPagto;

implementation

{$R *.dfm}

procedure TfrmFinFormasPagto.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
