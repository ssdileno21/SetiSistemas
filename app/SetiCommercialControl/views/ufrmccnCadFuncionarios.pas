unit ufrmccnCadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStanRec, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, uFSPanel;

type
  TfrmccnCadFuncionarios = class(TfrmStanRec)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeCodInterno: TDBEdit;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    Label18: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    dbeObservacao: TDBMemo;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label13: TLabel;
    dbeCpfCnpj: TDBEdit;
    Label14: TLabel;
    dbeTelefone: TDBEdit;
    Label15: TLabel;
    dbeCelular: TDBEdit;
    Label17: TLabel;
    dbeAniversario: TDBEdit;
    Label6: TLabel;
    dbeCep: TDBEdit;
    Label7: TLabel;
    dbeLogradouro: TDBEdit;
    Label8: TLabel;
    dbeNum: TDBEdit;
    Label9: TLabel;
    dbeComp: TDBEdit;
    Label10: TLabel;
    dbeBairro: TDBEdit;
    Label11: TLabel;
    dbeCidade: TDBEdit;
    Label12: TLabel;
    dbeUf: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmccnCadFuncionarios: TfrmccnCadFuncionarios;

implementation

{$R *.dfm}

procedure TfrmccnCadFuncionarios.FormShow(Sender: TObject);
begin
    SetFormId(Self.Tag);
  inherited;
end;

end.