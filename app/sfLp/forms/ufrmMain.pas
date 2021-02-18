unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uSetiConnects, ADODB;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FConnects : TSetiConnects;
  public
    { Public declarations }
    property qConnects : TSetiConnects read FConnects write FConnects;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


procedure TfrmMain.Button1Click(Sender: TObject);
var
    qry : TADOQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      qry := TADOQuery.Create(NIL);
      qry.Connection := qConnects.ConnectsSQLSERVER;
      qry.SQL.Add('SELECT * FROM TBESTABELECIMENTOS');
      qry.Open;
      if NOT qry.IsEmpty then
        ShowMessage('Teste');
    finally

    end;
end;

end.
