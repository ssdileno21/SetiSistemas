CREATE SEQUENCE TMP_SEQUENCE;

select
         CASE WHEN sequence = 1 THEN NOME END AS NOME1
        ,CASE WHEN sequence = 2 THEN NOME END AS NOME2
        ,CASE WHEN sequence = 3 THEN NOME END AS NOME3
        ,CASE WHEN sequence = 4 THEN NOME END AS NOME4
        ,CASE WHEN sequence = 5 THEN NOME END AS NOME5
        ,CASE WHEN sequence = 6 THEN NOME END AS NOME6
        ,CASE WHEN sequence = 7 THEN NOME END AS NOME7
        ,CASE WHEN sequence = 8 THEN NOME END AS NOME8
        ,CASE WHEN sequence = 9 THEN NOME END AS NOME9
        ,CASE WHEN sequence = 10 THEN NOME END AS NOME10
        ,CASE WHEN sequence = 11 THEN NOME END AS NOME11
        ,CASE WHEN sequence = 12 THEN NOME END AS NOME12
        ,CASE WHEN sequence = 13 THEN NOME END AS NOME13
        ,CASE WHEN sequence = 14 THEN NOME END AS NOME14
        ,CASE WHEN sequence = 15 THEN NOME END AS NOME15
        ,CASE WHEN sequence = 16 THEN NOME END AS NOME16

         CASE WHEN sequence = 1 THEN qtdestoque END AS NOME1
        ,CASE WHEN sequence = 2 THEN qtdestoque END AS NOME2
        ,CASE WHEN sequence = 3 THEN qtdestoque END AS NOME3
        ,CASE WHEN sequence = 4 THEN qtdestoque END AS NOME4
        ,CASE WHEN sequence = 5 THEN qtdestoque END AS NOME5
        ,CASE WHEN sequence = 6 THEN qtdestoque END AS NOME6
        ,CASE WHEN sequence = 7 THEN qtdestoque END AS NOME7
        ,CASE WHEN sequence = 8 THEN qtdestoque END AS NOME8
        ,CASE WHEN sequence = 9 THEN qtdestoque END AS NOME9
        ,CASE WHEN sequence = 10 THEN qtdestoque END AS NOME10
        ,CASE WHEN sequence = 11 THEN qtdestoque END AS NOME11
        ,CASE WHEN sequence = 12 THEN qtdestoque END AS NOME12
        ,CASE WHEN sequence = 13 THEN qtdestoque END AS NOME13
        ,CASE WHEN sequence = 14 THEN qtdestoque END AS NOME14
        ,CASE WHEN sequence = 15 THEN qtdestoque END AS NOME15
        ,CASE WHEN sequence = 16 THEN qtdestoque END AS NOME16

from
(
select                                                     
       first 16
        NEXT VALUE FOR TMP_SEQUENCE as sequencia
       ,p.nome
       ,i.qtdestoque
       ,i.qtdestoque
       ,i.qtdvenda
       ,i.vlrvenda
       ,i.vlrtotal
from tbcadprodutos p                                       
left join  tbvendamanual_itens i on p.id = i.id_produto
AND i.ID_VENDAMANUAL = 3
WHERE 1 = 1
) a

DROP sequence TMP_SEQUENCE;

    ID              INTEGER NOT NULL,
    ID_VENDAMANUAL  INTEGER NOT NULL,
    ID_PRODUTO      INTEGER,
    QTDESTOQUE      BIGINT,
    CONTAGEM        BIGINT,
    QTDVENDA        BIGINT,
    VLRVENDA        NUMERIC(15,2) DEFAULT 0.00,
    VLRTOTAL        NUMERIC(15,2) DEFAULT 0.00

SELECT * FROM tbvendamanual_itens
