unit udmMain;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Vcl.Dialogs, Data.FMTBcd

  ;

type
  TdmMain = class(TDataModule)
    SetiConn: TSQLConnection;
    SQLQuery1: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  try
    SetiConn.Connected := True;
    SQLQuery1.Close;
    SQLQuery1.Open;
    if NOT SQLQuery1.IsEmpty then
      ShowMessage(SQLQuery1.FieldByName('NOME').AsString);
  finally

  end;
end;

end.
