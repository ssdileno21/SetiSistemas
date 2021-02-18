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
    Mess1 = 'Registro incluído com sucesso.';
    Mess2 = 'Informações para o registros estão incompletas.';
    Mess3 = 'Registro excluído com sucesso.';
    Mess4 = 'Login não informado.';
    Mess5 = 'Senha não informada.';
    Mess6 = 'Login incorreto.';
    Mess7 = 'Senha incorreta.';
    Mess8 = 'O login ou a senha estão incorretos.';
    Mess9 = 'Nenhum regitro encontrado.';
    Mess10 = 'Confirma inclusão do registro?';
    Mess11 = 'Confirma alteração do registro?';
    Mess12 = 'Confirma exclusão do registro?';
    Mess13 = 'A consulta será realizada sem filtro, deseja continuar?';

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
    if (Id = 0) and (Val='') then MessageDlg('Registro incluído com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 0) and (Val<>'') then MessageDlg('O registro do '+Val+' foi incluído com sucesso.',mtInformation,[mbOK],0);
    if (Id = 1) and (Val='') then MessageDlg('Informações para o registros estão incompletas.',mtInformation,[mbOK],0) else
    if (Id = 1) and (Val<>'') then MessageDlg('As informações para o registro do '+Val+' estão incompletas.',mtInformation,[mbOK],0);
    if (Id = 2) and (Val='') then MessageDlg('Registro atualizado com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 2) and (Val<>'') then MessageDlg('O registro do '+Val+' foi atualizado com sucesso.',mtInformation,[mbOK],0);
    if (Id = 3) and (Val='') then MessageDlg('Registro excluído com sucesso.',mtInformation,[mbOK],0) else
    if (Id = 3) and (Val<>'') then MessageDlg('O registro do '+Val+' foi excluído com sucesso.',mtInformation,[mbOK],0);
    if (Id = 4) then MessageDlg('Login não informado.',mtInformation,[mbOK],0);
    if (Id = 5) then MessageDlg('Senha não informada.',mtInformation,[mbOK],0);
    if (Id = 6) then MessageDlg('Valor não informado.',mtInformation,[mbOK],0);
    if (Id = 7) then MessageDlg('Login incorreto.',mtError,[mbOK],0);
    if (Id = 8) then MessageDlg('Senha incorreta.',mtError,[mbOK],0);
    if (Id = 9) then MessageDlg('O login ou a senha estão incorretos.',mtError,[mbOK],0);
    if (Id = 10) then MessageDlg('Nenhum regitro encontrado.',mtInformation,[mbOK],0);
end;

function SetiMensagensConfGetMens(Id:Integer;Val:String) : string;
begin
    Result := '';
    if (Id = 0) then Result := 'Confirma inclusão do registro?';
    if (Id = 1) then Result := 'Confirma inclusão do registro '+Val+'?';
    if (Id = 2) then Result := 'Confirma alteração do registro?';
    if (Id = 3) then Result := 'Confirma alteração do registro '+Val+'?';
    if (Id = 4) then Result := 'Confirma exclusão do registro?';
    if (Id = 5) then Result := 'Confirma exclusão do registro '+Val+'?';
    if (Id = 6) then Result := 'Confirma exclusão do registro?';
    if (Id = 7) then Result := 'Confirma exclusão do registro '+Val+'?';
    if (Id = 8) then Result := 'A consulta será realizada sem filtro, deseja continuar?';
end;}

end.
