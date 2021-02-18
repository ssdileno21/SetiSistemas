unit uFSDialogs;

interface

uses
  System.SysUtils, System.Classes, Dialogs, MIDASLIB, Controls;

  function SetiMens(Mess:String='';Id:Integer=1) : string;
  function SetiMensQuestions(Mess:string='';Id:Integer=-1) : Boolean;
  function SetiMensConfigError : string;

Const
    {$region}
    MessSFTel = 'Whatsapp : 31996282104';
    MessSFEmail = 'Email: setisistemasbh@gmail.com';
    MessContact = 'Seti Sistemas : '+#13+ MessSFTel +#13+ MessSFEmail;
    MessAlert1 =
    'Aten��o! A configura��o padr�o do sistema foi alterada, tente reverter o '+
    'que foi alterado ou remova e fa�a uma nova instala��o, caso o problema '+
    'persista, contate o administrador do sistema. ';
    MessAlert2 =
    'Aten��o, ocorreu um erro ao executar esse procedimento, favor '+
    'entrar em contato com o administrador do sistema e relatar a '+
    'seguinte mensagem: ';
    Mess1 = 'Registro inserido com sucesso.';
    Mess2 = 'As informa��es para o registro est�o incompletas.';
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
    Mess14 = 'Internet conectada!';
    Mess15 = 'Sem conex�o com a Internet!';
    Mess16 = 'Login j� existente';
    Mess17 = 'Registro atualizado com sucesso.';
    Mess18 = 'Nome do arquivo n�o informado.';
    Mess19 = 'Formato do arquivo inv�lido.';
    Mess20 = 'Arquivo j� existe, Deseja substitu�-lo?';
    Mess21 = 'Aten��o, o arquivo que ser� substitu�do, esta em uso, todas '+
             'as altera��es ser�o perdidas, deseja realmente substitu�-lo?';
    Mess22 = 'Opera��o cancelada! Informa��o obrigat�ria do campo: ';
    Mess23 = 'Aten��o! Ocorreu um erro ao executar esta opera��o, gentileza '+
             'procurar o administrador do sistema e informar o seguinte '+
             'c�digo: ';
    Mess24 = 'Opera��o cancelada! Checagem obrigat�rio para o campo: ';
    Mess25 = 'Opera��o cancelada! � obrigat�rio a sele��o de pelo menos '+
             'item no campo: ';
    Mess26 = 'Ocorreu um problema no parametro de pesquisa, gentileza '+
             'reportar o problema para o administrador do sistema.';
    Mess27 = 'Per�odo n�o informado.';
    Mess28 = 'Per�odo informado � inv�lido.';
    Mess29 = '� permitido somente 1 cadastro de empresa.';
    {$endregion}

implementation

function SetiMens(Mess: String; Id: Integer): string;
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

function SetiMensConfigError: string;
begin
    try
      MessageDlg(MessAlert1 + #13 + MessContact,mtError,[mbOK],0);
      Abort;
    finally

    end;
end;

function SetiMensQuestions(Mess:string;Id:Integer) : Boolean;
begin
    try
        Result := False;
        if (Id = 0) then //Compare answer with the true;
          Result :=  (MessageDlg(Mess,mtConfirmation,[mbYes,mbNo],0) = mrYes)
        else
        if (Id = 1) then //Compare answer with the false;
          Result :=  (MessageDlg(Mess,mtConfirmation,[mbYes,mbNo],0) = mrNo);
    finally

    end;
end;

end.
