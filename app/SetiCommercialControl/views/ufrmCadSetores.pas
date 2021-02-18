unit ufrmCadSetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadSetores = class(TfrmCadPadraoReduzido)
    procedure FormCreate(Sender: TObject);
    procedure sbSelRegistroClick(Sender: TObject);
  private
    { Private declarations }
    FqIdSelec: Integer;
    procedure SetqIdSelec(const Value: Integer);
  public
    { Public declarations }
  end;

var
  frmCadSetores: TfrmCadSetores;

implementation

{$R *.dfm}

procedure TfrmCadSetores.FormCreate(Sender: TObject);
begin
    SetqTituloForm('Setores');
    SetqCommandCons('SELECT * FROM TBCADSETORES ');
    SetqCommandIns('INSERT INTO TBCADSETORES      '+
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
    SetqCommandDel('DELETE FROM TBCADSETORES WHERE ID = :ID');
  inherited;

end;

procedure TfrmCadSetores.sbSelRegistroClick(Sender: TObject);
begin
  inherited;
    SetqIdSelec(qIdSelecionado);
end;

procedure TfrmCadSetores.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
