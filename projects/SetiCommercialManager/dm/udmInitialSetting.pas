unit udmInitialSetting;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TdmInitialSetting = class(TDataModule)
    sqlInsert: TSQLQuery;
    dsInitialSetting: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInitialSetting: TdmInitialSetting;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
