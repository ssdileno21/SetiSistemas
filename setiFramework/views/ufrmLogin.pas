unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, ShellAPI, uInitialSettingControl;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
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
    procedure sbLoginClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbExibirSenhaClick(Sender: TObject);
  private
    { Private declarations }
    FInitialSettingControl : TInitialSettingControl;
    function ValidateUser(Login:string;Key:string) : Boolean;
  public
    { Public declarations }
  published
    property cInitialSettingControl : TInitialSettingControl
      read FInitialSettingControl write FInitialSettingControl;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uMess, uSetiConfig, udmLogin, uSetiUseful, ufrmInitialSetting;

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
      cInitialSettingControl := TInitialSettingControl.Create(Nil);
      if (NOT cInitialSettingControl.ValidationIniFile) then
      begin
          frmInitialSetting := TfrmInitialSetting.Create(Nil);
          frmInitialSetting.ShowModal;
      end;
    except on e : exception do
        SetiMens(0,e.Message);
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
        SetiMens(0,e.Message);
    end;
end;

procedure TfrmLogin.sbLoginClick(Sender: TObject);
begin
    if (edtUserName.Text = '') then
    begin
        SetiMens(1,Mess4);
        edtUserName.SetFocus;
        Abort;
    end;
    if (edtPassword.Text = '') then
    begin
        SetiMens(1,Mess5);
        edtPassword.SetFocus;
        Abort;
    end;

    if (ValidateUser(edtUserName.Text,edtPassword.Text)) then begin
      ModalResult := mrOk;
    end else begin
        MessageDlg(Mess8,mtInformation,[mbOK],0);
        Abort;
    end;
end;

function TfrmLogin.ValidateUser(Login, Key: string): Boolean;
begin
    try
        Result := False;
        if SConfigEnabledDefaultLoin then
        begin
            if (Login = SConfigDefaultLogin) and (Key = SConfigDefaultKey) then
            begin
              Result := True;
              Exit;
            end;
        end;
        try
          dmLogin := TdmLogin.Create(Nil);
          Result :=
            ( dmLogin.ExisteLogin
              (edtUserName.Text, SetiUsefulCriptografa(edtPassword.Text)));
        finally
          dmLogin.Free;
        end;
    except on e : exception do
        SetiMens(0,e.Message);
    end;
end;

end.
