unit uLocate;

interface

uses uFSDialogs, SysUtils, Data.DB, MIDASLIB, Datasnap.Provider, Vcl.Controls,
ADODB, SqlExpr, DBClient, Dialogs, System.Classes;

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
        FWhereAnd : string;
        FOrder : string;
        FGroupBy : string;
        FReturnType : string;
        FReturnDataSet : TDataSet;
        FReturn : Variant;
        FFieldCaption : string;
        FIdConnect : Integer;
        FCdsArray : TClientDataSet;
        FSearchRetDataSet: TDataSet;
        FSearchType: Integer;
        FIdParamProvider: Integer;
        FSearchingReturnType: Integer;
        FSearchingReturnDts: TDataSet;
        FSearchingReturnFieldName: string;
        FSearchingReturnKeyFieldName: string;
        FSearchingReturnFieldValue: Variant;
        FSearchingReturnKeyFieldValue: Variant;

        function GetType : Integer;
        function GetCds : TClientDataSet;
        function GetTable : string;
        function GetField : string;
        function GetKey : string;
        function GetFieldReturn : string;
        function GetTitle : string;
        function GetComm : string;
        function GetWhereAnd : string;
        function GetOrder : string;
        function GetGroupBy : string;
        function GetReturnType : string;
        function GetReturnDataSet : TDataSet;
        function GetReturn : Variant;
        function GetFieldCaption : string;
        function GetIdConnect : Integer;
        function GetCdsArray : TClientDataSet;

        procedure Search;
        procedure SetParam(pType : Integer;
                           pCds:TClientDataSet;
                           pTable:string;
                           pField:string;
                           pKey:string;
                           pFieldReturn:string;
                           pTitle:string;
                           pComm:string;
                           pWhereAnd : string;
                           pGroupBy:string;
                           pOrder:string;
                           pFieldCaption:string;
                           pIdConnect:Integer;
                           pCdsArray : TClientDataSet);
        procedure SetType(Const Value : Integer);
        procedure SetCds(Const Value : TClientDataSet);
        procedure SetTable(Const Value  : string);
        procedure SetField(Const Value : string);
        procedure SetKey(Const Value : string);
        procedUre SetFieldReturn(Const Value : string);
        procedure SetTitle(Const Value : string);
        procedure SetComm(Const Value : string);
        procedure SetWhereAnd(Const Value : string);
        procedure SetOrder(Const Value : string);
        procedure SetGroupBy(Const Value : string);
        procedure SetReturnType(Const Value: string);
        procedure SetReturnDataSet(Const Value : TDataSet);
        procedure SetReturn(Const Value : Variant);
        procedure SetFieldCaption(Const Value : string);
        procedure SetIdConnect(Const Value : Integer);
        procedure SetCdsArray(Const Value : TClientDataSet);
        procedure SetSearchRetDataSet(const Value: TDataSet);
        procedure SetIdParamProvider(const Value: Integer);
        procedure SetSearchingReturnFieldName(const Value: string);
        procedure SetSearchingReturnKeyFieldName(const Value: string);
        procedure SetSearchingReturnFieldValue(const Value: Variant);
        procedure SetSearchingReturnKeyFieldValue(const Value: Variant);

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
                              pWhereAnd:string = '';
                              pGroupBy:string = '';
                              pOrder:string = '';
                              pFieldCaption:string = '';
                              pIdConnect:Integer = 0;
                              pCdsArray : TClientDataSet = NIL) : Variant;
        function GetSearchDataSet(pType : Integer = -1;
                              pCds:TClientDataSet = NIL;
                              pTable:string = '';
                              pField:String = '';
                              pKey:String = '';
                              pTitle:String = '';
                              pComm:string = '';
                              pWhereAnd : string = '';
                              pGroupBy:string = '';
                              pOrder:string = '';
                              pFieldCaption:string = '';
                              pIdConnect:Integer = 0) : TDataSet;
        function GetSearchDataSetProvider(pType : Integer = -1;
                              pCds:TClientDataSet = NIL;
                              pTable:string = '';
                              pField:String = '';
                              pKey:String = '';
                              pTitle:String = '';
                              pComm:string = '';
                              pCdsArray : TClientDataSet = nil;
                              pWhereAnd: string = '';
                              pGroupBy:string = '';
                              pOrder:string = '';
                              pFieldCaption:string = '';
                              pIdConnect:Integer = 0) : TDataSet;

        procedure SearchingToLocate(pParamId:Integer);
        procedure SetSearchType(const Value: Integer);
        procedure SetSearchingReturnType(const Value: Integer);
        procedure SetSearchingReturnDts(const Value: TDataSet);

        property qType : Integer read GetType write SetType;
        property qCds : TClientDataSet read GetCds write SetCds;
        property qTable : string read GetTable write SetTable;
        property qField : string read GetField write SetField;
        property qKey : string read GetKey write SetKey;
        property qFieldReturn : string read GetFieldReturn write SetFieldReturn;
        property qTitle : string read GetTitle write SetTitle;
        property qComm : string read GetComm write SetComm;
        property qWhereAnd : string read GetWhereAnd write SetWhereAnd;
        property qOrder : string read GetOrder write SetOrder;
        property qGroupBy : string read GetGroupBy write SetGroupBy;
        property qReturnType: string read GetReturnType write SetReturnType;
        property qFieldCaption: string read GetFieldCaption
        write SetFieldCaption;
        property qIdConnect: Integer read GetIdConnect write SetIdConnect;
        property qCdsArray: TClientDataSet read GetCdsArray write SetCdsArray;
        property qSearchType : Integer read FSearchType write SetSearchType;
        property qIdParamProvider : Integer read FIdParamProvider
        write SetIdParamProvider;
        property qSearchRetDataSet : TDataSet read FSearchRetDataSet
        write SetSearchRetDataSet;
        property qReturnDataSet : TDataSet read GetReturnDataSet write
        SetReturnDataSet;
        property qReturn: Variant read GetReturn write SetReturn;
        property qSearchingReturnType : Integer read FSearchingReturnType
        write SetSearchingReturnType;
        property qSearchingReturnDts : TDataSet read FSearchingReturnDts
        write SetSearchingReturnDts;
        property qSearchingReturnFieldName : string
        read FSearchingReturnFieldName write SetSearchingReturnFieldName;
        property qSearchingReturnKeyFieldName : string
        read FSearchingReturnKeyFieldName write SetSearchingReturnKeyFieldName;
        property qSearchingReturnFieldValue : Variant
        read FSearchingReturnFieldValue write SetSearchingReturnFieldValue;
        property qSearchingReturnKeyFieldValue : Variant
        read FSearchingReturnKeyFieldValue
        write SetSearchingReturnKeyFieldValue;

    end;

