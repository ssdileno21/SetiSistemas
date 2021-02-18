unit ufrmCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.SqlExpr, uSetiConnects, Data.DB, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, MIDASLIB;

type
  TfrmCadUsuarios = class(TForm)
    Panel1: TPanel;
    sbInsert: TSpeedButton;
    sbDelete: TSpeedButton;
    sbClose: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCod: TEdit;
    edtName: TEdit;
    Panel3: TPanel;
    sbSave: TSpeedButton;
    sbCancel: TSpeedButton;
    Panel4: TPanel;
    dbgUser: TDBGrid;
    Label3: TLabel;
    edtLogin: TEdit;
    edtPassOne: TEdit;
    Label4: TLabel;
    edtPassTwo: TEdit;
    sbEdit: TSpeedButton;
    sbList: TSpeedButton;
    sbClear: TSpeedButton;
    rgPerfil: TRadioGroup;
    dsAux: TDataSource;
    dsUser: TDataSource;
    sqlUser: TSQLQuery;
    dspUser: TDataSetProvider;
    cdsUser: TClientDataSet;
    procedure FormShow(Sender: TObject);
    procedure sbListClick(Sender: TObject);
    procedure sbInsertClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure sbSaveClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure dbgUserCellClick(Column: TColumn);
    procedure sbCancelClick(Sender: TObject);
    procedure sbClearClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
  private
    FConnects : TSetiConnects;
    FqUsuId: integer;
    FqUsuLogin: string;
    FpPassOne: string;
    FpId: Integer;
    FpPassTwo: string;
    FpLogin: string;
    FpIdPerfil: Integer;
    FpName: string;
    FqState: Integer;
    { Private declarations }
    procedure FormControl(State:Integer);
    procedure GridToEdits;
    procedure List;
    procedure Insert;
    procedure Edit;
    procedure Delete;

    function Parameters: Boolean;
    function isRecord : Boolean;
    function LoginExists : Boolean;

    procedure SetpId(const Value: Integer);
    procedure SetpIdPerfil(const Value: Integer);
    procedure SetpLogin(const Value: string);
    procedure SetpName(const Value: string);
    procedure SetpPassOne(const Value: string);
    procedure SetpPassTwo(const Value: string);
    procedure ProviderFlags;
    procedure SetqState(const Value: Integer);
    procedure Clear;

    property qConnects : TSetiConnects read FConnects write FConnects;
    property qState : Integer read FqState write SetqState;
    property pId : Integer read FpId write SetpId;
    property pName : string read FpName write SetpName;
    property pLogin : string read FpLogin write SetpLogin;
    property pPassOne : string read FpPassOne write SetpPassOne;
    property pPassTwo : string read FpPassTwo write SetpPassTwo;
    property pIdPerfil : Integer read FpIdPerfil write SetpIdPerfil;

  public
    { Public declarations }
    procedure SetqUsuId(const Value: integer);
    property qUsuId : integer read FqUsuId write SetqUsuId;
    procedure SetqUsuLogin(const Value: string);
    property qUsuLogin : string read FqUsuLogin write SetqUsuLogin;
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

{$R *.dfm}

uses udmLogin, udmGen, uMess, uSetiUseful;

{ TfrmCadUsuarios }

procedure TfrmCadUsuarios.Clear;
begin
    SetqState(0);
    FormControl(qState);
end;

procedure TfrmCadUsuarios.dbgUserCellClick(Column: TColumn);
begin
  GridToEdits;
end;

procedure TfrmCadUsuarios.Delete;
var
    vSql : TSQLQuery;
begin
    if SetiMensQuestions(0,'Confirma exclus�o do usu�rio?') then
    begin
      try
        qConnects := TSetiConnects.Create;
        vSql := TSQLQuery.Create(Nil);
        vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
        vSql.SQL.Add('DELETE FROM TBCADUSUARIO '+
                     'WHERE ID = :ID                ');
        vSql.Params.ParamByName('ID').AsInteger := StrToInt(edtCod.Text);
        vSql.ExecSQL;
        SetiMens(1,'Registro exclu�do com sucesso.');
      finally
        qConnects.Free;
        vSql.Free;
        SetqState(0);
        FormControl(qState);
      end;
    end;
