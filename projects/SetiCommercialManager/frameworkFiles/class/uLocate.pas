unit uLocate;

interface

uses uMess, SysUtils, Data.DB, MIDASLIB, Datasnap.Provider, Vcl.Controls, ADODB,
SqlExpr, DBClient, Dialogs;

    type TLocate = class(TProvider)
      private
        FType : Integer;
        FCds : TClientDataSet;
        FTable : string;
        FField : string;
        FKey : string;
        FFieldReturn : string;
        FTitle : string;
        FComm : string;
        FOrder : string;
        FGroupBy : string;
        FReturnType : string;
        FReturnDataSet : TDataSet;
        FReturn : Variant;
        FIdConnect : Integer; //0 : Client; 1 : Framework;
        procedure Search;
        procedure SetParam(pType : Integer;
                           pCds:TClientDataSet;
                           pTable:string;
                           pField:string;
                           pKey:string;
                           pFieldReturn:string;
                           pTitle:string;
                           pComm:string;
                           pGroupBy:string;
                           pOrder:string;
                           pIdConnect:Integer);
        function GetType : Integer;
        function GetCds : TClientDataSet;
        function GetTable : string;
        function GetField : string;
        function GetKey : string;
        function GetFieldReturn : string;
        function GetTitle : string;
        function GetComm : string;
        function GetOrder : string;
        function GetGroupBy : string;
        function GetReturnType : string;
        function GetReturnDataSet : TDataSet;
        function GetReturn : Variant;
        function GetIdConnect : Integer;
        procedure SetType(Const Value : Integer);
        procedure SetCds(Const Value : TClientDataSet);
        procedure SetTable(Const Value  : string);
        procedure SetField(Const Value : string);
        procedure SetKey(Const Value : string);
        procedUre SetFieldReturn(Const Value : string);
        procedure SetTitle(Const Value : string);
        procedure SetComm(Const Value : string);
        procedure SetOrder(Const Value : string);
        procedure SetGroupBy(Const Value : string);
        procedure SetReturnType(Const Value: string);
        procedure SetReturnDataSet(Const Value : TDataSet);
        procedure SetReturn(Const Value : Variant);
        procedure SetIdConnect(Const Value : Integer);
      public
        constructor Create;
        destructor Destroy;Virtual;
        function GetSearch(   pType : Integer = -1;
                              pCds:TClientDataSet = NIL;
                              pTable:string = '';
                              pField:String = '';
                              pKey:String = '';
                              pFieldReturn:string = '';
                              pTitle:String = '';
                              pComm:string = '';
                              pGroupBy:string = '';
                              pOrder:string = '';
                              pIdConnect:Integer = 0) : Variant;
        function GetSearchDataSet(pType : Integer = -1;
                              pCds:TClientDataSet = NIL;
                              pTable:string = '';
                              pField:String = '';
                              pKey:String = '';
                              pTitle:String = '';
                              pComm:string = '';
                              pGroupBy:string = '';
                              pOrder:string = '';
                              pIdConnect:Integer = 0) : TDataSet;
      protected
        property qType : Integer read GetType write SetType;
        property qCds : TClientDataSet read GetCds write SetCds;
        property qTable : string read GetTable write SetTable;
        property qField : string read GetField write SetField;
        property qKey : string read GetKey write SetKey;
        property qFieldReturn : string read GetFieldReturn write SetFieldReturn;
        property qTitle : string read GetTitle write SetTitle;
        property qComm : string read GetComm write SetComm;
        property qOrder : string read GetOrder write SetOrder;
        property qGroupBy : string read GetGroupBy write SetGroupBy;
        property qReturnType: string read GetReturnType write SetReturnType;
        property qIdConnect: Integer read GetIdConnect write SetIdConnect;
      published
        property qReturnDataSet : TDataSet read GetReturnDataSet write
        SetReturnDataSet;
        property qReturn: Variant read GetReturn write SetReturn;

    end;

implementation

{ TLocate }

uses ufrmToLocate;

constructor TLocate.Create;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

destructor TLocate.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetCds: TClientDataSet;
begin
    try
      Result := FCds;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetComm: string;
begin
    try
      Result := FComm;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetField: string;
begin
    try
      Result := FField;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetFieldReturn: string;
