unit uSetiComponentRegistersDAO;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, MIDASLIB, Provider, DB, ADODB, DBClient, uMess, uSetiConnects;

type TSetiComponentRegistersDAO = class(TProvider)
    private
      FQryForms : TADOQuery;
      FCdsForms : TClientDataSet;
      FDspForms : TDataSetProvider;
      FDsForms : TDataSource;
      FQryComp : TADOQuery;
      FCdsComp : TClientDataSet;
      FDspComp : TDataSetProvider;
      FDsComp : TDataSource;
      FQryFieldComp : TADOQuery;
      FCdsFieldComp : TClientDataSet;
      FDspFieldComp : TDataSetProvider;
      FDsFieldComp : TDataSource;
      FConnects : TSetiConnects;
    protected
      //
    public
      constructor Create(Sender:TObject);
      destructor Destroy;

      procedure RecordFormInfo(Sender : TObject);
      procedure RecordComponentFormInfo(CompName,CompCaption:string;
                CompFormId,CompTag:Integer;CompType,CompSearchEnabled:
                string);
      procedure Truncate;
      function GetFormId(FormName:string) : Integer;

    published
      property cConnects : TSetiConnects read FConnects
               write FConnects;

end;

implementation

{ TSetiComponentRegistersDAO }

uses uSetiConfig;

constructor TSetiComponentRegistersDAO.Create(Sender:TObject);
var
  qry : TADOQuery;
begin
    try
        cConnects := TSetiConnects.Create;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

destructor TSetiComponentRegistersDAO.Destroy;
begin
    try

    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
end;

function TSetiComponentRegistersDAO.GetFormId(FormName:string): Integer;
var
  qry : TADOQuery;
begin
{    try
      try
        Result := -1;
        ConnectionCreating;
        if (SFConfigTypeDataBase = 'TADO') then
        begin
            qry := TADOQuery.Create(Nil);
            qry.Connection := ConnectsSQLSERVER;
            qry.SQL.Clear;
            qry.SQL.Add(' USE DBSETIFRAMEWORK                           '+#13+
                        ' DECLARE @FORMNAME VARCHAR(100);               '+#13+
                        ' SET @FORMNAME = :FORMNAME;                    '+#13+
                        ' SELECT TOP 1 ID                               '+#13+
                        ' FROM DBSETIFRAMEWORK..TBSETIFORM WITH(NOLOCK) '+#13+
                          ' WHERE FORMNAME = @FORMNAME                    ');
            qry.Parameters.ParamByName('FORMNAME').Value := FormName;
            qry.Open;
        end;

        if NOT (qry.IsEmpty) then
        begin
          Result := qry.FieldByName('ID').AsInteger
        end;

      finally
        qry := Nil;
        ConnectionCreating(False);

      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end     }
end;

procedure TSetiComponentRegistersDAO.RecordComponentFormInfo(CompName,
CompCaption:string;CompFormId,CompTag:Integer;CompType,
CompSearchEnabled:string);
var
  qry : TADOQuery;
begin
{    try
      try
        ConnectionCreating;
        if (SFConfigTypeDataBase = 'TADO') then
        begin
            qry := TADOQuery.Create(Nil);
            qry.Connection := sfConnectsTADO;
            qry.SQL.Clear;
            qry.SQL.Add(' USE DBSETIFRAMEWORK                              '+#13+
                        ' DECLARE @RC INT                                  '+#13+
                        ' DECLARE @TPOPER INT = :TPOPER;                   '+#13+
                        ' DECLARE @COMPNAME VARCHAR(100) = :COMPNAME       '+#13+
                        ' DECLARE @COMPCAPTION VARCHAR(100) = :COMPCAPTION '+#13+
                        ' DECLARE @COMPFORMID INT = :COMPFORMID            '+#13+
                        ' DECLARE @COMPTAG INT = :COMPTAG                  '+#13+
                        ' DECLARE @COMPTYPE CHAR(30) = :COMPTYPE            '+#13+
                        ' DECLARE @COMPSTATUS CHAR(1) = :COMPSTATUS        '+#13+
                        ' DECLARE @COMPSEARCHENABLE CHAR(1) =              '+#13+
                        '   :COMPSEARCHENABLE                              '+#13+
                        ' EXECUTE @RC = [DBO].[SP_COMPONENTRECORD]         '+#13+
                        '   @TPOPER                                        '+#13+
                        '  ,@COMPNAME                                      '+#13+
                        '  ,@COMPCAPTION                                   '+#13+
                        '  ,@COMPFORMID                                    '+#13+
                        '  ,@COMPTAG                                       '+#13+
                        '  ,@COMPTYPE                                      '+#13+
                        '  ,@COMPSTATUS                                    '+#13+
                        '  ,@COMPSEARCHENABLE                              ');
            qry.Parameters.ParamByName('TPOPER').Value := 0;                                                                                                                                            qry.Parameters.ParamByName('COMPNAME').Value := UpperCase(CompName);
            qry.Parameters.ParamByName('COMPCAPTION').Value :=
              UpperCase(CompCaption);
            qry.Parameters.ParamByName('COMPFORMID').Value := CompFormId;
            qry.Parameters.ParamByName('COMPTAG').Value := CompTag;
            qry.Parameters.ParamByName('COMPTYPE').Value :=
            UpperCase(CompType);
            qry.Parameters.ParamByName('COMPSTATUS').Value := 'S';
            qry.Parameters.ParamByName('COMPSEARCHENABLE').Value :=
            CompSearchEnabled;
        qry.ExecSQL;
        end;
      finally
        qry := Nil;
        ConnectionCreating(False);
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end     }
end;

