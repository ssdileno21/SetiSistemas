unit uSetiConnects;

interface

uses ADODB, Dialogs, SysUtils, Forms, uFSDialogs, MIDASLIB, DB, SqlExpr,
IniFiles;

type
  TSetiConnects = class
  private
    AdoConn : TADOConnection;
    SqlConn : TSQLConnection;

  public
    constructor Create;
    function Connected : Boolean;
    function ConnectsFIREBIRD(Framework:Boolean=False):  TSQLConnection;
    procedure Disconnects;
  end;

implementation

{ TSetiFrameworkConnects }

uses ufrmMain;

constructor TSetiConnects.Create;
begin
  //
end;

procedure TSetiConnects.Disconnects;
begin
    try
      if Assigned(SqlConn) then
        SqlConn.Free;
    finally

    end;
end;

function TSetiConnects.Connected: Boolean;
begin
        Result := False;
    try
      if (NOT (Assigned(SqlConn))) then
      begin
        try
            ConnectsFIREBIRD(False);
            if (SqlConn.Connected) then
              Result := True;
        finally
          SqlConn.Free;
        end;
      end else
      begin
        if (SqlConn.Connected) then
          Result := True;
      end;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

function TSetiConnects.ConnectsFIREBIRD(Framework:Boolean): TSQLConnection;
var
  vPath : string;
begin
        Result := NIL;
        vPath := frmMain.qConnPath+'SCM';
    try
      SqlConn  :=  TSQLConnection.Create(nil);
      with SqlConn do
      begin
        ConnectionName := 'FBConnection';
        DriverName := 'Firebird';
        GetDriverFunc := 'getSQLDriverINTERBASE';
        LibraryName := 'dbxfb.dll';
        LoginPrompt := False;
        Params.Values['DriverName']         := 'Firebird';
        Params.Values['Database']           := vPath;
        Params.Values['RoleName']           := 'RoleName';
        Params.Values['User_Name']          := 'SYSDBA';
        Params.Values['Password']           := 'masterkey';
        Params.Values['ServerCharSet']      := '';
        Params.Values['SQLDialect']         := '3';
        Params.Values['ErrorResourceFile']  := '';
        Params.Values['LocaleCode']         := '0000';
        Params.Values['BlobSize']           := '-1';
        Params.Values['CommitRetain']       := 'False';
        Params.Values['WaitOnLocks']        := 'True';
        Params.Values['IsolationLevel']     := 'ReadCommitted';
        Params.Values['Trim Char']          := 'False';
        VendorLib := 'fbclient.dll';
        Connected := True;
      end;
        SqlConn.Connected := True;
        Result := SqlConn;
    except on e : exception do
        SetiMens(e.Message,0);
    end
end;

end.
