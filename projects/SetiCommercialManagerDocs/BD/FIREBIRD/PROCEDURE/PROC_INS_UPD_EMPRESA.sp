create or alter procedure PROC_INS_UPD_EMPRESA
(
    TIPOPESSOA             CHAR(1),
    NOMEFANTASIA           VARCHAR(255),
    RAZAOSOCIAL            VARCHAR(255),
    NUMCPFCNPJ             VARCHAR(14),
    possuiinsestadual      CHAR(1),
    INSESTADUAL            INTEGER,
    INSMUNICIPAL           VARCHAR(30),
    ID_CNAE                INTEGER,
    ID_REGIMETRIBUTARIO    INTEGER,
    ID_REGIMEESPECIALTRIB  INTEGER,
    EMAIL                  VARCHAR(100),
    NUMTELEFONE            INTEGER,
    NUMCELULAR             INTEGER,
    SITE                   VARCHAR(100),
    LOGRADOUROCEP          INTEGER,
    LOGRADOURO             VARCHAR(150),
    LOGRADOURONUM          INTEGER,
    LOGRADOUROCOMP         VARCHAR(50),
    LOGRADOUROBAIRRO       VARCHAR(100),
    ID_UF                  INTEGER,
    ID_CIDADE              INTEGER,
    CAMINHOLOGO            VARCHAR(255)  
)
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
                ,ID_UF = :ID_UF
                ,ID_CIDADE = :ID_CIDADE
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
                ,ID_UF
                ,ID_CIDADE
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
                ,:ID_UF
                ,:ID_CIDADE
                ,:CAMINHOLOGO
            );
  suspend;
end;