procedure TSetiComponentRegistersDAO.RecordFormInfo(Sender : TObject);
var
  qry : TADOQuery;
begin
{    try
      try
        ConnectionCreating;
        qry := TADOQuery.Create(Nil);
        qry.Connection := sfConnects;
        qry.SQL.Clear;
        qry.SQL.Add(' USE DBSETIFRAMEWORK                              '+#13+
                    ' DECLARE @RC INT                                  '+#13+
                    ' DECLARE @TPOPER INT = :TPOPER;                   '+#13+
                    ' DECLARE @FORMNAME VARCHAR(100) = :FORMNAME       '+#13+
                    ' DECLARE @FORMCAPTION VARCHAR(100) = :FORMCAPTION '+#13+
                    ' DECLARE @FORMTAG INT = :FORMTAG                  '+#13+
                    ' DECLARE @STATUS CHAR(1) = :STATUS                '+#13+
                    ' EXECUTE @RC = [DBO].[SP_FORMINFORECORD]          '+#13+
                    '   @TPOPER                                        '+#13+
                    '  ,@FORMNAME                                      '+#13+
                    '  ,@FORMCAPTION                                   '+#13+
                    '  ,@FORMTAG                                       '+#13+
                    '  ,@STATUS                                        ');
        qry.Parameters.ParamByName('TPOPER').Value := 0;
        qry.Parameters.ParamByName('FORMNAME').Value := TForm(Sender).Name;
        qry.Parameters.ParamByName('FORMCAPTION').Value :=
          TForm(Sender).Caption;
        qry.Parameters.ParamByName('FORMTAG').Value := TForm(Sender).Tag;
        qry.Parameters.ParamByName('STATUS').Value := 'S';
        qry.ExecSQL;
      finally
        qry := Nil;
        ConnectionCreating(False);
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end
        }
end;

procedure TSetiComponentRegistersDAO.Truncate;
var
  qry : TADOQuery;
begin
 {   try
      try
        ConnectionCreating;
        qry := TADOQuery.Create(Nil);
        qry.Connection := sfConnects;
        qry.SQL.Clear;
        qry.SQL.Add(' USE DBSETIFRAMEWORK                              '+#13+
                    ' DECLARE @RC INT                                  '+#13+
                    ' DECLARE @TPOPER INT = :TPOPER;                   '+#13+
                    ' EXECUTE @RC = [DBO].[SP_COMPONENTRECORD]         '+#13+
                    '   @TPOPER,'''','''',-1,-1,'''','''',''''         ');
        qry.Parameters.ParamByName('TPOPER').Value := 4;
        qry.ExecSQL;
        qry.SQL.Clear;
        qry.SQL.Add(' USE DBSETIFRAMEWORK                              '+#13+
                    ' DECLARE @RC INT                                  '+#13+
                    ' DECLARE @TPOPER INT = :TPOPER;                   '+#13+
                    ' EXECUTE @RC = [DBO].[SP_FORMINFORECORD]          '+#13+
                    '   @TPOPER,'''','''',-1,''''                      ');
        qry.Parameters.ParamByName('TPOPER').Value := 4;
        qry.ExecSQL;
      finally
        qry := Nil;
        ConnectionCreating(False);
      end;
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end      }
end;

end.
