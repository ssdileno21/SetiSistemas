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
    'Atenção! A configuração padrão do sistema foi alterada, tente reverter o '+
    'que foi alterado ou remova e faça uma nova instalação, caso o problema '+
    'persista, contate o administrador do sistema. ';
    MessAlert2 =
    'Atenção, ocorreu um erro ao executar esse procedimento, favor '+
    'entrar em contato com o administrador do sistema e relatar a '+
    'seguinte mensagem: ';
    Mess1 = 'Registro inserido com sucesso.';
    Mess2 = 'As informações para o registro estão incompletas.';
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
    Mess14 = 'Internet conectada!';
    Mess15 = 'Sem conexão com a Internet!';
    Mess16 = 'Login já existente';
    Mess17 = 'Registro atualizado com sucesso.';
    Mess18 = 'Nome do arquivo não informado.';
    Mess19 = 'Formato do arquivo inválido.';
    Mess20 = 'Arquivo já existe, Deseja substituí-lo?';
    Mess21 = 'Atenção, o arquivo que será substituído, esta em uso, todas '+
             'as alterações serão perdidas, deseja realmente substituí-lo?';
    Mess22 = 'Operação cancelada! Informação obrigatória do campo: ';
    Mess23 = 'Atenção! Ocorreu um erro ao executar esta operação, gentileza '+
             'procurar o administrador do sistema e informar o seguinte '+
             'código: ';
    Mess24 = 'Operação cancelada! Checagem obrigatório para o campo: ';
    Mess25 = 'Operação cancelada! É obrigatório a seleção de pelo menos '+
             'item no campo: ';
    Mess26 = 'Ocorreu um problema no parametro de pesquisa, gentileza '+
             'reportar o problema para o administrador do sistema.';
    Mess27 = 'Período não informado.';
    Mess28 = 'Período informado é inválido.';
    Mess29 = 'É permitido somente 1 cadastro de empresa.';
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
