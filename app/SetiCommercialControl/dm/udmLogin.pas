unit udmLogin;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  uSetiConnects, MIDASLIB, uFSDialogs;

type
  TdmLogin = class(TDataModule)
    sqlLogin: TSQLQuery;
  private
    { Private declarations }
    FConnects : TSetiConnects;
  public
    { Public declarations }
    function ExisteLogin(Login: string = '';Senha:string = '';SoLogin:
    Boolean=False) : Boolean;
    function RetornaIdLogin(Login:string) : Integer;
    function RetornaNomeUsuario(Login:string) : String;
    function RetornaSenhaUsuario(Login:string) : String;
    property qConnects : TSetiConnects read FConnects write FConnects;
  end;

var
  dmLogin: TdmLogin;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uSetiConfig;

{$R *.dfm}

{ TdmLogin }

function TdmLogin.ExisteLogin(Login: string; Senha: string;SoLogin:Boolean):
Boolean;
begin
    try
        Result := False;

        if (Login <> '') and (Senha <> '') then
        begin
          if (SConfigTypeDB = 'TSQL') then
          begin
            try
              sqlLogin.Close;
              sqlLogin.SQL.Clear;
              qConnects := TSetiConnects.Create;
              sqlLogin.SQLConnection := qConnects.ConnectsFIREBIRD(False);
              sqlLogin.SQL.Add('SELECT * FROM TBCADUSUARIO ');
              sqlLogin.SQL.Add('WHERE LOGIN = :LOGIN ');
              if (SoLogin = False) then
                sqlLogin.SQL.Add('AND SENHA = :SENHA ');
              sqlLogin.Params.ParamByName('LOGIN').AsString := Login;
              if (SoLogin = False) then
                sqlLogin.Params.ParamByName('SENHA').AsString := Senha;
              sqlLogin.Open;
              if NOT sqlLogin.IsEmpty then
                Result := True;
            finally
              sqlLogin.Close;
              qConnects.Free;
            end;
          end;
        end;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TdmLogin.RetornaIdLogin(Login: string): Integer;
var
  sql : TSQLQuery;
begin
    try
      Result := -1;
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT FIRST 1 ID FROM TBCADUSUARIO U ');
      sql.SQL.Add( ' WHERE U.LOGIN = '+QuotedStr(Login));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('ID').AsInteger;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TdmLogin.RetornaNomeUsuario(Login: string): String;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT FIRST 1 NOME FROM TBCADUSUARIO U ');
      sql.SQL.Add( ' WHERE U.LOGIN = '+QuotedStr(Login));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('NOME').AsString;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

function TdmLogin.RetornaSenhaUsuario(Login: string): String;
var
  sql : TSQLQuery;
begin
    try
      Result := '';
      qConnects := TSetiConnects.Create;
      sql := TSQLQuery.Create(Nil);
      sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sql.SQL.Clear;
      sql.sql.Add( ' SELECT FIRST 1 SENHA FROM TBCADUSUARIO U ');
      sql.SQL.Add( ' WHERE U.LOGIN = '+QuotedStr(Login));
      sql.Open;
      if NOT (sql.IsEmpty) then
        Result := sql.FieldByName('SENHA').AsString;
    finally
      sql.Close;
      sql.Free;
      qConnects.Free;
    end;
end;

end.
