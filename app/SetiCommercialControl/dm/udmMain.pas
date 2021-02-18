unit udmMain;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Forms, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, uSetiConnects,
  IBDatabase, Data.DBXInterBase;

type
  TdmMain = class(TDataModule)
    sqlConn: TSQLConnection;
    sqlProducts: TSQLQuery;
    dspProducts: TDataSetProvider;
    cdsProducts: TClientDataSet;
    sqlGen: TSQLQuery;
    cdsProductsID: TIntegerField;
    cdsProductsNOME: TStringField;
    cdsProductsCODIGOINTERNO: TIntegerField;
    cdsProductsIDFORNECEDOR: TIntegerField;
    cdsProductsIDPRODUTOGRUPO: TIntegerField;
    cdsProductsIDPRODUTOSUBGRUPO: TIntegerField;
    cdsProductsCODIGOBARRAS: TStringField;
    cdsProductsIDPRODUTOMARCA: TIntegerField;
    cdsProductsIDPRODUTOMODELO: TIntegerField;
    cdsProductsDESCRICAO: TStringField;
    cdsProductsVLRCUSTO: TFloatField;
    cdsProductsVLRDESPESAS: TFloatField;
    cdsProductsVLRDESPESASOUTROS: TFloatField;
    cdsProductsVLRCUSTOFINAL: TFloatField;
    cdsProductsVLRLUCROREQUERIDO: TFloatField;
    cdsProductsVLRVENDASUGERIDO: TFloatField;
    cdsProductsVLRVENDAUTILIZADO: TFloatField;
    cdsProductsPESO: TFloatField;
    cdsProductsLARGURA: TFloatField;
    cdsProductsALTURA: TFloatField;
    cdsProductsCOMPRIMENTO: TFloatField;
    cdsProductsCOMISSAO: TFloatField;
    cdsProductsUNIDADEVENDA: TStringField;
    cdsProductsSTATUS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FConnects : TSetiConnects;
    procedure ProviderFlags(DataSet : TDataSet);
    property qConnects : TSetiConnects read FConnects write FConnects;

  public
    { Public declarations }
    procedure Connect;
    procedure Disconnects;
    procedure ProductsOpen;
    procedure ProductsInsert;
    function ProximoId(Generator: string = ''; pFramework : Boolean = false
    ) : Integer;
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uSetiConfig, uMess, Dialogs;

{$R *.dfm}

procedure TdmMain.Connect;
var
  pPath : string;
  pDb : string;
begin
    try
      pPath := ExtractFileDir(Application.ExeName);
      pdb := SConfigFBClientDBName;
      {IBDatabase1.Close;
      IBDatabase1.Params.Clear;
      IBDatabase1.Params.Add('user_name=SYSDBA');
      IBDatabase1.Params.Add('password=masterkey');
      IBDatabase1.DatabaseName := 'localhost:'+pPath +'\'+ pDb;
      IBDatabase1.LoginPrompt := False;
      IBDatabase1.Open;  }
      sqlConn.Params.Values['Database'] := pPath +'\'+ pDb +'.fdb';
      sqlConn.Connected := True;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);

begin
    try
      Connect;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
begin
    try
      Disconnects;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;


procedure TdmMain.Disconnects;
begin
    try
      sqlConn.Connected := False;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TdmMain.ProductsInsert;
begin
    try
      cdsProducts.Append;
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TdmMain.ProductsOpen;
begin
    try
      cdsProducts.Close;
      cdsProducts.Open;
      ProviderFlags(cdsProducts);
    except on e : exception do
        SetiMens(0,e.Message);
    end
end;

procedure TdmMain.ProviderFlags(DataSet : TDataSet);
var
  i : Integer;
  Field : TField;
begin
  //sqlProducts.FieldByName('ID').ProviderFlags := [pfInUpdate,pfInWhere,pfInKey,pfHidden];
  cdsProducts.FieldByName('ID').ProviderFlags := [pfInKey];
{    if (DataSet = cdsProducts) then
    begin
      with (cdsProducts) do
      begin
          FieldByName('ID').ProviderFlags := [pfInKey];
      end;
    end;}
end;

function TdmMain.ProximoId(Generator: string; pFramework: Boolean): Integer;
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
