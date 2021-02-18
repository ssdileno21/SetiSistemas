unit uFSMens;

interface

uses
  System.SysUtils, System.Classes, Dialogs, MIDASLIB, Controls;

type
  TFSMens = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function rraaaateste : Boolean;
    function SetiMens(Mess:String='';Id:Integer=-1) : string;
    function SetiMensConfigError : string;

  published
    { Published declarations }
  end;

Const
    MessSFTel = 'Tel/Whatsapp : .+5531996282104';
    MessSFEmail = 'Email: setisistemasbh@gmail.com';
    MessContact = 'Seti Sistemas : '+#13+ MessSFTel +#13+ MessSFEmail;
    MessAlert1 =
    'Atenção, ocorreu divergências na configuração do sistema,        ' +
    'por favor, faça uma nova instalação, removendo primeiro a atual  ' +
    'ou entre em contato com o administrador do sistema.              ';
    MessAlert2 =
    'Atenção, ocorreu um erro ao executar esse procedimento, favor '+
    'entrar em contato com o administrador do sistema e relatar a '+
    'seguinte mensagem: ';


procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('SetiFramework', [TFSMens]);
end;

{ TComponent1 }

function TFSMens.rraaaateste: Boolean;
begin
  Result := False;
end;

function TFSMens.SetiMens(Mess: String; Id: Integer): string;
begin
    try
        if (Id = 0) then //ERROR
          MessageDlg(MessAlert2 +#13+ Mess +#13+ MessContact,mtError,
          [mbOK],0) else
        if (Id = 1) then //NORMAL
          MessageDlg(Mess,mtInformation,[mbOK],0) else
        if (Id = 2) then //WARNING
          MessageDlg(Mess,mtWarning,[mbOK],0);
    finally

    end;
end;

function TFSMens.SetiMensConfigError: string;
begin
    try
      MessageDlg(MessAlert1 + #13 + MessContact,mtError,[mbOK],0);
    finally

    end;
end;

end.
