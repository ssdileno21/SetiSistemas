unit ufrmFinFluxoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmPattern, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, VCLTee.TeCanvas, VCLTee.TeePenDlg,
  Vcl.ImgList;

type
  TfrmFinFluxoCaixa = class(TfrmPattern)
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox5: TGroupBox;
    DBGrid5: TDBGrid;
    GroupBox6: TGroupBox;
    DBGrid6: TDBGrid;
    ButtonPen1: TButtonPen;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinFluxoCaixa: TfrmFinFluxoCaixa;

implementation

{$R *.dfm}

procedure TfrmFinFluxoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
      PageControl1.ActivePageIndex := 0;
end;

end.
