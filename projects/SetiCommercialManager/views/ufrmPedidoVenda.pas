unit ufrmPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardItemReg, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmPedidoVenda = class(TfrmStandardItemReg)
    Label6: TLabel;
    Edit25: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Edit17: TEdit;
    Label15: TLabel;
    Edit18: TEdit;
    Button5: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Memo1: TMemo;
    Label7: TLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    TabSheet4: TTabSheet;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button4: TButton;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Edit10: TEdit;
    Label12: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label16: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Button6: TButton;
    Label17: TLabel;
    Edit15: TEdit;
    Label18: TLabel;
    Edit16: TEdit;
    Label19: TLabel;
    Edit19: TEdit;
    Label20: TLabel;
    Edit20: TEdit;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBGrid2: TDBGrid;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoVenda: TfrmPedidoVenda;

implementation

{$R *.dfm}

procedure TfrmPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
