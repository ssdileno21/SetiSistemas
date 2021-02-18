unit ufrmRelEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmRelatorioPadrao, Data.FMTBcd,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmRelEstoque = class(TfrmRelatorioPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstoque: TfrmRelEstoque;

implementation

{$R *.dfm}

end.
