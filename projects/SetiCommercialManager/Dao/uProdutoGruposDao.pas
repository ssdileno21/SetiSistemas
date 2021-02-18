unit uProdutoGruposDao;

interface

uses uSetiFormModel, uMess, SysUtils, uSetiConfig, uSetiConnects, SqlExpr,
ADODB, DB, Provider, DBClient, DBGrids, System.Variants, Dialogs;

    type TProdutoGruposDao = class(TProvider)
      private
          FDsp : TDataSetProvider;
          FCds : TClientDataSet;
          FDts  : TDataSource;
          FAdo : TADOQuery;
          FSql : TSQLQuery;
          FDtsHelp : TDataSource;
          FConnects : TSetiConnects;
          procedure CompCreate(Create:Boolean);
          procedure ProviderFlags(DataSet:TDataSet);

      public
          Constructor Create;
          Destructor Destroy; Virtual;
          function FormList(Model:TSetiFormModel;Grid:TDBGrid) : Boolean;
          procedure Insert(Model:TSetiFormModel);
          procedure Edit(Model:TSetiFormModel);
          procedure Delete(Model:TSetiFormModel);
          procedure Save(Model:TSetiFormModel);

      published
          property qDsp : TDataSetProvider read FDsp write FDsp;
          property qCds : TClientDataSet read FCds write FCds;
          property qDts  : TDataSource read FDts write FDts;
          property qAdo : TADOQuery read FAdo write FAdo;
          property qSql  : TSQLQuery read FSql write FSql;
          property qDtsHelp  : TDataSource read FDtsHelp write FDtsHelp;
          property qConnects : TSetiConnects read FConnects write FConnects;
    end;

implementation

{ TProdutoGruposDao }

procedure TProdutoGruposDao.CompCreate(Create:Boolean);
var
    pDb : string;
begin
    try
        {pDb := SConfigTypeDataBase;
        if (Assigned(qConnects) or (Create = False)) then
          qConnects := Nil;
        if (Assigned(qAdo) or (Create = False)) then
          qAdo := Nil;
        if (Assigned(qSql) or (Create = False)) then
          qSql := Nil;
        if (Assigned(qDsp) or (Create = False)) then
          qDsp := Nil;
        if (Assigned(qDts) or (Create = False)) then
          qDts := Nil;
        if (Assigned(qCds) or (Create = False)) then
          qCds := Nil;
        if (Assigned(qDtsHelp) or (Create = False)) then
          qDtsHelp := Nil;

        if (Create) then
        begin
            qConnects := TSetiConnects.Create;
            qDsp := TDataSetProvider.Create(NIL);
            qDtsHelp := TDataSource.Create(NIL);
            qDsp.Name := 'QDSP';
            if (pDb = 'TADO') then
            begin
              qAdo := TADOQuery.Create(NIL);
              qAdo.Connection := qConnects.ConnectsSQLSERVER;
              qDsp.DataSet := qAdo;
            end;
            if (pDb = 'TSQL') then
            begin
              qSql := TSQLQuery.Create(NIL);
              qSql.SQLConnection := qConnects.ConnectsFIREBIRD;
              qDsp.DataSet := qSql;
            end;
            qCds := TClientDataSet.Create(NIL);
            qCds.SetProvider(qDsp);
            qDts := TDataSource.Create(NIL);
            qDts.DataSet := qCds;
        end;}
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

constructor TProdutoGruposDao.Create;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TProdutoGruposDao.Delete(Model: TSetiFormModel);
begin
    //STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

destructor TProdutoGruposDao.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TProdutoGruposDao.Edit(Model: TSetiFormModel);
begin
    //STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

function TProdutoGruposDao.FormList(Model: TSetiFormModel; Grid: TDBGrid) : Boolean;
var
    pVal : Boolean;
    pDb : string;
