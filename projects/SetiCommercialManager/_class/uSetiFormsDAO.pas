unit uSetiFormsDAO;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, MIDASLIB, Provider, DB, ADODB, DBClient, uMess, SqlExpr,
uSetiConnects, uSetiUseful, uSetiConfig, DBGrids;

type TSetiFormsDAO = class(TProvider)
    private
      FADOqry : TADOQuery; // SQLSERVER
      FSQLqry : TSQLQuery; // FIREBIRD

      FDsp : TDataSetProvider;
      FCds : TClientDataSet;
      FDS  : TDataSource;

      FConnects : TSetiConnects;


    protected
      //
    public
      constructor Create(Sender:TObject);
      destructor Destroy;
      procedure FormList(Grid: TObject);
      procedure ProviderFlags(DataSet : TDataSet);
    published
      property qADOqry : TADOQuery read FADOqry write FADOqry; //SQLSERVER
      property qSQLqry : TSQLQuery read FSQLqry write FSQLqry; //FIREBIRD
      property qDsp : TDataSetProvider read FDsp write FDsp;
      property qCds : TClientDataSet read FCds write FCds;
      property qDS  : TDataSource read FDS write FDS;
      property qFConnect : TSetiConnects read FConnects write FConnects;

end;

implementation

{ TSetiFormsDAO }

constructor TSetiFormsDAO.Create(Sender: TObject);
begin
    try
        qFConnect := TSetiConnects.Create;
        qDsp := TDataSetProvider.Create(Self);
        qDsp.Name := 'dsp';
        qCds := TClientDataSet.Create(Self);
        qDS := TDataSource.Create(Self);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

destructor TSetiFormsDAO.Destroy;
begin
    try
        qFConnect.Free;
        qDsp.Free;
        qDsp.Free;
        qCds.Free;
        qDS.Free;
        if Assigned(qADOqry) then
          qADOqry.Free;
        if Assigned(qSQLqry) then
          qSQLqry.Free;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TSetiFormsDAO.FormList(Grid: TObject);
begin
    try
        if Assigned(qADOqry) then
          qADOqry.Free;
        if Assigned(qSQLqry) then
          qSQLqry.Free;

        if (SConfigTypeDataBase = 'TADO') then
        begin
            qADOqry := TADOQuery.Create(Nil);
            qADOqry.Connection := qFConnect.ConnectsSQLSERVER;
            qADOqry.SQL.Clear;
            qADOqry.SQL.Add('USE [sfdb]                                 '#13+
                            'SELECT [ID]                                '#13+
                            '      ,[FORMNAME]                          '#13+
                            '      ,[FORMCAPTION]                       '#13+
                            '      ,[FORMTAG]                           '#13+
                            '      ,[FORMSTATUS]                        '#13+
                            '  FROM [dbo].[TBFORMS] WITH(NOLOCK)        ');
        end;
        if (SConfigTypeDataBase = 'TSQL') then
        begin
            qSQLqry := TSQLQuery.Create(Nil);
            qSQLqry.SQLConnection := qFConnect.ConnectsFIREBIRD;
            qSQLqry.SQL.Clear;
            qSQLqry.SQL.Add('SELECT ID                                  '#13+
                            '      ,FORMNAME                            '#13+
                            '      ,FORMCAPTION                         '#13+
                            '      ,FORMTAG                             '#13+
                            '      ,FORMSTATUS                          '#13+
                            '  FROM TBFORMS                             ');
        end;
        if (SConfigTypeDataBase = 'TADO') then
          qDsp.DataSet := qADOqry;
        if (SConfigTypeDataBase = 'TSQL') then
          qDsp.DataSet := qSQLqry;
        qCds.ProviderName := qDsp.Name;

        if (SConfigTypeDataBase <> '') or (SConfigTypeDataBase <> '') then
        begin
          qCds.Open;
          qDS.DataSet := qCds;
          TDBGrid(Grid).DataSource := qDS;
        end;
        ProviderFlags(qCds);

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

procedure TSetiFormsDAO.ProviderFlags(DataSet: TDataSet);
begin
    try
        if (DataSet = qCds) then
        begin
            with qCds do
            begin
                FieldByName('FORMNAME').DisplayLabel := 'Nome';
                FieldByName('FORMCAPTION').DisplayLabel := 'Descrição';
                FieldByName('FORMTAG').DisplayLabel := 'Tag';
                FieldByName('FORMSTATUS').DisplayLabel := 'Status';

                FieldByName('FORMNAME').DisplayWidth := 15;
                FieldByName('FORMCAPTION').DisplayWidth := 25;
                FieldByName('FORMTAG').DisplayWidth := 5;
                FieldByName('FORMSTATUS').DisplayWidth := 5;
            end;
        end;

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

end.