begin
    try
      Result := FFieldReturn;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetGroupBy: string;
begin
    try
      Result := FGroupBy;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetIdConnect: Integer;
begin
    try
      Result := FIdConnect;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetKey: string;
begin
    try
      Result := FKey;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetOrder: string;
begin
    try
        Result := FOrder;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetReturn: Variant;
begin
    try
        Result := FReturn;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetReturnDataSet: TDataSet;
begin
    try
      Result := FReturnDataSet;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetReturnType: string;
begin
    try
      Result := FReturnType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetSearch(pType: Integer; pCds: TClientDataSet; pTable, pField,
  pKey, pFieldReturn, pTitle, pComm, pGroupBy, pOrder: string;
  pIdConnect:Integer ) : Variant;
begin
    try
      { pType:pCds:pTable:pField:pKey:pFieldReturn:pTitle:pComm:pOrder:
      pIdConnect}
      SetParam(pType,pCds,pTable,pField,pKey,pFieldReturn,pTitle,pComm,
      pGroupBy, pOrder, pIdConnect);
      Search;
      Result := qReturn;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetSearchDataSet(pType : Integer; pCds: TClientDataSet;
pTable, pField, pKey, pTitle, pComm, pGroupBy, pOrder: String; pIdConnect:
Integer ): TDataSet;
begin
    try
      { pType:pCds:pTable:pField:pKey:pFieldReturn:pTitle:pComm:pOrder:
      pIdConnect}
      SetParam(pType,pCds,pTable,pField,pKey,'',pTitle,pComm,pGroupBy,
      pOrder, pIdConnect);
      SetReturnType('DATASET');
      Search;
      Result := qReturnDataSet;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetTable: string;
begin
    try
      Result := FTable;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetTitle: string;
begin
    try
      Result := FTitle;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TLocate.GetType: Integer;
begin
    try
      Result := FType;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.Search;
begin
    try
        frmToLocate := TfrmToLocate.Create(Self);
        if (qType = 1) then
        begin
          //if (qCds <> Nil) then
            //frmToLocate.qCdsLoc := qCds;
        end;
        frmToLocate.SetSearch(
          qType,qTable,qField,qKey,qFieldReturn,qTitle,qComm,qOrder, qGroupBy,
          qIdConnect);
        if (frmToLocate.ShowModal = mrOk) then
        begin
            if (qReturnType = 'DATASET') then
            begin
                SetReturnDataSet(frmToLocate.dbgLocate.DataSource.DataSet);
            end else
               SetReturn(
                frmToLocate.dbgLocate.DataSource.DataSet.FieldByName(
                  qFieldReturn).Value);
        end;
        FreeAndNil(frmToLocate);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetCds(const Value: TClientDataSet);
begin
    try
        FCds := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetComm(const Value: string);
begin
    try
        FComm := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetField(const Value: string);
begin
    try
        FField := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetFieldReturn(const Value: string);
begin
    try
        FFieldReturn := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetGroupBy(const Value: string);
begin
    try
        FGroupBy := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetIdConnect(const Value: Integer);
begin
    try
        FIdConnect := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetKey(const Value: string);
begin
    try
        FKey := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetOrder(const Value: string);
begin
    try
        FOrder := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetParam(pType : Integer; pCds: TClientDataSet; pTable,
pField, pKey, pFieldReturn, pTitle, pComm, pGroupBy, pOrder :string;
pIdConnect:Integer);
begin
    try
        SetType(pType);
        SetCds(pCds);
        SetTable(pTable);
        SetField(pField);
        SetKey(pKey);
        SetFieldReturn(pFieldReturn);
        SetTitle(pTitle);
        SetComm(pComm);
        SetGroupBy(pGroupBy);
        SetOrder(pOrder);
        SetIdConnect(pIdConnect);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetReturn(const Value: Variant);
begin
    try
        FReturn := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetReturnDataSet(const Value: TDataSet);
begin
    try
        FReturnDataSet := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetReturnType(const Value: string);
begin
    try
        FReturnType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetTable(const Value: string);
begin
    try
        FTable := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetTitle(const Value: string);
begin
    try
        FTitle := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TLocate.SetType(const Value: Integer);
begin
    try
        FType := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.