end;

procedure TfrmCadUsuarios.Edit;
var
    vSql : TSQLQuery;
    vPerfil : Integer;
begin
  if Parameters then
  begin
    try
      vPerfil := rgPerfil.ItemIndex;
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add('UPDATE TBCADUSUARIO SET  '+
                   ' NOME = :NOME            '+
                   ',LOGIN = :LOGIN          '+
                   ',SENHA = :SENHA          '+
                   ',ID_PERFIL = :ID_PERFIL  '+
                   'WHERE ID = :ID           ');
      vSql.Params.ParamByName('ID').AsInteger := StrToInt(edtCod.Text);
      vSql.Params.ParamByName('NOME').AsString := edtName.Text;
      vSql.Params.ParamByName('LOGIN').AsString := edtLogin.Text;
      vSql.Params.ParamByName('SENHA').AsString := edtPassOne.Text;
      vSql.Params.ParamByName('ID_PERFIL').AsInteger := vPerfil;
      vSql.ExecSQL;
      SetiMens(1,'Registro atualizado.');
    finally
      qConnects.Free;
      vSql.Free;
      SetqState(0);
      FormControl(qState);
      sbListClick(Self);
    end;
  end;
end;

procedure TfrmCadUsuarios.FormControl(State: Integer);
var
  visrecord : Boolean;
begin
    {
      0 : INICIAL
      1 : SEARCH
      2 : INSERT
      3 : UPDATE

    }
    if State <> 1 then
    begin
      visrecord := isRecord;
      sbList.Enabled      := (visrecord) and (State in [0]);
      sbInsert.Enabled    := State in [0];
      sbEdit.Enabled      := (visrecord) and (State in [0]);
      sbDelete.Enabled    := (visrecord) and (State in [0]);
      sbSave.Enabled      := State in [2,3];
      sbCancel.Enabled    := State in [2,3];
      sbClear.Enabled     := State in [2,3];
      sbClose.Enabled     := True;
      rgPerfil.Enabled    := State in [2,3];
      dbgUser.Enabled     := True;

      edtCod.Enabled      := False;
      if State in [0,1] then
      begin
        edtCod.Color        := clWindow;
      end else
        edtCod.Color        := clInfoBk;
      edtName.Enabled     := State in [2,3];
      edtLogin.Enabled    := State in [2,3];
      edtPassOne.Enabled  := State in [2,3];
      edtPassTwo.Enabled  := State in [2,3];

      if State in [0,2,3] then
      begin
        dbgUser.DataSource := dsAux;
      end;

      if State = 0 then
      begin
        rgPerfil.ItemIndex := -1;
      end;
      if State = 2 then
      begin
        rgPerfil.ItemIndex := 2;
      end;
      if State IN [2,3] then
      begin
        edtName.SetFocus;
      end;
      if State in [0,2] then
      begin
        edtCod.Clear;
        edtName.Clear;
        edtLogin.Clear;
        edtPassOne.Clear;
        edtPassTwo.Clear;
        pId       := -1;
        pName     := '';
        pLogin    := '';
        pPassOne  := '';
        pPassTwo  := '';
        pIdPerfil := -1;
      end;
    end else
    begin
      sbList.Enabled      := True;
      sbInsert.Enabled    := True;
      sbEdit.Enabled      := True;
      sbDelete.Enabled    := True;
      sbSave.Enabled      := False;
      sbCancel.Enabled    := False;
      sbClear.Enabled     := True;
      sbClose.Enabled     := True;
      rgPerfil.Enabled    := False;
      dbgUser.Enabled     := True;
      edtCod.Color        := clWindow;
      edtCod.Enabled      := False;
      edtName.Enabled     := False;
      edtLogin.Enabled    := False;
      edtPassOne.Enabled  := False;
      edtPassTwo.Enabled  := False;
    end;
end;

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
    Clear;
end;

procedure TfrmCadUsuarios.GridToEdits;
var
  sql : TSQLQuery;
