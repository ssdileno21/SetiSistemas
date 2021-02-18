SET TERM ^ ;

create or alter procedure PROC_INS_UPD_EMPRESA (
    TIPOPESSOA char(1),
    NOMEFANTASIA varchar(255),
    RAZAOSOCIAL varchar(255),
    NUMCPFCNPJ varchar(14),
    POSSUIINSESTADUAL char(1),
    INSESTADUAL integer,
    INSMUNICIPAL varchar(30),
    ID_CNAE integer,
    ID_REGIMETRIBUTARIO integer,
    ID_REGIMEESPECIALTRIB integer,
    EMAIL varchar(100),
    NUMTELEFONE integer,
    NUMCELULAR integer,
    SITE varchar(100),
    LOGRADOUROCEP integer,
    LOGRADOURO varchar(150),
    LOGRADOURONUM integer,
    LOGRADOUROCOMP varchar(50),
    LOGRADOUROBAIRRO varchar(100),
    ID_UF integer,
    ID_CIDADE integer,
    CAMINHOLOGO varchar(255))
as
begin
        if (EXISTS(SELECT NUMCPFCNPJ FROM TBCADEMPRESA WHERE (NUMCPFCNPJ = :NUMCPFCNPJ))) then
            update tbcadempresa
            SET
                 TIPOPESSOA = :tipopessoa
                ,NOMEFANTASIA = :nomefantasia
                ,RAZAOSOCIAL = :razaosocial
                ,NUMCPFCNPJ = :numcpfcnpj
                ,POSSUIINSESTADUAL = :possuiinsestadual
                ,INSESTADUAL = :INSESTADUAL
                ,INSMUNICIPAL = :INSMUNICIPAL
                ,ID_CNAE = :ID_CNAE
                ,ID_REGIMETRIBUTARIO = :ID_REGIMETRIBUTARIO
                ,ID_REGIMEESPECIALTRIB = :ID_REGIMEESPECIALTRIB
                ,EMAIL = :EMAIL
                ,NUMTELEFONE = :NUMTELEFONE
                ,NUMCELULAR = :NUMCELULAR
                ,SITE = :SITE
                ,LOGRADOUROCEP = :LOGRADOUROCEP
                ,LOGRADOURO = :LOGRADOURO
                ,LOGRADOURONUM = :LOGRADOURONUM
                ,LOGRADOUROCOMP = :LOGRADOUROCOMP
                ,LOGRADOUROBAIRRO = :LOGRADOUROBAIRRO
                ,CAMINHOLOGO = :CAMINHOLOGO
             where (numcpfcnpj = numcpfcnpj);
        else
            insert into tbcadempresa
            (
                 TIPOPESSOA
                ,NOMEFANTASIA
                ,RAZAOSOCIAL
                ,NUMCPFCNPJ
                ,possuiinsestadual
                ,INSESTADUAL
                ,INSMUNICIPAL
                ,ID_CNAE
                ,ID_REGIMETRIBUTARIO
                ,ID_REGIMEESPECIALTRIB
                ,EMAIL
                ,NUMTELEFONE
                ,NUMCELULAR
                ,SITE
                ,LOGRADOUROCEP
                ,LOGRADOURO
                ,LOGRADOURONUM
                ,LOGRADOUROCOMP
                ,LOGRADOUROBAIRRO
                ,CAMINHOLOGO
            ) values
            (
                 :TIPOPESSOA
                ,:NOMEFANTASIA
                ,:RAZAOSOCIAL
                ,:NUMCPFCNPJ
                ,:possuiinsestadual
                ,:INSESTADUAL
                ,:INSMUNICIPAL
                ,:ID_CNAE
                ,:ID_REGIMETRIBUTARIO
                ,:ID_REGIMEESPECIALTRIB
                ,:EMAIL
                ,:NUMTELEFONE
                ,:NUMCELULAR
                ,:SITE
                ,:LOGRADOUROCEP
                ,:LOGRADOURO
                ,:LOGRADOURONUM
                ,:LOGRADOUROCOMP
                ,:LOGRADOUROBAIRRO
                ,:CAMINHOLOGO
            );


  suspend;
end^

SET TERM ; ^

/* Following GRANT statements are generated automatically */

GRANT SELECT,INSERT,UPDATE ON TBCADEMPRESA TO PROCEDURE PROC_INS_UPD_EMPRESA;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE PROC_INS_UPD_EMPRESA TO SYSDBA;