implementation

{ TLocate }

uses ufrmToLocate, uLocateDAO;

constructor TLocate.Create;
begin
    try

    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

destructor TLocate.Destroy;
begin
    try

    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetCds: TClientDataSet;
begin
    try
      Result := FCds;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetCdsArray: TClientDataSet;
begin
    Result := FCdsArray;
end;

function TLocate.GetComm: string;
begin
    try
      Result := FComm;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetField: string;
begin
    try
      Result := FField;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetFieldCaption: string;
begin
    Result := FFieldCaption;
end;

function TLocate.GetFieldReturn: string;
begin
    try
      Result := FFieldReturn;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetGroupBy: string;
begin
    try
      Result := FGroupBy;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetIdConnect: Integer;
begin
    try
      Result := FIdConnect;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetKey: string;
begin
    try
      Result := FKey;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetOrder: string;
begin
    try
        Result := FOrder;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetReturn: Variant;
begin
    try
        Result := FReturn;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetReturnDataSet: TDataSet;
begin
    try
      Result := FReturnDataSet;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetReturnType: string;
begin
    try
      Result := FReturnType;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetSearch(pType: Integer; pCds: TClientDataSet; pTable, pField,
  pKey, pFieldReturn, pTitle, pComm, pWhereAnd, pGroupBy, pOrder: string;
  pFieldCaption : string; pIdConnect:Integer; pCdsArray : TClientDataSet
   ) : Variant;
begin
    try
      SetParam(pType,pCds,pTable,pField,pKey,pFieldReturn,pTitle,pComm,
      pWhereAnd, pGroupBy, pOrder, pFieldCaption, pIdConnect,pCdsArray);
      Search;
      Result := qReturn;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetSearchDataSet(pType : Integer; pCds: TClientDataSet;
pTable, pField, pKey, pTitle, pComm, pWhereAnd, pGroupBy, pOrder, pFieldCaption:
String; pIdConnect: Integer): TDataSet;
begin
    try
      SetParam(pType,pCds,pTable,pField,pKey,'',pTitle,pComm,pWhereAnd,pGroupBy,
      pOrder, pFieldCaption, pIdConnect,Nil);
      SetReturnType('DATASET');
      Search;
      Result := qReturnDataSet;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetSearchDataSetProvider(pType : Integer; pCds:TClientDataSet;
pTable:string; pField:String; pKey:String; pTitle:String; pComm:string;
pCdsArray : TClientDataSet; pWhereAnd, pGroupBy:string; pOrder:string;
pFieldCaption: string; pIdConnect:Integer
): TDataSet;
var
  i : Integer;
  c : Integer;
  name : string;
  co : Integer;
begin
      Result := nil;
      SetParam(pType,pCds,pTable,pField,pKey,'',pTitle,pComm,pWhereAnd,pGroupBy,
      pOrder, pFieldCaption, pIdConnect,pCdsArray);
      SetReturnType('DATASET');
      Search;
      Result := qReturnDataSet;
