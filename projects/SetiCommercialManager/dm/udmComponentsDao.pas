unit udmComponentsDao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Data.DB,
  MIDASLIB, Datasnap.DBClient, Datasnap.Provider;

type
  TdmComponentsDao = class(TDataModule)
    SetiDs: TDataSource;
    SetiDsp: TDataSetProvider;
    SetiCds: TClientDataSet;
    SetiSql: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmComponentsDao: TdmComponentsDao;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uSetiConnects;

{$R *.dfm}

end.
