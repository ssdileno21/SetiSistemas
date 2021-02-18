unit ufrmccnCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStanRec, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, uFSPanel;

type
  TfrmccnCadUsuarios = class(TfrmStanRec)
    lbCodUnico: TLabel;
    dbeCodUnico: TDBEdit;
    lbNomFantasia: TLabel;
    dbeNomeFantasia: TDBEdit;
    lbRazaoSocial: TLabel;
    dbeRazaoSocial: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure cdsStandardBeforePost(DataSet: TDataSet);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  frmccnCadUsuarios: TfrmccnCadUsuarios;

implementation

{$R *.dfm}

procedure TfrmccnCadUsuarios.cdsStandardBeforePost(DataSet: TDataSet);
begin
    SetPass(DBEdit1.Text);
  inherited;
end;

procedure TfrmccnCadUsuarios.FormShow(Sender: TObject);
begin
    SetFormId(Self.Tag);
  inherited;
end;

end.
