unit udmLogin;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  uSetiConnects;

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
  published
    property qConnects : TSetiConnects read FConnects write FConnects;
  end;

var
  dmLogin: TdmLogin;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uMess, uSetiConfig;

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
              sqlLogin.SQL.Add('SELECT * FROM TBGERCADUSUARIOS ');
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
        SetiMens(0,e.Message);
    end;
end;

end.