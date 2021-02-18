unit ufrmOrcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardItemReg, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmOrcamentos = class(TfrmStandardItemReg)
    Label6: TLabel;
    Edit25: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label15: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Button5: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Label13: TLabel;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label7: TLabel;
    Edit6: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    TabSheet4: TTabSheet;
    Label12: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Button6: TButton;
    Label14: TLabel;
    Edit13: TEdit;
    Label16: TLabel;
    Edit14: TEdit;
    Label17: TLabel;
    Edit15: TEdit;
    Label18: TLabel;
    Edit16: TEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBGrid2: TDBGrid;
    Label19: TLabel;
    Edit19: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamentos: TfrmOrcamentos;

implementation

{$R *.dfm}

procedure TfrmOrcamentos.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
