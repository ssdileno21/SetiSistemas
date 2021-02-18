unit ufrmCadProdutoModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadProdutoModelo = class(TfrmCadPadraoReduzido)
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
  frmCadProdutoModelo: TfrmCadProdutoModelo;

implementation

{$R *.dfm}

procedure TfrmCadProdutoModelo.FormCreate(Sender: TObject);
begin
    //COMANDO PARA O TITULO DO FORM
    SetqTituloForm('Produto - Modelos');
    //COMANDO PARA CONSULTA DE ITENS
    SetqCommandCons('SELECT * FROM TBCADPRODUTOMODELO ');
    //COMANDO PARA INSERT
    SetqCommandIns('INSERT INTO TBCADPRODUTOMODELO '+
                   '(                             '+
                   '   ID                         '+
                   '  ,NOME                       '+
                   '  ,OBS                        '+
                   ') VALUES                      '+
                   '(                             '+
                   '   :ID                        '+
                   '  ,:NOME                      '+
                   '  ,:OBS                       '+
                   ')                             ');
    //NOME DO CAMPO CÓD.
    SetqNomeCampoCod('ID');
    //NOME DO CAMPO DESCRIÇÃO
    SetqNomeCampoDesc('NOME');
    //NOME DO CAMPO OBSERVAÇÃO
    SetqNomeCampoObs('OBS');
    //COMANDO PARA DELETAR
    SetqCommandDel('DELETE FROM TBCADPRODUTOMODELO WHERE ID = :ID');
  inherited;
end;

procedure TfrmCadProdutoModelo.sbSelRegistroClick(Sender: TObject);
begin
  inherited;
    SetqIdSelec(qIdSelecionado);
end;

procedure TfrmCadProdutoModelo.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
