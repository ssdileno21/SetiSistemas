unit ufrmGerCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPattern, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmGerCadEmpresa = class(TfrmPattern)
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Edit5: TEdit;
    Label4: TLabel;
    Edit18: TEdit;
    Button5: TButton;
    Label5: TLabel;
    imageSearchReg: TImageList;
    Label6: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    Label7: TLabel;
    Edit7: TEdit;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    Edit12: TEdit;
    Label13: TLabel;
    Edit13: TEdit;
    Label14: TLabel;
    Edit14: TEdit;
    Label15: TLabel;
    Edit15: TEdit;
    Label16: TLabel;
    Edit16: TEdit;
    Button3: TButton;
    Label17: TLabel;
    Edit17: TEdit;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label19: TLabel;
    Image1: TImage;
    Label18: TLabel;
    Edit19: TEdit;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerCadEmpresa: TfrmGerCadEmpresa;

implementation

{$R *.dfm}

procedure TfrmGerCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
