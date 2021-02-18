unit uMess;

interface

uses Dialogs, SysUtils;
{
procedure SetiMensagens(Id:Integer=-1;Val:String='');
function SetiMensagensConfGetMens(Id:Integer=-1;Val:String='') : string;}
function SetiMens(Id:Integer=-1;Mess:String='';TypeMess:String='') : string;

Const
    SetiTel = ' Tel: 31996282104';
    SetiEmail = ' dileno.ssantos@gmail.com';
    ErrorAlert = 'Ocorreu um erro!!! Favor entrar em contato com a '+
      'Seti Sistemas pelo e-mail ('+
      SetiEmail +') e informe o seguinte erro: ';
    Mess1 = 'Registro inclu�do com sucesso.';
    Mess2 = 'Informa��es para o registros est�o incompletas.';
    Mess3 = 'Registro exclu�do com sucesso.';
    Mess4 = 'Login n�o informado.';
    Mess5 = 'Senha n�o informada.';
    Mess6 = 'Login incorreto.';
    Mess7 = 'Senha incorreta.';
    Mess8 = 'O login ou a senha est�o incorretos.';
    Mess9 = 'Nenhum regitro encontrado.';
    Mess10 = 'Confirma inclus�o do registro?';
    Mess11 = 'Confirma altera��o do registro?';
    Mess12 = 'Confirma exclus�o do registro?';
    Mess13 = 'A consulta ser� realizada sem filtro, deseja continuar?';

implementation

function SetiMens(Id:Integer;Mess:String;TypeMess:String) : string;
begin
    try
        if (UpperCase(TypeMess) = 'NORMAL') then begin
          if (Id=0) and (Mess<>'') then MessageDlg(Mess,mtInformation,
            [mbOK],0);
        end else
        if (UpperCase(TypeMess) = 'ERROR') then begin
            if (Id=0) and (Mess<>'') then MessageDlg(ErrorAlert+' - '+Mess,
              mtError,[mbOK],0);
        end else
        if (UpperCase(TypeMess) = 'INFOR') then begin
            if (Id=0) and (Mess<>'') then MessageDlg(Mess1,mtInformation,
              [mbOK],0);
        end;
    finally

    end;
end;
{
procedure SetiMensagens(Id:Integer=-1;Val:string='');
begin
    if (Id = 0) and (Val='') then MessageDlg('Registro inclu�do com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 0) and (Val<>'') then MessageDlg('O registro do '+Val+' foi inclu�do com sucesso.',mtInformation,[mbOK],0);
    if (Id = 1) and (Val='') then MessageDlg('Informa��es para o registros est�o incompletas.',mtInformation,[mbOK],0) else
    if (Id = 1) and (Val<>'') then MessageDlg('As informa��es para o registro do '+Val+' est�o incompletas.',mtInformation,[mbOK],0);
    if (Id = 2) and (Val='') then MessageDlg('Registro atualizado com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 2) and (Val<>'') then MessageDlg('O registro do '+Val+' foi atualizado com sucesso.',mtInformation,[mbOK],0);
    if (Id = 3) and (Val='') then MessageDlg('Registro exclu�do com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 3) and (Val<>'') then MessageDlg('O registro do '+Val+' foi exclu�do com sucesso.',mtInformation,[mbOK],0);
    if (Id = 4) then MessageDlg('Login n�o informado.',mtInformation,[mbOK],0);
    if (Id = 5) then MessageDlg('Senha n�o informada.',mtInformation,[mbOK],0);
    if (Id = 6) then MessageDlg('Valor n�o informado.',mtInformation,[mbOK],0);
    if (Id = 7) then MessageDlg('Login incorreto.',mtError,[mbOK],0);
    if (Id = 8) then MessageDlg('Senha incorreta.',mtError,[mbOK],0);
    if (Id = 9) then MessageDlg('O login ou a senha est�o incorretos.',mtError,[mbOK],0);
    if (Id = 10) then MessageDlg('Nenhum regitro encontrado.',mtInformation,[mbOK],0);
end;

function SetiMensagensConfGetMens(Id:Integer;Val:String) : string;
begin
    Result := '';
    if (Id = 0) then Result := 'Confirma inclus�o do registro?';
    if (Id = 1) then Result := 'Confirma inclus�o do registro '+Val+'?';
    if (Id = 2) then Result := 'Confirma altera��o do registro?';
    if (Id = 3) then Result := 'Confirma altera��o do registro '+Val+'?';
    if (Id = 4) then Result := 'Confirma exclus�o do registro?';
    if (Id = 5) then Result := 'Confirma exclus�o do registro '+Val+'?';
    if (Id = 6) then Result := 'Confirma exclus�o do registro?';
    if (Id = 7) then Result := 'Confirma exclus�o do registro '+Val+'?';
    if (Id = 8) then Result := 'A consulta ser� realizada sem filtro, deseja continuar?';
end;}

end.
