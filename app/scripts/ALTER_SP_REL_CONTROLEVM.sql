SET TERM ^ ;

create or alter procedure SP_REL_CONTROLEVM (
    ID_REGIAO integer,
    DTINI timestamp,
    DTFIM timestamp,
    ID_ROTA integer,
    ID_SETOR integer)
returns (
    ID integer,
    PRODUTO varchar(100),
    TOTALQTDVENDA integer,
    TOTALVLRVENDA numeric(15,2),
    TOTALGERAL numeric(15,2),
    QTDTOTALCONSIGNADO integer)
as
begin
    FOR
        SELECT

              P.ID AS ID_
             ,( SELECT NOME
                FROM TBCADPRODUTOS P1
                WHERE P1.ID = P.ID
                AND P1.status = 'S'
               ) AS PRODUTO_
             ,( SELECT COALESCE(SUM(I0.qtdvenda),0)
                FROM tbvendamanual_itens I0
                INNER JOIN tbvendamanual V0 ON
                    V0.ID = I0.id_vendamanual
                INNER JOIN TBCADCLIENTES CLI ON
                    CLI.id = V0.id_cliente
                        AND CLI.id_regiao IS NOT NULL
                            AND CLI.status = 'S'
                INNER JOIN TBCADREGIOES RE ON
                    RE.id = CLI.id_regiao
                WHERE I0.id_produto = P.id
                AND I0.vlrvenda > 0
                AND V0.status = 'P'
                AND RE.id = :ID_REGIAO
                AND V0.datcadastro BETWEEN :dtini AND :dtfim
                AND (CASE WHEN :id_rota = -1 THEN 1 ELSE CLI.id_rota END =
                    CASE WHEN :id_rota = -1 THEN 1 ELSE :id_rota END)
                AND (CASE WHEN :id_setor = -1 THEN 1 ELSE CLI.id_setor END =
                    CASE WHEN :id_setor = -1 THEN 1 ELSE :id_setor END)
               ) AS TOTALQTDVENDA_
             ,( SELECT COALESCE(SUM(I1.vlrvenda),0)
                FROM tbvendamanual_itens I1
                INNER JOIN tbvendamanual V1 ON
                    V1.ID = I1.id_vendamanual
                INNER JOIN TBCADCLIENTES CLI ON
                    CLI.id = V1.id_cliente
                        AND CLI.id_regiao IS NOT NULL
                            AND CLI.status = 'S'
                INNER JOIN TBCADREGIOES RE ON
                    RE.id = CLI.id_regiao                       
                WHERE I1.id_produto = P.id
                AND I1.vlrvenda > 0
                AND V1.status = 'P'
                AND RE.id = :ID_REGIAO
                AND V1.datcadastro BETWEEN :dtini AND :dtfim
                AND (CASE WHEN :id_rota = -1 THEN 1 ELSE CLI.id_rota END =
                    CASE WHEN :id_rota = -1 THEN 1 ELSE :id_rota END)
                AND (CASE WHEN :id_setor = -1 THEN 1 ELSE CLI.id_setor END =
                    CASE WHEN :id_setor = -1 THEN 1 ELSE :id_setor END)
               ) AS TOTALVLRVENDA_
             ,( SELECT FIRST 1
                    COALESCE(sum(I2.vlrvenda),0)
                FROM tbvendamanual_itens I2
                INNER JOIN tbvendamanual V2 ON
                    V2.ID = I2.id_vendamanual
                INNER JOIN TBCADCLIENTES CLI ON
                    CLI.id = V2.id_cliente
                        AND CLI.id_regiao IS NOT NULL
                            AND CLI.status = 'S'
                INNER JOIN TBCADREGIOES RE ON
                    RE.id = CLI.id_regiao
                WHERE I2.vlrvenda > 0
                AND V2.status = 'P'
                AND RE.id = :ID_REGIAO
                AND V2.datcadastro BETWEEN :dtini AND :dtfim
                AND (CASE WHEN :id_rota = -1 THEN 1 ELSE CLI.id_rota END =
                    CASE WHEN :id_rota = -1 THEN 1 ELSE :id_rota END)
                AND (CASE WHEN :id_setor = -1 THEN 1 ELSE CLI.id_setor END =
                    CASE WHEN :id_setor = -1 THEN 1 ELSE :id_setor END)
               ) AS TOTALGERAL_
             ,( SELECT COALESCE(SUM(ES.QTDESTOQUE),0)
                FROM TBVENDAMANUAL_ESTOQUE ES
                INNER JOIN tbvendamanual V3 ON V3.id =
                    ES.id_vendamanual
                INNER JOIN tbcadclientes CLI ON
                    CLI.ID = V3.id_cliente
                        AND CLI.id_regiao IS NOT NULL
                            AND CLI.status = 'S'
                INNER JOIN tbcadregioes RE ON
                    RE.ID = CLI.id_regiao
                WHERE ES.qtdestoque > 0
                AND RE.id = :ID_REGIAO
                and ES.id_vendamanual_item = P.id
                AND V3.datcadastro BETWEEN :dtini AND :dtfim
                AND (CASE WHEN :id_rota = -1 THEN 1 ELSE CLI.id_rota END =
                    CASE WHEN :id_rota = -1 THEN 1 ELSE :id_rota END)
                AND (CASE WHEN :id_setor = -1 THEN 1 ELSE CLI.id_setor END =
                    CASE WHEN :id_setor = -1 THEN 1 ELSE :id_setor END)

               ) AS QTDTOTALCONSIGNADO
        FROM TBCADPRODUTOS P
        INNER JOIN (SELECT FIRST 16 ID
                    FROM TBCADPRODUTOS PF
                    WHERE PF.status = 'S') FILTRO ON FILTRO.ID = P.ID
        WHERE P.status = 'S'
        GROUP BY P.ID
    INTO
    :ID,
    :PRODUTO,
    :TOTALQTDVENDA,
    :TOTALVLRVENDA,
    :TOTALGERAL,
    :QTDTOTALCONSIGNADO
DO
  suspend;
end^

SET TERM ; ^

/* Following GRANT statements are generated automatically */

GRANT SELECT ON TBCADPRODUTOS TO PROCEDURE SP_REL_CONTROLEVM;
GRANT SELECT ON TBVENDAMANUAL_ITENS TO PROCEDURE SP_REL_CONTROLEVM;
GRANT SELECT ON TBVENDAMANUAL TO PROCEDURE SP_REL_CONTROLEVM;
GRANT SELECT ON TBCADCLIENTES TO PROCEDURE SP_REL_CONTROLEVM;
GRANT SELECT ON TBCADREGIOES TO PROCEDURE SP_REL_CONTROLEVM;
GRANT SELECT ON TBVENDAMANUAL_ESTOQUE TO PROCEDURE SP_REL_CONTROLEVM;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE SP_REL_CONTROLEVM TO SYSDBA;
