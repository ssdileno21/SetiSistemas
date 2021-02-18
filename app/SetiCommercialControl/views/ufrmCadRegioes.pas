unit ufrmCadRegioes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufrmCadPadraoReduzido, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.DB, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, MIDASLIB;

type
  TfrmCadRegioes = class(TfrmCadPadraoReduzido)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FqIdSelec: Integer;
    procedure SetqIdSelec(const Value: Integer);
  public
    { Public declarations }
    property qIdSelec : Integer read FqIdSelec write SetqIdSelec;
  end;

var
  frmCadRegioes: TfrmCadRegioes;

implementation

{$R *.dfm}

procedure TfrmCadRegioes.FormCreate(Sender: TObject);
begin
    SetqTituloForm('Regiões');
    SetqCommandCons('SELECT * FROM TBCADREGIOES ');
    SetqCommandIns('INSERT INTO TBCADREGIOES      '+
                   '(                             '+
                   '   ID                         '+
                   '  ,DESCRICAO                  '+
                   '  ,OBS                        '+
                   ') VALUES                      '+
                   '(                             '+
                   '   :ID                        '+
                   '  ,:DESCRICAO                 '+
                   '  ,:OBS                       '+
                   ')                             ');
    SetqNomeCampoCod('ID');
    SetqNomeCampoDesc('DESCRICAO');
    SetqNomeCampoObs('OBS');
    SetqCommandDel('DELETE FROM TBCADREGIOES WHERE ID = :ID');
  inherited;
end;

procedure TfrmCadRegioes.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
