unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, ShellAPI, MIDASLIB, uFSPanel,
  uFSUF, uFSDialogs, uSetiUseful;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edtUserName: TEdit;
    Label2: TLabel;
    edtPassword: TEdit;
    sbLogin: TSpeedButton;
    sbCancel: TSpeedButton;
    sbKey: TSpeedButton;
    Panel5: TPanel;
    Memo1: TMemo;
    Image1: TImage;
    cbExibirSenha: TCheckBox;
    SFPanel1: TSFPanel;
    lbVersao: TLabel;
    procedure sbLoginClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbExibirSenhaClick(Sender: TObject);
  private
    FqSenhaUsu: string;
    FqLoginUsu: string;
    FqNomeUsu: string;
    FqIdUsu: Integer;
    { Private declarations }
    function ValidateUser(Login:string;Key:string) : Boolean;
    procedure SetqIdUsu(const Value: Integer);
    procedure SetqLoginUsu(const Value: string);
    procedure SetqNomeUsu(const Value: string);
    procedure SetqSenhaUsu(const Value: string);
  public
      property qIdUsu : Integer read FqIdUsu write SetqIdUsu;
      property qLoginUsu : string read FqLoginUsu write SetqLoginUsu;
      property qNomeUsu : string read FqNomeUsu write SetqNomeUsu;
      property qSenhaUsu : string read FqSenhaUsu write SetqSenhaUsu;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uSetiConfig, udmLogin;

procedure TfrmLogin.cbExibirSenhaClick(Sender: TObject);
begin
    if (cbExibirSenha.Checked) then
      edtPassword.PasswordChar := #0
    else
      edtPassword.PasswordChar := '*';
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
    try
      lbVersao.Caption := SConfigVersao;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) then
      sbLoginClick(Self);
end;

procedure TfrmLogin.sbCancelClick(Sender: TObject);
begin
    try
        Application.Terminate;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

procedure TfrmLogin.sbLoginClick(Sender: TObject);
begin
    if (edtUserName.Text = '') then
    begin
        SetiMens(Mess4);
        edtUserName.SetFocus;
        Abort;
        ModalResult := mrCancel;
    end;
    if (edtPassword.Text = '') then
    begin
        SetiMens(Mess5);
        edtPassword.SetFocus;
        Abort;
        ModalResult := mrCancel;
    end;

    if (ValidateUser(edtUserName.Text,edtPassword.Text)) then begin
      ModalResult := mrOk;
    end else
    begin
        MessageDlg(Mess8,mtInformation,[mbOK],0);
        Abort;
        ModalResult := mrCancel;
    end;
end;

procedure TfrmLogin.SetqIdUsu(const Value: Integer);
begin
    FqIdUsu := Value;
end;

procedure TfrmLogin.SetqLoginUsu(const Value: string);
begin
    FqLoginUsu := Value;
end;

procedure TfrmLogin.SetqNomeUsu(const Value: string);
begin
    FqNomeUsu := Value;
end;

procedure TfrmLogin.SetqSenhaUsu(const Value: string);
begin
   FqSenhaUsu := Value;
end;

function TfrmLogin.ValidateUser(Login, Key: string): Boolean;
begin
    try
        Result := False;
        if SConfigEnabledDefaultLoin then
        begin
            if (UpperCase(Login) = UpperCase(SConfigDefaultLogin)) and
              (UpperCase(Key) = UpperCase(SConfigDefaultKey)) then
            begin
              SetqIdUsu(0);
              SetqLoginUsu(SConfigDefaultLogin);
              SetqNomeUsu('ADMINISTRADOR');
              SetqSenhaUsu(SConfigDefaultKey);
              Result := True;
              Exit;
            end;
        end;
        try
          dmLogin := TdmLogin.Create(Nil);
          Result :=
            ( dmLogin.ExisteLogin
              (edtUserName.Text, SetiUsefulCriptografa(edtPassword.Text)));
          if Result then
          begin
              SetqLoginUsu(edtUserName.Text);
              SetqIdUsu(dmLogin.RetornaIdLogin(qLoginUsu));
              SetqNomeUsu(dmLogin.RetornaNomeUsuario(qLoginUsu));
              SetqSenhaUsu(dmLogin.RetornaSenhaUsuario(qLoginUsu));
          end;
        finally
          dmLogin.Free;
        end;
    except on e : exception do
        SetiMens(e.Message,0);
    end;
end;

end.