end;

function TLocate.GetTable: string;
begin
    try
      Result := FTable;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetTitle: string;
begin
    try
      Result := FTitle;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetType: Integer;
begin
    try
      Result := FType;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TLocate.GetWhereAnd: string;
begin
    Result := FWhereAnd;
end;

procedure TLocate.Search;
begin
    try
        frmToLocate := TfrmToLocate.Create(Self);
        frmToLocate.SetSearch(
          qType,qTable,qField,qKey,qFieldReturn,qTitle,qComm,qWhereAnd,qOrder,
          qGroupBy,qFieldCaption,qIdConnect,qCdsArray);
        frmToLocate.SetSearchType(0);
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
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SearchingToLocate(pParamId:Integer);
begin
    try
      frmToLocate := TfrmToLocate.Create(Self);
      frmToLocate.SetSearchingParamId(pParamId);
      frmToLocate.SetSearchType(1);
      if (frmToLocate.ShowModal = mrOk) then
      begin
        SetSearchingReturnFieldName(frmToLocate.qSearchingReturnFieldName);
        SetSearchingReturnKeyFieldName(
          frmToLocate.qSearchingReturnKeyFieldName);
        SetSearchingReturnFieldValue(frmToLocate.qSearchingReturnFieldValue);
        SetSearchingReturnKeyFieldValue(
          frmToLocate.qSearchingReturnKeyFieldValue);
        SetSearchingReturnType(frmToLocate.qSearchingReturnType);
        SetSearchingReturnDts(frmToLocate.qSearchingReturnDts);
      end;
    finally

    end;
end;

procedure TLocate.SetCds(const Value: TClientDataSet);
begin
    try
        FCds := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetCdsArray(const Value: TClientDataSet);
begin
    FCdsArray := Value;
end;

procedure TLocate.SetComm(const Value: string);
begin
    try
        FComm := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetField(const Value: string);
begin
    try
        FField := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetFieldCaption(const Value: string);
begin
    FFieldCaption := Value;
end;

procedure TLocate.SetFieldReturn(const Value: string);
begin
    try
        FFieldReturn := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetGroupBy(const Value: string);
begin
    try
        FGroupBy := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetIdConnect(const Value: Integer);
begin
    try
        FIdConnect := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetIdParamProvider(const Value: Integer);
begin
    FIdParamProvider := Value;
end;

procedure TLocate.SetKey(const Value: string);
begin
    try
        FKey := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetOrder(const Value: string);
begin
    try
        FOrder := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetParam(pType : Integer; pCds: TClientDataSet; pTable,
pField, pKey, pFieldReturn, pTitle, pComm, pWhereAnd, pGroupBy, pOrder :string;
pFieldCaption : string; pIdConnect:Integer; pCdsArray : TClientDataSet);
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
        SetWhereAnd(pWhereAnd);
        SetGroupBy(pGroupBy);
        SetOrder(pOrder);
        SetFieldCaption(pFieldCaption);
        SetIdConnect(pIdConnect);
        SetCdsArray(pCdsArray);
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetSearchingReturnFieldValue(const Value: Variant);
begin
    FSearchingReturnFieldValue := Value;
end;

procedure TLocate.SetSearchingReturnKeyFieldValue(const Value: Variant);
begin
    FSearchingReturnKeyFieldValue := Value;
end;

procedure TLocate.SetSearchingReturnKeyFieldName(const Value: string);
begin
    FSearchingReturnKeyFieldName := Value;
end;

procedure TLocate.SetReturn(const Value: Variant);
begin
    try
        FReturn := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetReturnDataSet(const Value: TDataSet);
begin
    try
        FReturnDataSet := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetReturnType(const Value: string);
begin
    try
        FReturnType := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetSearchingReturnDts(const Value: TDataSet);
begin
    FSearchingReturnDts := Value;
end;

procedure TLocate.SetSearchingReturnFieldName(const Value: string);
begin
    FSearchingReturnFieldName := Value;
end;

procedure TLocate.SetSearchingReturnType(const Value: Integer);
begin
    FSearchingReturnType := Value;
end;

procedure TLocate.SetSearchRetDataSet(const Value: TDataSet);
begin
    FSearchRetDataSet := Value;
end;

procedure TLocate.SetSearchType(const Value: Integer);
begin
    FSearchType := Value;
end;

procedure TLocate.SetTable(const Value: string);
begin
    try
        FTable := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetTitle(const Value: string);
begin
    try
        FTitle := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetType(const Value: Integer);
begin
    try
        FType := Value;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TLocate.SetWhereAnd(const Value: string);
begin
    FWhereAnd := Value;
end;

end.

