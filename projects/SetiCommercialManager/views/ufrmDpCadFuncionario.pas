unit ufrmDpCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmDpCadFuncionario = class(TfrmStandardReg)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    Label7: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    Edit10: TEdit;
    Label13: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    Label15: TLabel;
    Edit13: TEdit;
    Label20: TLabel;
    Edit18: TEdit;
    Label21: TLabel;
    Edit19: TEdit;
    Label19: TLabel;
    Edit17: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Label16: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label17: TLabel;
    Label18: TLabel;
    Edit15: TEdit;
    Label22: TLabel;
    Edit16: TEdit;
    Label23: TLabel;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Edit21: TEdit;
    Label25: TLabel;
    Edit22: TEdit;
    Label26: TLabel;
    Edit23: TEdit;
    Label27: TLabel;
    Edit24: TEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    Edit25: TEdit;
    Edit14: TEdit;
    Edit26: TEdit;
    Button2: TButton;
    Button3: TButton;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDpCadFuncionario: TfrmDpCadFuncionario;

implementation

{$R *.dfm}

procedure TfrmDpCadFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
