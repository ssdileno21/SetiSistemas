unit udmEmpresa;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  uSetiConnects, Data.DBXFirebird;

type
  TdmEmpresa = class(TDataModule)
    sqlInsert: TSQLQuery;
    sqlDelete: TSQLQuery;
    dsEmpresa: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FConnect : TSetiConnects;
  public
    { Public declarations }
  end;

var
  dmEmpresa: TdmEmpresa;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uMess;

{$R *.dfm}

procedure TdmEmpresa.DataModuleCreate(Sender: TObject);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
