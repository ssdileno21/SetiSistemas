unit udraftDao;

interface

uses SysUtils,  SqlExpr, ADODB, DB, Provider, DBClient, DBGrids,
System.Variants, Dialogs,

udraftModel, uMess, uSetiConfig, uSetiConnects,

udmMasterDataModule;

    type TdraftDao = class(TProvider)
      private

      public
          Constructor Create; reintroduce;
          Destructor Destroy; override;
          function Inserir(Model:TdraftModel) : Boolean;
          function Alterar(Model:TdraftModel) : Boolean;
          function Deletar(Model:TdraftModel) : Boolean;
      published
    end;

implementation

{ TdraftDao }



destructor TdraftDao.Destroy;
begin
    try
      if Assigned(dmMasterDataModule) then
        dmMasterDataModule.Free;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

function TdraftDao.Inserir(Model: TdraftModel): Boolean;
begin
  Result := False;
  try
    try

        dmMasterDataModule := TdmMasterDataModule.Create(Nil);
        with (dmMasterDataModule) do
        begin
            with (Model) do
            begin
              UseComponentsDmSeti(0);
              SetiSqlQuery.SQL.Add('INSERT INTO TABELA  ');
              SetiSqlQuery.SQL.Add('(                   ');
              SetiSqlQuery.SQL.Add('  ID                ');
              SetiSqlQuery.SQL.Add(')                   ');
              SetiSqlQuery.SQL.Add('VALUES              ');
              SetiSqlQuery.SQL.Add('(                   ');
              SetiSqlQuery.SQL.Add('  :ID               ');
              SetiSqlQuery.SQL.Add(')                   ');
              SetiSqlQuery.Params.ParamByName('ID').Value := qId;
              SetiSqlQuery.ExecSQL;
              SetiMens(1,Mess1);
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

function TdraftDao.Alterar(Model: TdraftModel): Boolean;
begin
  Result := False;
  try
    try
        dmMasterDataModule := TdmMasterDataModule.Create(Nil);
        with (dmMasterDataModule) do
        begin
            with (Model) do
            begin
              UseComponentsDmSeti(3);
              SetiSqlQuery.SQL.Add(' UPDATE TABLE  SET    ');
              SetiSqlQuery.SQL.Add(' NAME = :NAME        ');
              SetiSqlQuery.SQL.Add(' WHERE ID = : ID      ');
              SetiSqlQuery.Params.ParamByName('ID').Value := qId;
              SetiSqlQuery.Params.ParamByName('NAME').Value := qName;
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

constructor TdraftDao.Create;
begin
//
end;

function TdraftDao.Deletar(Model: TdraftModel): Boolean;
begin
  Result := False;
  try
    try
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
                SetiSqlQuery.Params.ParamByName('ID').Value := qId;
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
