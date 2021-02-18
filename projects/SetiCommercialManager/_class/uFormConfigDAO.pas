unit uFormConfigDAO;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, MIDASLIB, Provider, DB, ADODB, DBClient, uMess,
uSetiConnects;

type TFormConfigDAO = class(TProvider)
    private
      {FQry: TADOQuery;
      FCds: TClientDataSet;
      FDsp: TDataSetProvider;
      FDs: TDataSource;}
      CdsForms: TClientDataSet;
      CdsComponents: TClientDataSet;
    protected
      //
    public
      constructor Create(Sender:TObject);
      destructor Destroy;
      function DsListForms(Sender:TObject) : TDataSet;
      function DsListComponents : TDataSet;
    published

end;


implementation

{ TFormConfigDAO }

constructor TFormConfigDAO.Create(Sender: TObject);
begin
    try
        CdsForms := TClientDataSet.Create(Self);
        CdsComponents := TClientDataSet.Create(Self);
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
end;

destructor TFormConfigDAO.Destroy;
begin
//
end;

function TFormConfigDAO.DsListComponents: TDataSet;
var
  qry : TADOQuery;
  Dsp: TDataSetProvider;
begin
{    Result := Nil;
    try
      try
        ConnectionCreating;
        qry := TADOQuery.Create(Nil);
        Dsp := TDataSetProvider.Create(Self);
        qry.Connection := sfConnects;
        qry.SQL.Clear;
        qry.SQL.Add( ' USE [dbSetiFramework]                             '+#13+
                     ' DECLARE @FORMID INT                               '+#13+
                     ' SET @FORMID = :FORMID;                            '+#13+
                     ' SELECT [ID]                                       '+#13+
                     '      ,[COMPONENTNAME]                             '+#13+
                     '      ,[COMPONENTFORMID]                           '+#13+
                     '      ,[COMPONENTCAPTION]                          '+#13+
                     '      ,[COMPONENTTAG]                              '+#13+
                     '      ,[COMPONENTTYPE]                             '+#13+
                     '      ,[COMPONENTSTATUS]                           '+#13+
                     '      ,[COMPONENTCREATEDATE]                       '+#13+
                     '      ,[COMPONENTSEARCHENABLE]                     '+#13+
                     '  FROM [dbSetiFramework].[dbo].[TBSETICOMPONENT]   '+#13+
                     '  WITH(NOLOCK)                                     '+#13+
                     '  WHERE COMPONENTFORMID = @FORMID;                 ');
        qry.Parameters.ParamByName('FORMID').Value :=
          CdsForms.FieldByName('ID').Value;
        Dsp.DataSet := qry;
        Dsp.Name := 'DSPCOMPONENTS';
        Dsp.Options := [poAllowCommandText];
        CdsComponents.SetProvider(Dsp);
        CdsComponents.Open;

        Result := CdsComponents;

      finally
        Dsp := Nil;
        qry := Nil;
        ConnectionCreating(False);
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;           }
end;

function TFormConfigDAO.DsListForms(Sender: TObject): TDataSet;
var
  qry : TADOQuery;
  Dsp: TDataSetProvider;
begin
{    Result := Nil;
    try
      try
        ConnectionCreating;
        qry := TADOQuery.Create(Nil);
        Dsp := TDataSetProvider.Create(Self);
        qry.Connection := sfConnects;
        qry.SQL.Clear;
        qry.SQL.Add(' USE [dbSetiFramework]                    '+#13+
                    ' DECLARE @FORMNAME VARCHAR(100)           '+#13+
                    ' SET @FORMNAME = :FORMNAME                '+#13+
                    ' SELECT [ID]                              '+#13+
                    '       ,[FORMNAME]                        '+#13+
                    '       ,[FORMCAPTION]                     '+#13+
                    '       ,[FORMTAG]                         '+#13+
                    '       ,[STATUS]                          '+#13+
                    '       ,[CREATEDATE]                      '+#13+
                    ' FROM [dbo].[TBSETIFORM] WITH(NOLOCK)     '+#13+
                    ' WHERE FORMNAME = @FORMNAME               ');
        qry.Parameters.ParamByName('FORMNAME').Value := TForm(Sender).Name;
        Dsp.DataSet := qry;
        Dsp.Name := 'DSPFORMS';
        Dsp.Options := [poAllowCommandText];
        CdsForms.SetProvider(Dsp);
        CdsForms.Open;

        Result := CdsForms;

      finally
        Dsp := Nil;
        qry := Nil;
        ConnectionCreating(False);
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;     }
end;

end.
