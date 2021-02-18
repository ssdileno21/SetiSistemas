unit uMainDao;

interface

uses uMainModel, uMess, SysUtils, uSetiConfig, uSetiConnects, SqlExpr,
ADODB, DB, Provider, DBClient, DBGrids, System.Variants, Dialogs;

    type TMainDao = class(TProvider)
      private
          FConnects : TSetiConnects;
      public
          Constructor Create;
          Destructor Destroy; Virtual;
          procedure SetInformacaoesUsuarioLogado(Model:TMainModel);
      published
          property qConnects : TSetiConnects read FConnects write FConnects;
    end;

implementation

{ TMainDao }

uses udmLogin, udmComponentsDao;

constructor TMainDao.Create;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

destructor TMainDao.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

procedure TMainDao.SetInformacaoesUsuarioLogado(Model:TMainModel);
var
    sql : TSQLQuery;
    conn : TSQLConnection;
begin
    try
      with (Model) do
      begin
        if (qLogadoLogin <> '') then
        begin
          try
            qConnects := TSetiConnects.Create;
            conn := TSQLConnection.Create(Nil);
            conn := qConnects.ConnectsFIREBIRD(False);
            dmComponentsDao := TdmComponentsDao.Create(Nil);
            sql := TSQLQuery.Create(Nil);
            sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
            sql.Close;
            sql.SQL.Add('SELECT * FROM SP_LISTA_USUARIOS');
            sql.SQL.Add('( ');
            sql.SQL.Add('NULL,');
            sql.SQL.Add('NULL,');
            if (qLogadoLogin <> '') then
              sql.SQL.Add(':LOGIN,')
            else
            sql.SQL.Add('null,');
            sql.SQL.Add('null,');
            sql.SQL.Add('null,');
            sql.SQL.Add('null)');
            if (qLogadoLogin <> '') then
              sql.Params.ParamByName('Login').AsString := qLogadoLogin;
            //sql.SQL.SaveToFile(SConfigPathSql);
            sql.Open;
            if NOT (sql.IsEmpty) then
            begin
              SetLogadoId(sql.FieldByName('ID_').AsInteger);
              SetLogadoNome(sql.FieldByName('NOME_').AsString);
            end;
          finally
            conn.Free;
            qConnects.Free;
            sql.Free;
          end;
        end;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
