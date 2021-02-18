unit uInitialSettingModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TInitialSettingModel = class
      private
        FNome   : string;
        FLogin  : string;
        FSenha  : string;
        FSenhaC : string;
        FEmail  : string;
        FVal : Boolean;
      public
        function GetNome : string;
        function GetLogin : string;
        function GetSenha : string;
        function GetSenhaC : string;
        function GetEmail : string;

        procedure SetNome(Const Value : string);
        procedure SetLogin(Const Value : string);
        procedure SetSenha(Const Value : string);
        procedure SetSenhaC(Const Value : string);
        procedure SetEmail(Const Value : string);
      published
        property qNome : string read GetNome write SetNome;
        property qLogin : string read GetLogin write SetLogin;
        property qSenha : string read GetSenha write SetSenha;
        property qSenhaC : string read GetSenhaC write SetSenhaC;
        property qEmail : string read GetEmail write SetEmail;
        property qVal : Boolean read FVal write FVal;

    end;

implementation

{ TInitialSettingModel }


uses uSetiUseful;
function TInitialSettingModel.GetEmail: string;
begin
    try
        Result := FEmail;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingModel.GetLogin: string;
begin
    try
        Result := FLogin;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingModel.GetNome: string;
begin
    try
        Result := FNome;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingModel.GetSenha: string;
begin
    try
        Result := FSenha;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingModel.GetSenhaC: string;
begin
    try
        Result := FSenhaC;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TInitialSettingModel.SetEmail(const Value: string);
begin
     try
        if (Value = '') then
        begin
            SetiMens(1,'Email não informado.');
            Abort;
        end else
        if NOT (SetiUsefulValidaEMail(Value)) then
        begin
            SetiMens(1,'Email inválido.');
            Exit;
        end else
          FEmail := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TInitialSettingModel.SetLogin(const Value: string);
begin
     try
        if (Value = '') then
        begin
            SetiMens(1,'Login não informado.');
            Exit;
        end else
          FLogin := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TInitialSettingModel.SetNome(const Value: string);
begin
    try
      if (Value = '') then
      begin
        SetiMens(1,'Nome não informado.');
        Exit;
      end else
        FNome := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TInitialSettingModel.SetSenha(const Value: string);
begin
    try
       if (Value = '') then
       begin
          SetiMens(1,'Senha não informada.');
          Exit;
       end else
        FSenha := SetiUsefulCriptografa(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TInitialSettingModel.SetSenhaC(const Value: string);
var
  formatValue : string;
begin
    try
      if (Value = '') then
      begin
        SetiMens(1,'É necessário confirmar a senha.');
        Exit;
      end else
      if (qSenha <> '') then
      begin
        formatValue := SetiUsefulCriptografa(Value);
        if (qSenha <> formatValue) then
        begin
          SetiMens(1,'Senha não confere.');
          Exit;
        end else
          FSenhaC := formatValue;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
