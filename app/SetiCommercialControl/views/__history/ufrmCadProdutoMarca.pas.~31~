unit ufrmCadProdutoMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadraoReduzido, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadProdutoMarca = class(TfrmCadPadraoReduzido)
    procedure sbSelRegistroClick(Sender: TObject);
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
  frmCadProdutoMarca: TfrmCadProdutoMarca;

implementation

{$R *.dfm}

uses ufrmCadProdutoDefeito, ufrmCadProdutoModelo;

{ TfrmCadProdutoMarca }

procedure TfrmCadProdutoMarca.FormCreate(Sender: TObject);
begin
    //COMANDO PARA O TITULO DO FORM
    SetqTituloForm('Produto - Marcas');
    //COMANDO PARA CONSULTA DE ITENS
    SetqCommandCons('SELECT * FROM TBCADPRODUTOMARCA ');
    //COMANDO PARA INSERT
    SetqCommandIns('INSERT INTO TBCADPRODUTOMARCA '+
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
    SetqCommandDel('DELETE FROM TBCADPRODUTOMARCA WHERE ID = :ID');
  inherited;
end;

procedure TfrmCadProdutoMarca.sbSelRegistroClick(Sender: TObject);
begin
  inherited;
    SetqIdSelec(qIdSelecionado);
end;

procedure TfrmCadProdutoMarca.SetqIdSelec(const Value: Integer);
begin
    FqIdSelec := Value;
end;

end.
