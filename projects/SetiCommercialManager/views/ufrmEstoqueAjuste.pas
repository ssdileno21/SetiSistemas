unit ufrmEstoqueAjuste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStandardItemReg, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeePenDlg, Vcl.Menus;

type
  TfrmEstoqueAjuste = class(TfrmStandardItemReg)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    //SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Button6: TButton;
    Label17: TLabel;
    Edit15: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueAjuste: TfrmEstoqueAjuste;

implementation

{$R *.dfm}

procedure TfrmEstoqueAjuste.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
