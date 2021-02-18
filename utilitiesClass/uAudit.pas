unit uAudit;

interface

uses Generics.Collections;

type
  TModulo = class;
  TSistema = class;

  TAcao = class
  private
    FNome: string;
    FModulo: TModulo;
    FDescricao: string;
    procedure SetNome(const Value: string);
    procedure SetDescricao(const Value: string);
  public
    constructor Create(modulo: TModulo; acao: string);
    property Nome: string read FNome write SetNome;
    property Descricao: string read FDescricao write SetDescricao;
    property Modulo: TModulo read FModulo;
  end;

  TModulo = class
  private
    FNome: string;
    FSistema: TSistema;
    FDescricao: string;
    FAcoes: TList<TAcao>;
    procedure SetDescricao(const Value: string);
    procedure SetNome(const Value: string);
  public
    constructor Create(sistema: TSistema; modulo: string);
    destructor Destroy; override;
    property Nome: string read FNome write SetNome;
    property Descricao: string read FDescricao write SetDescricao;
    property Sistema: TSistema read FSistema;
    property Acoes: TList<TAcao> read FAcoes;
  end;

  TSistema = class
  private
    FNome: string;
    FSistema: TSistema;
    FDescricao: string;
    FModulos: TList<TModulo>;
    procedure SetDescricao(const Value: string);
    procedure SetNome(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;
    property Nome: string read FNome write SetNome;
    property Descricao: string read FDescricao write SetDescricao;
    property Modulos: TList<TModulo> read FModulos;
  end;

  TAudit = class
  private
    FSistema: TSistema;
    class var FAudit: TAudit;
    constructor Create;
  public
    destructor Destroy; override;
    class function Instance: TAudit;
    function GetModulo(nome:string): TModulo;
    function GetAcao(modulo, acao:string): TAcao;
    property Sistema: TSistema read FSistema;
  end;


implementation

{ TAcao }

constructor TAcao.Create(modulo: TModulo; acao: string);
begin
  inherited Create;
  FModulo := modulo;
  FModulo.Acoes.Add(self);
  FNome := acao;
end;

procedure TAcao.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TAcao.SetNome(const Value: string);
begin
  FNome := Value;
end;

{ TModulo }

constructor TModulo.Create(sistema: TSistema; modulo: string);
begin
  inherited Create;
  FSistema := sistema;
  FSistema.Modulos.Add(self);
  FAcoes := TList<TAcao>.Create;
  FNome := modulo;
end;

destructor TModulo.Destroy;
var
  acao: TAcao;
begin
  for acao in FAcoes do
    acao.Free;
  FAcoes.Free;
  inherited;
end;

procedure TModulo.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TModulo.SetNome(const Value: string);
begin
  FNome := Value;
end;

{ TSistema }

constructor TSistema.Create;
begin
  inherited Create;
  FModulos := TList<TModulo>.Create;
end;

destructor TSistema.Destroy;
var
  modulo: TModulo;
begin
  for modulo in FModulos do
    modulo.Free;
  FModulos.Free;
  inherited;
end;

procedure TSistema.SetDescricao(const Value: string);
begin
  FDescricao := value;
end;

procedure TSistema.SetNome(const Value: string);
begin
  FNome := value;
end;

{ TAudit }

constructor TAudit.Create;
begin
  inherited Create;
  FSistema := TSistema.Create;
end;

destructor TAudit.Destroy;
begin
  FSistema.Free;
  inherited;
end;

function TAudit.GetAcao(modulo, acao: string): TAcao;
var act: TAcao;
var mdl: TModulo;
begin
  mdl := GetModulo(modulo);
  if mdl = nil then exit(nil);

  for act in mdl.Acoes do
    if act.Nome = acao then
      exit(act);

  result := nil;
end;

function TAudit.GetModulo(nome:string): TModulo;
var modulo: TModulo;
begin
  for modulo in FSistema.Modulos do
    if modulo.Nome = nome then
      exit(modulo);
  result := nil;
end;

class function TAudit.Instance: TAudit;
begin
  if FAudit = nil then
    FAudit := TAudit.Create;
  result := FAudit;
end;

end.
