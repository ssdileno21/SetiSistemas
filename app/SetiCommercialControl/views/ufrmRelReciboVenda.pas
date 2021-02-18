unit ufrmRelReciboVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Data.DB, Bde.DBTables, QuickRpt;

type
  TfrmRelReciboVenda = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    Query1: TQuery;
    Query2: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelReciboVenda: TfrmRelReciboVenda;

implementation

{$R *.dfm}

end.
