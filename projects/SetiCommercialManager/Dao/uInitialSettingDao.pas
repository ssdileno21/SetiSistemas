unit uInitialSettingDao;

interface

uses uInitialSettingModel, uMess, SysUtils, uSetiConfig, uSetiConnects, SqlExpr,
ADODB, DB, Provider, DBClient, DBGrids, System.Variants, Dialogs;

    type TInitialSettingDao = class(TProvider)
      private
          FConnects : TSetiConnects;
      public
          Constructor Create;
          Destructor Destroy; Virtual;
          function ExisteConexao : Boolean;
          function Insert(Model:TInitialSettingModel) : Boolean;
      published
          property qConnects : TSetiConnects read FConnects write FConnects;
    end;

implementation

{ TEmpresasDao }

uses udmGen, udmLogin;

constructor TInitialSettingDao.Create;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

destructor TInitialSettingDao.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingDao.ExisteConexao: Boolean;
begin
    try
      Result := False;
      if Assigned(qConnects) then
      begin
          Result := qConnects.Connected;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TInitialSettingDao.Insert(Model: TInitialSettingModel) : Boolean;
var
    sql : TSQLQuery;
    conn : TSQLConnection;
begin
    try
      Result := False;
      try
        with (Model) do
        begin
          dmLogin := TdmLogin.Create(Nil);
          if dmLogin.ExisteLogin(qLogin,qSenha,True) then
          begin
            SetiMens(1,Mess16);
            Exit;
          end;
          dmGen := TdmGen.Create(Nil);
          qConnects := TSetiConnects.Create;
          conn := TSQLConnection.Create(Nil);
          conn := qConnects.ConnectsFIREBIRD(False);
          sql := TSQLQuery.Create(Nil);
          sql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
          sql.Close;
          sql.SQL.Add(' INSERT INTO TBGERCADUSUARIOS  ');
          sql.SQL.Add(' (                             ');
          sql.SQL.Add('    ID                         ');
          sql.SQL.Add('   ,NOME                       ');
          sql.SQL.Add('   ,LOGIN                      ');
          sql.SQL.Add('   ,SENHA                      ');
          sql.SQL.Add('   ,EMAIL                      ');
          sql.SQL.Add('   ,STATUS                     ');
          sql.SQL.Add('   ,ID_GRUPO                   ');
          sql.SQL.Add('  ) VALUES                     ');
          sql.SQL.Add('  (                            ');
          sql.SQL.Add('    :ID                        ');
          sql.SQL.Add('   ,:NOME                      ');
          sql.SQL.Add('   ,:LOGIN                     ');
          sql.SQL.Add('   ,:SENHA                     ');
          sql.SQL.Add('   ,:EMAIL                     ');
          sql.SQL.Add('   ,''S''                      ');
          sql.SQL.Add('   ,0                          ');
          sql.SQL.Add('   );                          ');
          if (qNome = '') or
                (qLogin = '') or
                   (qSenha = '') or
                      (qSenhaC = '')then
                          Exit;
          sql.Params.ParamByName('ID').AsInteger :=
           dmGen.ProximoId('ID_USUARIO');
          sql.Params.ParamByName('NOME').AsString := UpperCase(qNome);
          sql.Params.ParamByName('Login').AsString := UpperCase(qLogin);
          sql.Params.ParamByName('SENHA').AsString := qSenha;
          sql.Params.ParamByName('EMAIL').AsString := UpperCase(qEmail);
          sql.ExecSQL;
          SetiMens(1,'Usuário cadastrado.');
          Result := True;
        end;
      finally
          conn.Free;
          dmGen.Free;
          dmLogin.Free;
          qConnects.Free;
          sql.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