begin
    try
      if NOT dsUser.DataSet.IsEmpty then
      begin
        edtCod.Text := dsUser.DataSet.FieldByName('ID').AsString;
        edtName.Text := dsUser.DataSet.FieldByName('NOME').AsString;
        edtLogin.Text := dsUser.DataSet.FieldByName('LOGIN').AsString;
        rgPerfil.ItemIndex := dsUser.DataSet.FieldByName('ID_PERFIL').AsInteger;
      end else
      begin
        edtCod.Clear;
        edtName.Clear;
        edtLogin.Clear;
        rgPerfil.ItemIndex := -1;
      end;
    finally

    end;
end;

procedure TfrmCadUsuarios.Insert;
var
    vSql : TSQLQuery;
    vPerfil : Integer;
begin
  if Parameters then
  begin
    try
      vPerfil := rgPerfil.ItemIndex;
      dmGen := TdmGen.Create(Nil);
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Add('INSERT INTO TBCADUSUARIO      '+
                   '(                             '+
                   '   ID                         '+
                   '  ,NOME                       '+
                   '  ,LOGIN                      '+
                   '  ,SENHA                      '+
                   '  ,ID_PERFIL                  '+
                   ') VALUES                      '+
                   '(                             '+
                   '   :ID                        '+
                   '  ,:NOME                      '+
                   '  ,:LOGIN                     '+
                   '  ,:SENHA                     '+
                   '  ,:ID_PERFIL                 '+
                   ')                             ');
      vSql.Params.ParamByName('ID').AsInteger :=
        dmGen.ProximoId('GEN_ID_USUARIO');
      vSql.Params.ParamByName('NOME').AsString := pName;
      vSql.Params.ParamByName('LOGIN').AsString := pLogin;
      vSql.Params.ParamByName('SENHA').AsString := pPassOne;
      vSql.Params.ParamByName('ID_PERFIL').AsInteger := vPerfil;
      vSql.ExecSQL;
      SetiMens(1,'Registro inserido com sucesso');
    finally
      dmGen.Free;
      qConnects.Free;
      vSql.Free;
      SetqState(0);
      FormControl(qState);
      sbListClick(Self);
    end;
  end;
end;

function TfrmCadUsuarios.isRecord: Boolean;
var
    vSql : TSQLQuery;
begin
    try
      qConnects := TSetiConnects.Create;
      vSql := TSQLQuery.Create(Nil);
      vSql.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      vSql.SQL.Clear;
      vSql.SQL.Add('SELECT COUNT(*) CONT FROM TBCADUSUARIO ');
      vSql.Open;
      Result := (vSql.FieldByName('CONT').AsInteger > 0);
    finally
      qConnects.Free;
    end;
end;

procedure TfrmCadUsuarios.List;
begin
    try
      qConnects := TSetiConnects.Create;
      sqlUser.Close;
      sqlUser.SQLConnection := qConnects.ConnectsFIREBIRD(False);
      sqlUser.SQL.Clear;
      sqlUser.SQL.Add('SELECT * FROM TBCADUSUARIO U ');
      cdsUser.Open;
      if NOT (cdsUser.IsEmpty) then
      begin
        dsUser.DataSet.First;
        dbgUser.DataSource := dsUser;
        SetqState(1);
        FormControl(qState);
        ProviderFlags;
        GridToEdits;
      end else
      begin
        Clear;
      end;
      cdsUser.Refresh;
    finally
      qConnects.Free;
    end;
end;

function TfrmCadUsuarios.LoginExists: Boolean;
begin
    try
      dmLogin := TdmLogin.Create(Nil);
      Result := dmLogin.ExisteLogin(edtLogin.Text,'',True);
    finally
      dmLogin.Free;
    end;
end;

