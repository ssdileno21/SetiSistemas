unit ufrmCadProdutoDefeito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, MIDASLIB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadProdutoDefeito = class(TfrmCadPadraoReduzido)
    procedure FormCreate(Sender: TObject);
  private
    FqIdSelec: Integer;
    procedure SetqIdSelec(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property qIdSelec : Integer read FqIdSelec write SetqIdSelec;
  end;

var
  frmCadProdutoDefeito: TfrmCadProdutoDefeito;

implementation

{$R *.dfm}

{ TfrmCadProdutoDefeito }

procedure TfrmCadProdutoDefeito.FormCreate(Sender: TObject);
begin
    //COMANDO PARA O TITULO DO FORM
    SetqTituloForm('Produto - Defeitos');
    //COMANDO PARA CONSULTA DE ITENS
    SetqCommandCons('SELECT * FROM TBCADPRODUTODEFEITO ');
    //COMANDO PARA INSERT
    SetqCommandIns('INSERT INTO TBCADPRODUTODEFEITO '+
                   '(                               '+
                   '   ID                           '+
                   '  ,NOME                         '+
                   '  ,OBS                          '+
                   ') VALUES                        '+
                   '(                               '+
                   '   :ID                          '+
                   '  ,:NOME                        '+
                   '  ,:OBS                         '+
                   ')                               ');
    //NOME DO CAMPO CÓD.
    SetqNomeCampoCod('ID');
    //NOME DO CAMPO DESCRIÇÃO
    SetqNomeCampoDesc('NOME');
    //NOME DO CAMPO OBSERVAÇÃO
    SetqNomeCampoObs('OBS');
    //COMANDO PARA DELETAR
    SetqCommandDel('DELETE FROM TBCADPRODUTODEFEITO WHERE ID = :ID');
  inherited;
end;

procedure TfrmCadProdutoDefeito.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
