unit uPedidoCompraModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TPedidoCompraModel = class
      private
        FId : Integer;
        FName : string;
        FCaption : string;
        FTag : string;
        FStatus : string;

        FNewId : Integer;
        FNewName : string;
        FNewCaption : string;
        FNewTag : string;
        FNewStatus : string;

        FState : Integer;
      public
        function GetId : Integer;
        function GetName : string;
        function GetCaption : string;
        function GetTag : string;
        function GetStatus : string;

        function GetNewId : Integer;
        function GetNewName : string;
        function GetNewCaption : string;
        function GetNewTag : string;
        function GetNewStatus : string;

        function GetState : Integer;

        procedure SetId(Const Value : Integer);
        procedure SetName(Const Value : string);
        procedure SetCaption(Const Value : string);
        procedure SetTag(Const Value : string);
        procedure SetStatus(Const Value : string);

        procedure SetNewId(Const Value : Integer);
        procedure SetNewName(Const Value : string);
        procedure SetNewCaption(Const Value : string);
        procedure SetNewTag(Const Value : string);
        procedure SetNewStatus(Const Value : string);

        procedure SetState(Const Value : Integer);

      published
        property qId : Integer read GetId write SetId;
        property qName : string read GetName write SetName;
        property qCaption : string read GetCaption write SetCaption;
        property qTag : string read GetTag write SetTag;
        property qStatus : string read GetStatus write SetStatus;

        property qNewId : Integer read GetNewId write SetNewId;
        property qNewName : string read GetNewName write SetNewName;
        property qNewCaption : string read GetNewCaption write SetNewCaption;
        property qNewTag : string read GetNewTag write SetNewTag;
        property qNewStatus : string read GetNewStatus write SetNewStatus;

        property qState : Integer read GetState write SetState;


    end;

implementation

{ TPedidoCompraModel }

function TPedidoCompraModel.GetCaption: string;
begin
    try
        Result := FCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetId: Integer;
begin
    try
        Result := FId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetName: string;
begin
    try
        Result := FName;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetNewCaption: string;
begin
    try
        Result := FNewCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetNewId: Integer;
begin
    try
        Result := FNewId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetNewName: string;
begin
    try
        Result := FNewName;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetNewStatus: string;
begin
    try
        Result := FNewStatus;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetNewTag: string;
begin
    try
        Result := FNewTag;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetState: Integer;
begin
    try
        Result := FState;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetStatus: string;
begin
    try
        Result := FStatus;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TPedidoCompraModel.GetTag: string;
begin
    try
        Result := FTag;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetCaption(const Value: string);
begin
    try
        FCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetId(const Value: Integer);
begin
    try
        FId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetName(const Value: string);
begin
    try
      FName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetNewCaption(const Value: string);
begin
    try
      FNewCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetNewId(const Value: Integer);
begin
    try
      FNewId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetNewName(const Value: string);
begin
    try
      FNewName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetNewStatus(const Value: string);
begin
    try
      FNewStatus := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetNewTag(const Value: string);
begin
    try
      FNewTag := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetState(const Value: Integer);
begin
    try
      FState := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetStatus(const Value: string);
begin
    try
      FStatus := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TPedidoCompraModel.SetTag(const Value: string);
begin
    try
      FTag := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

end.