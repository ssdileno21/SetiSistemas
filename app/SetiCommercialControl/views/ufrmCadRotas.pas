unit ufrmCadRotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadRotas = class(TfrmCadPadraoReduzido)
    procedure sbSelRegistroClick(Sender: TObject);
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
  frmCadRotas: TfrmCadRotas;

implementation

{$R *.dfm}

procedure TfrmCadRotas.FormCreate(Sender: TObject);
begin
    SetqTituloForm('Rotas');
    SetqCommandCons('SELECT * FROM TBCADROTAS ');
    SetqCommandIns('INSERT INTO TBCADROTAS        '+
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
    SetqCommandDel('DELETE FROM TBCADROTAS WHERE ID = :ID');
  inherited;
end;

procedure TfrmCadRotas.sbSelRegistroClick(Sender: TObject);
begin
  inherited;
    SetqIdSelec(qIdSelecionado);
end;

procedure TfrmCadRotas.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
