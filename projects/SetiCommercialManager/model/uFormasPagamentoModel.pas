unit uFormasPagamentoModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TFormasPagamentoModel =  class
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

{ TFormasPagamentoModel }

function TFormasPagamentoModel.GetCaption: string;
begin
    try
        Result := FCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetId: Integer;
begin
    try
        Result := FId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetName: string;
begin
    try
        Result := FName;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetNewCaption: string;
begin
    try
        Result := FNewCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetNewId: Integer;
begin
    try
        Result := FNewId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetNewName: string;
begin
    try
        Result := FNewName;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetNewStatus: string;
begin
    try
        Result := FNewStatus;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetNewTag: string;
begin
    try
        Result := FNewTag;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetState: Integer;
begin
    try
        Result := FState;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetStatus: string;
begin
    try
        Result := FStatus;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TFormasPagamentoModel.GetTag: string;
begin
    try
        Result := FTag;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetCaption(const Value: string);
begin
    try
        FCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetId(const Value: Integer);
begin
    try
        FId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetName(const Value: string);
begin
    try
      FName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetNewCaption(const Value: string);
begin
    try
      FNewCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetNewId(const Value: Integer);
begin
    try
      FNewId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetNewName(const Value: string);
begin
    try
      FNewName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetNewStatus(const Value: string);
begin
    try
      FNewStatus := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetNewTag(const Value: string);
begin
    try
      FNewTag := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetState(const Value: Integer);
begin
    try
      FState := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetStatus(const Value: string);
begin
    try
      FStatus := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TFormasPagamentoModel.SetTag(const Value: string);
begin
    try
      FTag := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

end.