function TfrmCadUsuarios.Parameters : Boolean;
begin
    Result := False;
    try
        if (edtName.Text = '') then
        begin
          SetqUsuLogin(edtName.Text);
          SetiMens(2,'Nome n�o infomado.');
          Exit;
        end else
        if (edtLogin.Text = '') then
        begin
          SetqUsuLogin(edtLogin.Text);
          SetiMens(2,'Login n�o infomado.');
          Exit;
        end else
        if (LoginExists) and  (qState <> 3) then
        begin
          SetqUsuLogin(edtPassOne.Text);
          SetiMens(2,'Login j� existente.');
          Exit;
        end else
        if (edtPassOne.Text = '') then
        begin
          SetqUsuLogin(edtPassOne.Text);
          SetiMens(2,'Senha n�o infomada.');
          Exit;
        end else
        if (edtPassTwo.Text = '') then
        begin
          SetqUsuLogin(edtPassTwo.Text);
          SetiMens(2,'Senha n�o infomada.');
          Exit;
        end else
        if (edtPassOne.Text <> edtPassTwo.Text) then
        begin
          SetqUsuLogin(edtPassTwo.Text);
          SetiMens(2,'Senha n�o confere.');
          Exit;
        end else
        begin
            SetpName(edtName.Text);
            SetpLogin(edtLogin.Text);
            SetpPassOne(edtPassOne.Text);
            Result := True;
        end;
    finally

    end;
end;

procedure TfrmCadUsuarios.ProviderFlags;
begin
    try
      if NOT dsUser.DataSet.IsEmpty then
      begin
        with dsUser.DataSet do
        begin
          FieldByName('ID').DisplayLabel := 'C�d.';
          FieldByName('NOME').DisplayLabel := 'Nome';
          FieldByName('LOGIN').DisplayLabel := 'Observa��o';
          FieldByName('ID_PERFIL').DisplayLabel := 'Perfil';
          FieldByName('SENHA').Visible := False;

          FieldByName('ID').DisplayWidth := 10;
          FieldByName('NOME').DisplayWidth := 30;
          FieldByName('LOGIN').DisplayWidth := 30;
          FieldByName('ID_PERFIL').DisplayWidth := 10;
        end;
      end;
    finally

    end;
end;

procedure TfrmCadUsuarios.sbCancelClick(Sender: TObject);
begin
    Clear;
end;

procedure TfrmCadUsuarios.sbClearClick(Sender: TObject);
begin
    Clear;
end;

procedure TfrmCadUsuarios.sbCloseClick(Sender: TObject);
begin
    ModalResult := mrCancel;
end;

procedure TfrmCadUsuarios.sbDeleteClick(Sender: TObject);
begin
    Delete;
end;

procedure TfrmCadUsuarios.sbEditClick(Sender: TObject);
begin
    SetqState(3);
    FormControl(qState);
end;

procedure TfrmCadUsuarios.sbInsertClick(Sender: TObject);
begin
    SetqState(2);
    FormControl(qState);
end;

procedure TfrmCadUsuarios.sbListClick(Sender: TObject);
begin
    List;
end;

procedure TfrmCadUsuarios.sbSaveClick(Sender: TObject);
begin
    if qState = 2 then
    begin
        Insert;
    end else
    if qState = 3 then
    begin
        Edit;
    end;
end;

procedure TfrmCadUsuarios.SetpId(const Value: Integer);
begin
    FpId := Value;
end;

procedure TfrmCadUsuarios.SetpIdPerfil(const Value: Integer);
begin
    FpIdPerfil := Value;
end;

procedure TfrmCadUsuarios.SetpLogin(const Value: string);
begin
    FpLogin := Value;
end;

procedure TfrmCadUsuarios.SetpName(const Value: string);
begin
    FpName := Value;
end;

procedure TfrmCadUsuarios.SetpPassOne(const Value: string);
begin
    FpPassOne := SetiUsefulCriptografa(Value);
end;

procedure TfrmCadUsuarios.SetpPassTwo(const Value: string);
begin
    FpPassTwo := Value;
end;

procedure TfrmCadUsuarios.SetqState(const Value: Integer);
begin
    FqState := Value;
end;

procedure TfrmCadUsuarios.SetqUsuId(const Value: integer);
begin
    FqUsuId := Value;
end;

procedure TfrmCadUsuarios.SetqUsuLogin(const Value: string);
begin
    FqUsuLogin := Value;
end;

end.
