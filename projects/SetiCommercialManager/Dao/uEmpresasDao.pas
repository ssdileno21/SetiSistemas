unit uEmpresasDao;

interface

uses SysUtils, uSetiConfig, uSetiConnects, SqlExpr, ADODB, DB, Provider,
DBClient, DBGrids, System.Variants, Dialogs,

uEmpresasModel, uMess,

udmMasterDataModule;

    type TEmpresasDao = class(TProvider)
      private

      public
          Constructor Create;
          Destructor Destroy; Virtual;
          function Inserir(Model:TEmpresasModel) : Boolean;
          function Alterar(Model:TEmpresasModel) : Boolean;
          function Deletar(Model:TEmpresasModel) : Boolean;
      published
    end;

implementation

{ TEmpresasDao }

constructor TEmpresasDao.Create;
begin
    try
      //
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

destructor TEmpresasDao.Destroy;
begin
    try
      if Assigned(dmMasterDataModule) then
        dmMasterDataModule.Free;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasDao.Inserir(Model: TEmpresasModel): Boolean;
begin
    try
      try
          Result := False;
          dmMasterDataModule := TdmMasterDataModule.Create(Nil);
          with (dmMasterDataModule) do
          begin
              with (Model) do
              begin
                UseComponentsDmSeti(3);
                with (SetiSqlStoredProc) do
                begin
                  StoredProcName := 'TBGERCADEMPRESA_INS';
                  ParamByName('NUMCPFCNPJ').Value := qNumCpfCnpj;
                  ParamByName('TIPOPESSOA').Value := qTipoPessoa;
                  ParamByName('NOMEFANTASIA').Value := qNomeFantasia;
                  ParamByName('RAZAOSOCIAL').Value := qRazaoSocial;
                  ParamByName('EMAIL').Value := qEmail;
                  ParamByName('NUMTELEFONE').Value := qNumTelefone;
                  ParamByName('NUMCELULAR').Value := qNumCelular;
                  ParamByName('SITE').Value := qSite;
                  ParamByName('LOGRADOUROCEP').Value := qLogradouroCep;
                  ParamByName('LOGRADOURO').Value := qLogradouro;
                  ParamByName('LOGRADOURONUM').Value := qLogradouroNum;
                  ParamByName('LOGRADOUROCOMP').Value := qLogradouroComp;
                  ParamByName('LOGRADOUROBAIRRO').Value := qLogradouroBairro;
                  ParamByName('LOGRADOUROUF').Value := qLogradouroUf;
                  ParamByName('LOGRADOUROCIDADE').Value := qLogradouroCidade;
                  ExecProc;
                  SetiMens(1,Mess1);
                  Result := True;
                end;
              end;
          end;
      finally
          dmMasterDataModule.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasDao.Alterar(Model: TEmpresasModel): Boolean;
begin
    try
      try
          Result := False;
          dmMasterDataModule := TdmMasterDataModule.Create(Nil);
          with (dmMasterDataModule) do
          begin
              with (Model) do
              begin
                UseComponentsDmSeti(0);
                SetiSqlQuery.SQL.Add(' UPDATE TBCADEMPRESA  SET             ');
                SetiSqlQuery.SQL.Add('   TIPOPESSOA = :TIPOPESSOA           ');
                SetiSqlQuery.SQL.Add('  ,NOMEFANTASIA = :NOMEFANTASIA       ');
                SetiSqlQuery.SQL.Add('  ,RAZAOSOCIAL = :RAZAOSOCIAL         ');
                SetiSqlQuery.SQL.Add('  ,NUMCPFCNPJ = :NUMCPFCNPJ           ');
                SetiSqlQuery.SQL.Add('  ,EMAIL = :EMAIL                     ');
                SetiSqlQuery.SQL.Add('  ,NUMTELEFONE = :NUMTELEFONE         ');
                SetiSqlQuery.SQL.Add('  ,NUMCELULAR = :NUMCELULAR           ');
                SetiSqlQuery.SQL.Add('  ,SITE                               ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOUROCEP                      ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOURO                         ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOURONUM                      ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOUROCOMP                     ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOUROBAIRRO                   ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOUROUF                       ');
                SetiSqlQuery.SQL.Add('  ,LOGRADOUROCIDADE                   ');
                SetiSqlQuery.SQL.Add('  ,DTAATUALIZACAO                     ');
                SetiSqlQuery.Params.ParamByName('ID').Value := '';
                SetiSqlQuery.Params.ParamByName('NAME').Value := '';
                SetiSqlQuery.ExecSQL;
                SetiMens(1,Mess17);
                Result := True;
              end;
          end;
      finally
          dmMasterDataModule.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TEmpresasDao.Deletar(Model: TEmpresasModel): Boolean;
begin
    try
      try
          Result := False;
          dmMasterDataModule := TdmMasterDataModule.Create(Nil);
          with (dmMasterDataModule) do
          begin
              with (Model) do
              begin
                if (SetiMensQuestions(0,Mess12)) then
                begin
                  UseComponentsDmSeti(3);
                  SetiSqlQuery.SQL.Add(' DELETE FROM TABLE ');
                  SetiSqlQuery.SQL.Add(' WHERE ID = : ID      ');
                  SetiSqlQuery.Params.ParamByName('ID').Value := '';
                  SetiSqlQuery.ExecSQL;
                  SetiMens(1,Mess3);
                  Result := True;
                end;
              end;
          end;
      finally
          dmMasterDataModule.Free;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
