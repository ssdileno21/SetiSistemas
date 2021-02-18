unit ufrmCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardReg, Vcl.ImgList,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, VCLTee.TeCanvas,
  VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmCadFornecedor = class(TfrmStandardReg)
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label13: TLabel;
    Memo1: TMemo;
    gbRegiao: TGroupBox;
    Label18: TLabel;
    Label17: TLabel;
    EDT_LOGRADOUROUF: TEdit;
    sbBuscaUf: TButtonPen;
    EDT_LOGRADOUROCIDADE: TEdit;
    sbBuscaCidade: TButtonPen;
    ButtonPen1: TButtonPen;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Label14: TLabel;
    Edit12: TEdit;
    Label15: TLabel;
    Edit13: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation

{$R *.dfm}

procedure TfrmCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
