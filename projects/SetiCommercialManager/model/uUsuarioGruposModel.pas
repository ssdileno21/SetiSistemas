unit uUsuarioGruposModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TUsuarioGruposModel = class
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

{ TUsuarioGruposModel }

function TUsuarioGruposModel.GetCaption: string;
begin
    try
        Result := FCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TUsuarioGruposModel.GetId: Integer;
begin
    try
        Result := FId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TUsuarioGruposModel.GetName: string;
begin
    try
        Result := FName;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TUsuarioGruposModel.GetNewCaption: string;
begin
    try
        Result := FNewCaption;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TUsuarioGruposModel.GetNewId: Integer;
begin
    try
        Result := FNewId;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TUsuarioGruposModel.GetNewName: string;
begin
  Result := FNewName;
end;

function TUsuarioGruposModel.GetNewStatus: string;
begin
  Result := FNewStatus;
end;

function TUsuarioGruposModel.GetNewTag: string;
begin
  Result := FNewTag;
end;

function TUsuarioGruposModel.GetState: Integer;
begin
    Result := FState;
end;

function TUsuarioGruposModel.GetStatus: string;
begin
    Result := FStatus;
end;

function TUsuarioGruposModel.GetTag: string;
begin
    try
        Result := FTag;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetCaption(const Value: string);
begin
    try
        FCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetId(const Value: Integer);
begin
    try
        FId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetName(const Value: string);
begin
    try
      FName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetNewCaption(const Value: string);
begin
    try
      FNewCaption := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetNewId(const Value: Integer);
begin
    try
      FNewId := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetNewName(const Value: string);
begin
    try
      FNewName := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetNewStatus(const Value: string);
begin
    try
      FNewStatus := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetNewTag(const Value: string);
begin
    try
      FNewTag := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetState(const Value: Integer);
begin
    try
      FState := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetStatus(const Value: string);
begin
    try
      FStatus := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TUsuarioGruposModel.SetTag(const Value: string);
begin
    try
      FTag := Value;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

end.
