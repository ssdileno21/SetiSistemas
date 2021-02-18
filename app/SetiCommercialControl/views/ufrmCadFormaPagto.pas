unit ufrmCadFormaPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadFormaPagto = class(TfrmCadPadraoReduzido)
    procedure FormCreate(Sender: TObject);
    procedure sbSelRegistroClick(Sender: TObject);
  private
    FqIdSelec: Integer;
    procedure SetqIdSelec(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property qIdSelec : Integer read FqIdSelec write SetqIdSelec;
  end;

var
  frmCadFormaPagto: TfrmCadFormaPagto;

implementation

{$R *.dfm}

procedure TfrmCadFormaPagto.FormCreate(Sender: TObject);
begin
    SetqTituloForm('Formas de pagamento');
    SetqCommandCons('SELECT * FROM TBFORMAPAGTO ');
    SetqCommandIns('INSERT INTO TBFORMAPAGTO      '+
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
    SetqCommandDel('DELETE FROM TBFORMAPAGTO WHERE ID = :ID');

  inherited;
end;

procedure TfrmCadFormaPagto.sbSelRegistroClick(Sender: TObject);
begin
  inherited;
    SetqIdSelec(qIdSelecionado);
end;

procedure TfrmCadFormaPagto.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
