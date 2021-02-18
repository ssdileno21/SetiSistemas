unit ufrmccnCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmStanRec, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Data.DBXFirebird, uFSPanel;

type
  TfrmccnCadEmpresa = class(TfrmStanRec)
    lbCodUnico: TLabel;
    dbeCodUnico: TDBEdit;
    lbNomFantasia: TLabel;
    dbeNomeFantasia: TDBEdit;
    lbRazaoSocial: TLabel;
    dbeRazaoSocial: TDBEdit;
    lbNumCnpj: TLabel;
    dbeCnpj: TDBEdit;
    lbInscricaoEs: TLabel;
    dbeInscricaoEstadual: TDBEdit;
    lbInscricaoMunicipal: TLabel;
    dbeInscricaoMunicipal: TDBEdit;
    lbIE: TLabel;
    dbeIEST: TDBEdit;
    lbCep: TLabel;
    dbeCep: TDBEdit;
    lbLogradouro: TLabel;
    dbeLogradouro: TDBEdit;
    lbNum: TLabel;
    dbeNumero: TDBEdit;
    lbComplemento: TLabel;
    dbeComplemento: TDBEdit;
    lbBairro: TLabel;
    dbeBairro: TDBEdit;
    lbCidade: TLabel;
    dbeCidade: TDBEdit;
    lbUf: TLabel;
    dbeUF: TDBEdit;
    lbEmail: TLabel;
    dbeEmail: TDBEdit;
    lbTelefone1: TLabel;
    dbeTel1: TDBEdit;
    lbTelefone2: TLabel;
    dbeTel2: TDBEdit;
    Label1: TLabel;
    dbeFax: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmccnCadEmpresa: TfrmccnCadEmpresa;

implementation

{$R *.dfm}


procedure TfrmccnCadEmpresa.FormShow(Sender: TObject);
begin
    SetFormId(Self.Tag);
  inherited;
end;

end.
