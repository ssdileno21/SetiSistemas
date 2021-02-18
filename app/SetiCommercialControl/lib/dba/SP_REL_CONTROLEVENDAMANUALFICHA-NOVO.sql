SET TERM ^ ;

create or alter procedure SP_REL_VENDAMANUAL_FICHA (
    PEDIDO_ID integer)
returns (
    SEQ bigint,
    ID_VENDAMANUAL bigint,
    NOME1 varchar(100),
    QTDESTOQUE1 bigint,
    CONTAGEM1 bigint,
    QTDVENDA1 bigint,
    VLRVENDA1 numeric(15,2),
    NOME2 varchar(100),
    QTDESTOQUE2 bigint,
    CONTAGEM2 bigint,
    QTDVENDA2 bigint,
    VLRVENDA2 numeric(15,2),
    NOME3 varchar(100),
    QTDESTOQUE3 bigint,
    CONTAGEM3 bigint,
    QTDVENDA3 bigint,
    VLRVENDA3 numeric(15,2),
    NOME4 varchar(100),
    QTDESTOQUE4 bigint,
    CONTAGEM4 bigint,
    QTDVENDA4 bigint,
    VLRVENDA4 numeric(15,2),
    NOME5 varchar(100),
    QTDESTOQUE5 bigint,
    CONTAGEM5 bigint,
    QTDVENDA5 bigint,
    VLRVENDA5 numeric(15,2),
    NOME6 varchar(100),
    QTDESTOQUE6 bigint,
    CONTAGEM6 bigint,
    QTDVENDA6 bigint,
    VLRVENDA6 numeric(15,2),
    NOME7 varchar(100),
    QTDESTOQUE7 bigint,
    CONTAGEM7 bigint,
    QTDVENDA7 bigint,
    VLRVENDA7 numeric(15,2),
    NOME8 varchar(100),
    QTDESTOQUE8 bigint,
    CONTAGEM8 bigint,
    QTDVENDA8 bigint,
    VLRVENDA8 numeric(15,2),
    NOME9 varchar(100),
    QTDESTOQUE9 bigint,
    CONTAGEM9 bigint,
    QTDVENDA9 bigint,
    VLRVENDA9 numeric(15,2),
    NOME10 varchar(100),
    QTDESTOQUE10 bigint,
    CONTAGEM10 bigint,
    QTDVENDA10 bigint,
    VLRVENDA10 numeric(15,2),
    NOME11 varchar(100),
    QTDESTOQUE11 bigint,
    CONTAGEM11 bigint,
    QTDVENDA11 bigint,
    VLRVENDA11 numeric(15,2),
    NOME12 varchar(100),
    QTDESTOQUE12 bigint,
    CONTAGEM12 bigint,
    QTDVENDA12 bigint,
    VLRVENDA12 numeric(15,2),
    NOME13 varchar(100),
    QTDESTOQUE13 bigint,
    CONTAGEM13 bigint,
    QTDVENDA13 bigint,
    VLRVENDA13 numeric(15,2),
    NOME14 varchar(100),
    QTDESTOQUE14 bigint,
    CONTAGEM14 bigint,
    QTDVENDA14 bigint,
    VLRVENDA14 numeric(15,2),
    NOME15 varchar(100),
    QTDESTOQUE15 bigint,
    CONTAGEM15 bigint,
    QTDVENDA15 bigint,
    VLRVENDA15 numeric(15,2),
    NOME16 varchar(100),
    QTDESTOQUE16 bigint,
    CONTAGEM16 bigint,
    QTDVENDA16 bigint,
    VLRVENDA16 numeric(15,2))