begin
  Result := False;
  try
    {pVal := False;
    pDb := SConfigTypeDataBase;
    CompCreate(True);
    with (Model) do
    begin
      if (pDb = 'TADO') then
      begin
        qAdo.SQL.Add('USE [sfdb] ');
        qAdo.SQL.Add('DECLARE @ID INT;                        ');
        qAdo.SQL.Add('DECLARE @FORMNAME VARCHAR(100);         ');
        qAdo.SQL.Add('DECLARE @FORMCAPTION VARCHAR(100);      ');
        qAdo.SQL.Add('DECLARE @FORMTAG INT;                   ');
        qAdo.SQL.Add('DECLARE @FORMSTATUS CHAR(1);            ');

        if (qId <> -1) then
        begin
          qAdo.SQL.Add('SET @ID = :ID;                          ');
          qAdo.Parameters.ParamByName('ID').Value := qStatus;
        end;
        if (qName <> '') then
        begin
          qAdo.SQL.Add('SET @FORMNAME = :FORMNAME;              ');
          qAdo.Parameters.ParamByName('FORMNAME').Value := qStatus;
        end;
        if (qCaption <> '') then
        begin
          qAdo.SQL.Add('SET @FORMCAPTION = :FORMCAPTION;        ');
          qAdo.Parameters.ParamByName('FORMCAPTION').Value := qStatus;
        end;
        if (qTag <> '') then
        begin
          qAdo.SQL.Add('SET @FORMTAG = :FORMTAG;                ');
          qAdo.Parameters.ParamByName('FORMTAG').Value := qStatus;
        end;
        if (qStatus <> '') then
        begin
          qAdo.SQL.Add('SET @FORMSTATUS = :FORMSTATUS;          ');
          qAdo.Parameters.ParamByName('FORMSTATUS').Value := qStatus;
        end;

        qAdo.SQL.Add('EXEC [dbo].[SP_LISTA_FORMS]             ');
        qAdo.SQL.Add('  @ID                                   ');
        qAdo.SQL.Add(' ,@FORMNAME                             ');
        qAdo.SQL.Add(' ,@FORMCAPTION                          ');
        qAdo.SQL.Add(' ,@FORMTAG                              ');
        qAdo.SQL.Add(' ,@FORMSTATUS                           ');

        pVal := True;
        end;
        if (pDb = 'TSQL') then
        begin
            qSql.SQL.Clear;
            qSql.SQL.Add('SELECT ID, FORMNAME, FORMCAPTION, FORMTAG, FORMSTATUS FROM SP_LISTA_FORMS ');
            //qSql.SQL.Add('(:ID,:FORMNAME,:FORMCAPTION,:FORMTAG,:FORMSTATUS)');
            qSql.SQL.Add('(null,null,null,null,:FORMSTATUS)');
            if (qId <> -1) then
              qSql.Params.ParamByName('ID').Value := qId;
            if (qName <> '') then
              qSql.Params.ParamByName('FORMNAME').Value := qName;
            if (qCaption <> '') then
              qSql.Params.ParamByName('FORMCAPTION').Value := qCaption;
            if (qTag <> '') then
              qSql.Params.ParamByName('FORMTAG').Value := qTag;
            if (qStatus <> '') then
              qSql.Params.ParamByName('FORMSTATUS').Value := qStatus;
            pVal := True;
            //qSql.SQL.SaveToFile('C:\SetiSistemas\SQL_TESTE\qry.sql');
        end;
        if (pVal) then
          qCds.Open;
        if NOT (qCds.IsEmpty) then
        begin
          Result := True;
          ProviderFlags(qCds);
          Grid.DataSource := qDts;
        end;
      end;}
  except on e : exception do
  begin
    SetiMens(0,e.Message,'Error');
    {if (SConfigDeveloperMode) then
    begin
      if (pDb = 'TADO') then
        ShowMessage(qAdo.SQL.Text);
      if (pDb = 'TSQL') then
        ShowMessage(qAdo.SQL.Text);
    end;}
  end;
  end;
end;

procedure TProdutoGruposDao.Insert(Model: TSetiFormModel);
begin
    //STATE: 1: INICIAL; 2: SEARCH; 3: INSERT; 4: EDIT; 5: CLEAR;
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TProdutoGruposDao.ProviderFlags(DataSet: TDataSet);
begin
    try
      {with (DataSet) do
      begin
          if (DataSet = qCds) then
          begin
              FieldByName('ID').DisplayLabel := 'Código';
              FieldByName('FORMNAME').DisplayLabel := 'Nome';
              FieldByName('FORMCAPTION').DisplayLabel := 'Descrição';
              FieldByName('FORMTAG').DisplayLabel := 'Tag';
              FieldByName('FORMSTATUS').DisplayLabel := 'Status';

              FieldByName('ID').DisplayWidth := 5;
              FieldByName('FORMNAME').DisplayWidth := 15;
              FieldByName('FORMCAPTION').DisplayWidth := 25;
              FieldByName('FORMTAG').DisplayWidth := 5;
              FieldByName('FORMSTATUS').DisplayWidth := 5;
          end;
      end;}
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TProdutoGruposDao.Save(Model: TSetiFormModel);
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;

end;

end.
