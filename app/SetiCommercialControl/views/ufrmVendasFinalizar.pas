unit ufrmVendasFinalizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr

  ,uMess, uSetiConnects, uLocate, MIDASLIB
  ;

type
  TfrmVendasFinalizar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbgFormaPagto: TDBGrid;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    dsFormaPagto: TDataSource;
    sqlFormaPagto: TSQLQuery;
    dspFormaPagto: TDataSetProvider;
    cdsFormaPagto: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    FConnects : TSetiConnects;
    FSqlConn : TSQLConnection;
    FLocate : TLocate;
    { Private declarations }
  public
    property qConnects : TSetiConnects read FConnects write FConnects;
    property cLocate : TLocate read FLocate write FLocate;
    { Public declarations }
  end;

var
  frmVendasFinalizar : TfrmVendasFinalizar;
implementation

{$R *.dfm}

procedure TfrmVendasFinalizar.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmVendasFinalizar.btnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmVendasFinalizar.FormCreate(Sender: TObject);
begin
    try
      qConnects := TSetiConnects.Create;
      FSqlConn := TSQLConnection.Create(Nil);
      FSqlConn := qConnects.ConnectsFIREBIRD(False);
      sqlFormaPagto.SQLConnection := FSqlConn;
      cdsFormaPagto.Open;
      cdsFormaPagto.FieldByName('ID').Visible := True;
      cdsFormaPagto.FieldByName('ID').DisplayLabel := 'Cod.';
      cdsFormaPagto.FieldByName('ID').DisplayWidth := 5;
      cdsFormaPagto.FieldByName('DESCRICAO').Visible := True;
      cdsFormaPagto.FieldByName('DESCRICAO').DisplayLabel := 'Forma de Pagto.';
      cdsFormaPagto.FieldByName('DESCRICAO').DisplayWidth := 15;
      cdsFormaPagto.FieldByName('STATUS').Visible := False;
      cdsFormaPagto.FieldByName('OBS').Visible := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmVendasFinalizar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_RETURN)  then
      ModalResult :=  mrOk;
    if (Key = VK_ESCAPE)  then
      ModalResult := mrCancel;
end;

end.
