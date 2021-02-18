SET TERM ^ ;

create or alter procedure SP_LISTA_VENDAS_MANUAIS (
    ID integer,
    ID_CLIENTE integer,
    NOME_CLIENTE varchar(100),
    ID_FUNCIONARIO integer,
    NOME_FUNCIONARIO varchar(100),
    ID_ROTAS integer,
    ROTA varchar(100),
    DATCADASTRO timestamp,
    FORMAPAGTO integer,
    DATPAGTO timestamp)
returns (
    VENDA_CODIGO integer,
    CLIENTE_CODIGO integer,
    CLIENTE_NOME varchar(100),
    FUNCIONARIO_CODIGO integer,
    FUNCIONARIO_NOME varchar(100),
    ENDERECO varchar(150),
    NUMERO integer,
    COMPLEMENTO varchar(50),
    BAIRRO varchar(100),
    CIDADE varchar(150),
    UF char(2),
    CEP integer,
    REGIOES_CODIGO integer,
    REGIOES_NOME varchar(100),
    ROTA_CODIGO integer,
    ROTA_NOME varchar(100),
    SETOR_CODIGO integer,
    SETOR_NOME varchar(100),
    USU_CADASTRO integer,
    DT_CADASTRO timestamp,
    USU_ALTERACAO integer,
    DT_ULTIMA_ALT timestamp,
    USU_CANCELAMENTO integer,
    DT_USUARIO_CANC timestamp,
    FORMA_PAGAMENTO varchar(100),
    DT_PAGAMENTO timestamp,
    VALOR_TOTAL_VENDA numeric(15,2),
    STATUS char(1))
as
begin
    FOR SELECT
                 V.ID
                ,V.ID_CLIENTE
                ,C.NOME AS NOME_CLIENTE
                ,V.ID_FUNCIONARIO
                ,F.NOME AS NOME_FUNCIONARIO
                ,C.LOGRADOURO
                ,C.LOGRADOURONUM
                ,C.LOGRADOUROCOMP
                ,C.LOGRADOUROBAIRRO
                ,C.LOGRADOUROCIDADE
                ,C.LOGRADOUROUF
                ,C.LOGRADOUROCEP AS CEP
                ,V.ID_REGIOES
                ,RE.DESCRICAO
                ,V.ID_ROTAS
                ,RO.DESCRICAO
                ,V.ID_SETORES
                ,SE.DESCRICAO
                ,V.ID_USUARIOCAD
                ,V.DATCADASTRO
                ,V.ID_USUARIOALT AS Usuario_Alt
                ,V.DATULTIMAALT AS Dt_Ultima_Alt
                ,V.ID_USUARIOCANC AS Usuario_Canc
                ,V.DATUSUARIOCANC AS Dt_Usuario_Canc
                ,FP.DESCRICAO AS Forma_Pagamento
                ,V.DATPAGTO AS Dt_Pagto
                ,V.VLRTOTALVENDA AS Vlr_Total_Venda
                ,V.STATUS AS Status
        FROM TBVENDAMANUAL V
        LEFT JOIN TBCADCLIENTES C ON V.ID_CLIENTE = C.ID
        LEFT JOIN TBCADFUNCIONARIOS F ON V.ID_FUNCIONARIO = F.ID
        LEFT JOIN TBCADREGIOES RE ON RE.ID = V.ID_REGIOES
        LEFT JOIN TBCADSETORES SE ON SE.ID = V.ID_SETORES
        LEFT JOIN TBCADROTAS RO ON RO.ID = V.ID_ROTAS
        LEFT JOIN TBCADFORMAPAGTO FP ON V.ID_FORMAPAGTO = FP.ID
        WHERE
        /*ID*/
            (CASE WHEN :id IS NULL THEN 1 ELSE V.ID END =
                CASE WHEN :id IS NULL THEN 1 ELSE :id END)

        /*ID_CLIENTE*/
        AND (CASE WHEN :id_cliente IS NULL THEN 1 ELSE V.id_cliente END =
                CASE WHEN :id_cliente IS NULL THEN 1 ELSE :id_cliente END)

        /*NOME_CLIENTE*/
        AND ((CASE WHEN :nome_cliente IS NULL THEN 1 END = 1) OR
                (CASE WHEN :nome_cliente IS NOT NULL THEN UPPER(C.NOME) END)
                LIKE UPPER(:nome_cliente))

        /*ID_FUNCIONARIO*/
        AND (CASE WHEN :id_funcionario IS NULL THEN 1 ELSE V.id_funcionario
            END = CASE WHEN :id_funcionario IS NULL THEN 1 ELSE :id_funcionario
                END)

        /*NOME_FUNCIONARIO*/
        AND ((CASE WHEN :nome_funcionario IS NULL THEN 1 END = 1) OR
                (CASE when UPPER(:nome_funcionario) IS NOT NULL THEN F.nome END)
                LIKE UPPER(:nome_funcionario))

        /*ID_ROTAS*/
        AND (CASE WHEN :ID_ROTAS IS NULL THEN 1 ELSE V.id_rotas END =
                CASE WHEN :ID_ROTAS IS NULL THEN 1 ELSE :ID_ROTAS END)

        /*ROTA*/
        AND ((CASE WHEN :ROTA IS NULL THEN 1 END = 1) OR
                (CASE WHEN UPPER(:ROTA) IS NOT NULL THEN RO.DESCRICAO END) LIKE
                  UPPER(:ROTA))

        /*DATCADASTRO*/
        AND (CASE WHEN :datcadastro IS NULL THEN (current_timestamp) ELSE
            V.datcadastro END) = (CASE WHEN :datcadastro IS NULL THEN
                (current_timestamp) ELSE :datcadastro END)

        /*FORMAPAGTO*/
        AND ((CASE WHEN :formapagto IS NULL THEN 1 END = 1) OR
                (CASE WHEN :formapagto IS NOT NULL THEN FP.descricao END) LIKE
                  :formapagto)

        /*DATPAGTO*/
        AND (CASE WHEN :datpagto IS NULL THEN (current_timestamp) ELSE
            V.datpagto END) = (CASE WHEN :datpagto IS NULL THEN
                (current_timestamp) ELSE :datpagto END)
        INTO
            :VENDA_CODIGO,
            :CLIENTE_CODIGO,
            :CLIENTE_NOME,
            :FUNCIONARIO_CODIGO,
            :FUNCIONARIO_NOME,
            :ENDERECO,
            :NUMERO,
            :COMPLEMENTO,
            :BAIRRO,
            :CIDADE,
            :UF,
            :CEP,
            :REGIOES_CODIGO,
            :REGIOES_NOME,
            :ROTA_CODIGO,
            :ROTA_NOME,
            :SETOR_CODIGO,
            :SETOR_NOME,
            :USU_CADASTRO,
            :DT_CADASTRO,
            :USU_ALTERACAO,
            :DT_ULTIMA_ALT,
            :USU_CANCELAMENTO,
            :DT_USUARIO_CANC,
            :FORMA_PAGAMENTO,
            :DT_PAGAMENTO,
            :VALOR_TOTAL_VENDA,
            :STATUS
            DO
  suspend;
end^

SET TERM ; ^

/* Following GRANT statements are generated automatically */

GRANT SELECT ON TBVENDAMANUAL TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADCLIENTES TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADFUNCIONARIOS TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADREGIOES TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADSETORES TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADROTAS TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;
GRANT SELECT ON TBCADFORMAPAGTO TO PROCEDURE SP_LISTA_VENDAS_MANUAIS;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE SP_LISTA_VENDAS_MANUAIS TO SYSDBA;