as
BEGIN
        FOR 
            SELECT                                                     
                FIRST 16
                (SELECT COUNT(*)+1
                    FROM TBCADPRODUTOS PR
                    WHERE PR.ID < P.ID
                    AND PR.STATUS = 'S'
                    ) AS SEQ_
                ,I.id_vendamanual AS id_vendamanual_
                
                ,TB1.NOME AS NOME1_
                ,TB1.QTDESTOQUE AS QTDESTOQUE1_
                ,TB1.CONTAGEM AS CONTAGEM1_
                ,TB1.QTDVENDA AS QTDVENDA1_
                ,TB1.VLRVENDA AS VLRVENDA1_
                
                ,TB2.NOME AS NOME2_            
                ,TB2.QTDESTOQUE AS QTDESTOQUE2_
                ,TB2.CONTAGEM AS CONTAGEM2_
                ,TB2.QTDVENDA AS QTDVENDA2_
                ,TB2.VLRVENDA AS VLRVENDA2_

                ,TB3.NOME AS NOME3_
                ,TB3.QTDESTOQUE AS QTDESTOQUE3_
                ,TB3.CONTAGEM AS CONTAGEM3_
                ,TB3.QTDVENDA AS QTDVENDA3_
                ,TB3.VLRVENDA AS VLRVENDA3_
            
                ,TB4.NOME AS NOME4_            
                ,TB4.QTDESTOQUE AS QTDESTOQUE4_
                ,TB4.CONTAGEM AS CONTAGEM4_
                ,TB4.QTDVENDA AS QTDVENDA4_
                ,TB4.VLRVENDA AS VLRVENDA4_
            
                ,TB5.NOME AS NOME5_            
                ,TB5.QTDESTOQUE AS QTDESTOQUE5_
                ,TB5.CONTAGEM AS CONTAGEM5_
                ,TB5.QTDVENDA AS QTDVENDA5_
                ,TB5.VLRVENDA AS VLRVENDA5_
            
                ,TB6.NOME AS NOME6_            
                ,TB6.QTDESTOQUE AS QTDESTOQUE6_
                ,TB6.CONTAGEM AS CONTAGEM6_
                ,TB6.QTDVENDA AS QTDVENDA6_
                ,TB6.VLRVENDA AS VLRVENDA6_
            
                ,TB7.NOME AS NOME7_            
                ,TB7.QTDESTOQUE AS QTDESTOQUE7_
                ,TB7.CONTAGEM AS CONTAGEM7_
                ,TB7.QTDVENDA AS QTDVENDA7_
                ,TB7.VLRVENDA AS VLRVENDA7_
            
                ,TB8.NOME AS NOME8_            
                ,TB8.QTDESTOQUE AS QTDESTOQUE8_
                ,TB8.CONTAGEM AS CONTAGEM8_
                ,TB8.QTDVENDA AS QTDVENDA8_
                ,TB8.VLRVENDA AS VLRVENDA8_
            
                ,TB9.NOME AS NOME9_            
                ,TB9.QTDESTOQUE AS QTDESTOQUE9_
                ,TB9.CONTAGEM AS CONTAGEM9_
                ,TB9.QTDVENDA AS QTDVENDA9_
                ,TB9.VLRVENDA AS VLRVENDA9_
            
                ,TB10.NOME AS NOME10_            
                ,TB10.QTDESTOQUE AS QTDESTOQUE10_
                ,TB10.CONTAGEM AS CONTAGEM10_
                ,TB10.QTDVENDA AS QTDVENDA10_
                ,TB10.VLRVENDA AS VLRVENDA10_
            
                ,TB11.NOME AS NOME11_            
                ,TB11.QTDESTOQUE AS QTDESTOQUE11_
                ,TB11.CONTAGEM AS CONTAGEM11_
                ,TB11.QTDVENDA AS QTDVENDA11_
                ,TB11.VLRVENDA AS VLRVENDA11_
            
                ,TB12.NOME AS NOME12_            
                ,TB12.QTDESTOQUE AS QTDESTOQUE12_
                ,TB12.CONTAGEM AS CO2NTAGEM12_
                ,TB12.QTDVENDA AS QTDVENDA12_
                ,TB12.VLRVENDA AS VLRVENDA12_
            
                ,TB13.NOME AS NOME13_            
                ,TB13.QTDESTOQUE AS QTDESTOQUE13_
                ,TB13.CONTAGEM AS CONTAGEM13_
                ,TB13.QTDVENDA AS QTDVENDA13_
                ,TB13.VLRVENDA AS VLRVENDA13_
            
                ,TB14.NOME AS NOME14_            
                ,TB14.QTDESTOQUE AS QTDESTOQUE14_
                ,TB14.CONTAGEM AS CONTAGEM14_
                ,TB14.QTDVENDA AS QTDVENDA14_
                ,TB14.VLRVENDA AS VLRVENDA14_
            
                ,TB15.NOME AS NOME15_            
                ,TB15.QTDESTOQUE AS QTDESTOQUE15_
                ,TB15.CONTAGEM AS CONTAGEM15_
                ,TB15.QTDVENDA AS QTDVENDA15_
                ,TB15.VLRVENDA AS VLRVENDA15_
            
                ,TB16.NOME AS NOME16_            
                ,TB16.QTDESTOQUE AS QTDESTOQUE16_
                ,TB16.CONTAGEM AS CONTAGEM16_
                ,TB16.QTDVENDA AS QTDVENDA16_
                ,TB16.VLRVENDA AS VLRVENDA16_
            
            FROM TBCADPRODUTOS P                                       
            LEFT JOIN  TBVENDAMANUAL_ITENS I ON P.ID = I.ID_PRODUTO 
                AND I.ID_VENDAMANUAL = :PEDIDO_ID
            LEFT JOIN tbvendamanual V ON V.id = I.id_vendamanual
            LEFT JOIN tbcadclientes C ON C.id = V.id_cliente
            -- 1 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB1 ON TB1.SEQ1 = 1
            -- 2 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB2 ON TB2.SEQ1 = 2
            -- 3 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB3 ON TB3.SEQ1 = 3
            -- 4 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB4 ON TB4.SEQ1 = 4
            -- 5 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB5 ON TB5.SEQ1 = 5
            -- 6 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB6 ON TB6.SEQ1 = 6
            -- 7 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB7 ON TB7.SEQ1 = 7
            -- 8 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB8 ON TB8.SEQ1 = 8
            -- 9 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB9 ON TB9.SEQ1 = 9
            -- 10 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB10 ON TB10.SEQ1 = 10
            -- 11 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB11 ON TB11.SEQ1 = 11
            -- 12 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB12 ON TB12.SEQ1 = 12
            -- 13 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB13 ON TB13.SEQ1 = 13
            -- 14 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB14 ON TB14.SEQ1 = 14
            -- 15 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB15 ON TB15.SEQ1 = 15
            -- 16 PRODUTO
            LEFT JOIN (SELECT   (SELECT COUNT(*)+1 FROM TBCADPRODUTOS PR1
                                WHERE PR1.ID < P1.ID AND PR1.STATUS = 'S'   ) AS SEQ1
                                ,P1.NOME, I1.QTDESTOQUE,I1.contagem,I1.QTDVENDA
                                ,I1.VLRVENDA,I1.VLRTOTAL
                        FROM TBCADPRODUTOS P1
                        LEFT JOIN  TBVENDAMANUAL_ITENS I1 ON P1.ID = I1.ID_PRODUTO
                        AND I1.ID_VENDAMANUAL = :PEDIDO_ID) TB16 ON TB16.SEQ1 = 16
            WHERE 1 = 1
            AND P.STATUS = 'S'
            ORDER BY P.ID

    INTO
        :SEQ,
        :ID_VENDAMANUAL,
        
        :NOME1,
        :QTDESTOQUE1,
        :CONTAGEM1,
        :QTDVENDA1,
        :VLRVENDA1,
        
        :NOME2,
        :QTDESTOQUE2,
        :CONTAGEM2,
        :QTDVENDA2,
        :VLRVENDA2,
        :NOME3,
        :QTDESTOQUE3,
        :CONTAGEM3,
        :QTDVENDA3,
        :VLRVENDA3,
        :NOME4,
        :QTDESTOQUE4,
        :CONTAGEM4,
        :QTDVENDA4,
        :VLRVENDA4,
        :NOME5,
        :QTDESTOQUE5,
        :CONTAGEM5,
        :QTDVENDA5,
        :VLRVENDA5,
        :NOME6,
        :QTDESTOQUE6,
        :CONTAGEM6,
        :QTDVENDA6,
        :VLRVENDA6,
        :NOME7,
        :QTDESTOQUE7,
        :CONTAGEM7,
        :QTDVENDA7,
        :VLRVENDA7,
        :NOME8,
        :QTDESTOQUE8,
        :CONTAGEM8,
        :QTDVENDA8,
        :VLRVENDA8,
        :NOME9,
        :QTDESTOQUE9,
        :CONTAGEM9,
        :QTDVENDA9,
        :VLRVENDA9,
        :NOME10,
        :QTDESTOQUE10,
        :CONTAGEM10,
        :QTDVENDA10,
        :VLRVENDA10,
        :NOME11,
        :QTDESTOQUE11,
        :CONTAGEM11,
        :QTDVENDA11,
        :VLRVENDA11,
        :NOME12,
        :QTDESTOQUE12,
        :CONTAGEM12,
        :QTDVENDA12,
        :VLRVENDA12,
        :NOME13,
        :QTDESTOQUE13,
        :CONTAGEM13,
        :QTDVENDA13,
        :VLRVENDA13,
        :NOME14,
        :QTDESTOQUE14,
        :CONTAGEM14,
        :QTDVENDA14,
        :VLRVENDA14,
        :NOME15,
        :QTDESTOQUE15,
        :CONTAGEM15,
        :QTDVENDA15,
        :VLRVENDA15,
        :NOME16,
        :QTDESTOQUE16,
        :CONTAGEM16,
        :QTDVENDA16,
        :VLRVENDA16    
    DO
    SUSPEND;
END^

SET TERM ; ^

/* Following GRANT statements are generated automatically */

GRANT SELECT ON TBCADPRODUTOS TO PROCEDURE SP_REL_VENDAMANUAL_FICHA;
GRANT SELECT ON TBVENDAMANUAL_ITENS TO PROCEDURE SP_REL_VENDAMANUAL_FICHA;
GRANT SELECT ON TBVENDAMANUAL TO PROCEDURE SP_REL_VENDAMANUAL_FICHA;
GRANT SELECT ON TBCADCLIENTES TO PROCEDURE SP_REL_VENDAMANUAL_FICHA;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE SP_REL_VENDAMANUAL_FICHA TO SYSDBA;