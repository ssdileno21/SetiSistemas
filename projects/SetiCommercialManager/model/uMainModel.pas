unit uMainModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TMainModel = class
      private
        FLogadoId : Integer;
        FLogadoLogin : string;
        FLogadoNome : string;
      public
        function GetLogadoId : Integer;
        function GetLogadoLogin : string;
        function GetLogadoNome : string;
        procedure SetLogadoId(Const Value : Integer = -1);
        procedure SetLogadoLogin(Const Value : string = '');
        procedure SetLogadoNome(Const Value : string = '');
      published
        property qLogadoId : Integer read GetLogadoId write SetLogadoId;
        property qLogadoLogin : string read GetLogadoLogin write SetLogadoLogin;
        property qLogadoNome : string read GetLogadoNome write SetLogadoNome;
    end;

implementation

{ TMainModel }

function TMainModel.GetLogadoId: Integer;
begin
    try
        Result := FLogadoId;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMainModel.GetLogadoLogin: string;
begin
    try
        Result := FLogadoLogin;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TMainModel.GetLogadoNome: string;
begin
    try
        Result := FLogadoNome;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TMainModel.SetLogadoId(const Value: Integer);
begin
    try
       FLogadoId := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TMainModel.SetLogadoLogin(const Value: string);
begin
    try
       FLogadoLogin := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TMainModel.SetLogadoNome(const Value: string);
begin
    try
       FLogadoNome := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
