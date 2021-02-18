unit uEmpresasModel;

interface

uses uMess, SysUtils, MIDASLIB;

    type TEmpresasModel = class
      private
        FTipoPessoa             : string;
        FNomeFantasia           : string;
        FRazaoSocial            : string;
        FNumCpfCnpj             : string;
        FEmail                  : string;
        FNumTelefone            : Integer;
        FNumCelular             : Integer;
        FSite                   : string;
        FLogradouroCep          : Integer;
        FLogradouro             : string;
        FLogradouroNum          : Integer;
        FLogradouroComp         : string;
        FLogradouroBairro       : string;
        FLogradouroUf           : string;
        FLogradouroCidade       : string;

      public
        function GetTipoPessoa             : string;
        function GetNomeFantasia           : string;
        function GetRazaoSocial            : string;
        function GetNumCpfCnpj             : string;
        function GetEmail                  : string;
        function GetNumTelefone            : Integer;
        function GetNumCelular             : Integer;
        function GetSite                   : string;
        function GetLogradouroCep          : Integer;
        function GetLogradouro             : string;
        function GetLogradouroNum          : Integer;
        function GetLogradouroComp         : string;
        function GetLogradouroBairro       : string;
        function GetLogradouroUf           : string;
        function GetLogradouroCidade       : string;

        procedure SetTipoPessoa(Const Value : string);
        procedure SetNomeFantasia(Const Value : string);
        procedure SetRazaoSocial(Const Value : string);
        procedure SetNumCpfCnpj(Const Value : string);
        procedure SetEmail(Const Value : string);
        procedure SetNumTelefone(Const Value : Integer);
        procedure SetNumCelular(Const Value : Integer);
        procedure SetSite(Const Value : string);
        procedure SetLogradouroCep(Const Value : Integer);
        procedure SetLogradouro(Const Value : string);
        procedure SetLogradouroNum(Const Value : Integer);
        procedure SetLogradouroComp(Const Value : string);
        procedure SetLogradouroBairro(Const Value : string);
        procedure SetLogradouroUf(Const Value : string);
        procedure SetLogradouroCidade(Const Value : string);

      published

        property qTipoPessoa : string read GetTipoPessoa write SetTipoPessoa;
        property qNomeFantasia : string read GetNomeFantasia write
          SetNomeFantasia;
        property qRazaoSocial : string read GetRazaoSocial write SetRazaoSocial;
        property qNumCpfCnpj : string read GetNumCpfCnpj write SetNumCpfCnpj;
        property qEmail : string read GetEmail write SetEmail;
        property qNumTelefone : Integer read GetNumTelefone write
          SetNumTelefone;
        property qNumCelular : Integer read GetNumCelular write SetNumCelular;
        property qSite : string read GetSite write SetSite;
        property qLogradouroCep : Integer read GetLogradouroCep write
          SetLogradouroCep;
        property qLogradouro : string read GetLogradouro write SetLogradouro;
        property qLogradouroNum : Integer read GetLogradouroNum write
          SetLogradouroNum;
        property qLogradouroComp : String read GetLogradouroComp write
          SetLogradouroComp;
        property qLogradouroBairro : String read GetLogradouroBairro write
          SetLogradouroBairro;
        property qLogradouroUf : string read GetLogradouroUf write
          SetLogradouroUf;
        property qLogradouroCidade : string read GetLogradouroCidade write
          SetLogradouroCidade;
    end;

implementation

{ TEmpresasModel }

uses uSetiConfig;

function TEmpresasModel.GetEmail: String;
begin
    try
        Result := FEMAIL;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroCidade: string;
begin
    try
        Result := FLogradouroCidade;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroUf: string;
begin
    try
        Result := FLogradouroUf;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouro: String;
begin
    try
        Result := FLogradouro;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroBairro: String;
begin
    try
        Result := FLogradouroBairro;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroCep: Integer;
begin
    try
        Result := FLogradouroCep;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroComp: String;
begin
    try
        Result := FLogradouroComp;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetLogradouroNum: Integer;
begin
    try
        Result := FLogradouroNum;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetNomeFantasia: String;
begin
    try
        Result := FNomeFantasia;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetNumCelular: Integer;
begin
    try
        Result := FNumCelular;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetNumCpfCnpj: String;
begin
    try
        Result := FNumCpfCnpj;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetNumTelefone: Integer;
begin
    try
        Result := FNumTelefone;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetRazaoSocial: String;
begin
    try
        Result := FRazaoSocial;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetSite: String;
begin
    try
        Result := FSite;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasModel.GetTipoPessoa: String;
begin
    try
        Result := FTipoPessoa;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetEmail(const Value: String);
begin
    try
      if (Value = '') then
        FEmail := SConfigNullValueStringFields else
      FEmail :=  UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroCidade(const Value: string);
begin
    try
      if (Value = '') then
        FLogradouroCidade := SConfigNullValueStringFields else
      FLogradouroCidade := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroUf(const Value: string);
begin
    try
      if (Value = '') then
        FLogradouroUf := SConfigNullValueStringFields else
      FLogradouroUf := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouro(const Value: String);
begin
    try
      if (Value = '') then
        FLogradouro := SConfigNullValueStringFields else
      FLogradouro := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroBairro(const Value: String);
begin
    try
      if (Value = '') then
        FLogradouroBairro := SConfigNullValueStringFields else
      FLogradouroBairro := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroCep(const Value: Integer);
begin
    try
      if (Value = -1) then
        FLogradouroCep := SConfigNullValueIntFields else
      FLogradouroCep := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroComp(const Value: String);
begin
    try
      if (Value = '') then
        FLogradouroComp := SConfigNullValueStringFields else
      FLogradouroComp := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetLogradouroNum(const Value: Integer);
begin
    try
      if (Value = -1) then
        FLogradouroNum := SConfigNullValueIntFields else
      FLogradouroNum := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetNomeFantasia(const Value: String);
begin
    try
      if (Value = '') then
      begin
          SetiMens(2,'Nome fantasia não informado.');
          Exit;
      end else
      FNomeFantasia := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetNumCelular(const Value: Integer);
begin
    try
      if (Value = -1) then
        FNumCelular := SConfigNullValueIntFields else
      FNumCelular := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetNumCpfCnpj(const Value: String);
begin
    try
      if (Value = '') then
      begin
          SetiMens(2,'CPF/CNPJ não informado.');
          Exit;
      end else
      FNumCpfCnpj := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetNumTelefone(const Value: Integer);
begin
    try
      if (Value = -1) then
        FNumTelefone := SConfigNullValueIntFields else
      FNumTelefone := Value;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetRazaoSocial(const Value: String);
begin
    try
      if (Value = '') then
      begin
          SetiMens(2,'A razão social não foi informada.');
          Exit;
      end else
      FRazaoSocial := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetSite(const Value: String);
begin
    try
      if (Value = '') then
        FSite := SConfigNullValueStringFields else
      FSite := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TEmpresasModel.SetTipoPessoa(const Value: String);
begin
    try
      if (Value = '') then
      begin
          SetiMens(2,'O tipo da pessoa não foi informado');
          Exit;
      end else
        FTipoPessoa := UpperCase(Value);
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
