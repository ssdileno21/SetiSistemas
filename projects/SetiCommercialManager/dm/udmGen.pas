unit udmGen;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.FMTBcd,
  Data.DBXFirebird, uSetiConnects;

type
  TdmGen = class(TDataModule)
    sqlGen: TSQLQuery;
  private
    { Private declarations }
    FConnects : TSetiConnects;
    property qConnects : TSetiConnects read FConnects write FConnects;
  public
    { Public declarations }
    function ProximoId(Generator: string = ''; pFramework : Boolean = false
    ) : Integer;
  end;

var
  dmGen: TdmGen;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uMess, uSetiConfig;

{$R *.dfm}

function TdmGen.ProximoId(Generator: string; pFramework : Boolean): Integer;
var
  vSqlConn: TSQLConnection;
begin
    try
      try
        qConnects := TSetiConnects.Create;
        vSqlConn := TSQLConnection.Create(Nil);
        if (SConfigTypeDB = 'TSQL') then
        begin
          vSqlConn := qConnects.ConnectsFIREBIRD(pFramework);
          sqlGen.Close;
          sqlGen.SQL.Clear;
          sqlGen.SQLConnection := vSqlConn;
          sqlGen.SQL.Add('SELECT GEN_ID('+Generator+',1) AS ID_ATUAL '+
          ' FROM RDB$DATABASE');
          sqlGen.Open;
          Result := sqlGen.FieldByName('ID_ATUAL').AsInteger;
          sqlGen.Close;
        end;
      finally
        vSqlConn.Free;
        qConnects.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
