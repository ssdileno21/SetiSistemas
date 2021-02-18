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

        ,CASE WHEN sequence = 1 THEN qtdestoque END AS qtdestoque1
        ,CASE WHEN sequence = 2 THEN qtdestoque END AS qtdestoque2
        ,CASE WHEN sequence = 3 THEN qtdestoque END AS qtdestoque3
        ,CASE WHEN sequence = 4 THEN qtdestoque END AS qtdestoque4
        ,CASE WHEN sequence = 5 THEN qtdestoque END AS qtdestoque5
        ,CASE WHEN sequence = 6 THEN qtdestoque END AS qtdestoque6
        ,CASE WHEN sequence = 7 THEN qtdestoque END AS qtdestoque7
        ,CASE WHEN sequence = 8 THEN qtdestoque END AS qtdestoque8
        ,CASE WHEN sequence = 9 THEN qtdestoque END AS qtdestoque9
        ,CASE WHEN sequence = 10 THEN qtdestoque END AS qtdestoque10
        ,CASE WHEN sequence = 11 THEN qtdestoque END AS qtdestoque11
        ,CASE WHEN sequence = 12 THEN qtdestoque END AS qtdestoque12
        ,CASE WHEN sequence = 13 THEN qtdestoque END AS qtdestoque13
        ,CASE WHEN sequence = 14 THEN qtdestoque END AS qtdestoque14
        ,CASE WHEN sequence = 15 THEN qtdestoque END AS qtdestoque15
        ,CASE WHEN sequence = 16 THEN qtdestoque END AS qtdestoque16
		
        ,CASE WHEN sequence = 1 THEN qtdvenda END AS qtdvenda1
        ,CASE WHEN sequence = 2 THEN qtdvenda END AS qtdvenda2
        ,CASE WHEN sequence = 3 THEN qtdvenda END AS qtdvenda3
        ,CASE WHEN sequence = 4 THEN qtdvenda END AS qtdvenda4
        ,CASE WHEN sequence = 5 THEN qtdvenda END AS qtdvenda5
        ,CASE WHEN sequence = 6 THEN qtdvenda END AS qtdvenda6
        ,CASE WHEN sequence = 7 THEN qtdvenda END AS qtdvenda7
        ,CASE WHEN sequence = 8 THEN qtdvenda END AS qtdvenda8
        ,CASE WHEN sequence = 9 THEN qtdvenda END AS qtdvenda9
        ,CASE WHEN sequence = 10 THEN qtdvenda END AS qtdvenda10
        ,CASE WHEN sequence = 11 THEN qtdvenda END AS qtdvenda11
        ,CASE WHEN sequence = 12 THEN qtdvenda END AS qtdvenda12
        ,CASE WHEN sequence = 13 THEN qtdvenda END AS qtdvenda13
        ,CASE WHEN sequence = 14 THEN qtdvenda END AS qtdvenda14
        ,CASE WHEN sequence = 15 THEN qtdvenda END AS qtdvenda15
        ,CASE WHEN sequence = 16 THEN qtdvenda END AS qtdvenda16		
		
        ,CASE WHEN sequence = 1 THEN vlrvenda END AS vlrvenda1
        ,CASE WHEN sequence = 2 THEN vlrvenda END AS vlrvenda2
        ,CASE WHEN sequence = 3 THEN vlrvenda END AS vlrvenda3
        ,CASE WHEN sequence = 4 THEN vlrvenda END AS vlrvenda4
        ,CASE WHEN sequence = 5 THEN vlrvenda END AS vlrvenda5
        ,CASE WHEN sequence = 6 THEN vlrvenda END AS vlrvenda6
        ,CASE WHEN sequence = 7 THEN vlrvenda END AS vlrvenda7
        ,CASE WHEN sequence = 8 THEN vlrvenda END AS vlrvenda8
        ,CASE WHEN sequence = 9 THEN vlrvenda END AS vlrvenda9
        ,CASE WHEN sequence = 10 THEN vlrvenda END AS vlrvenda10
        ,CASE WHEN sequence = 11 THEN vlrvenda END AS vlrvenda11
        ,CASE WHEN sequence = 12 THEN vlrvenda END AS vlrvenda12
        ,CASE WHEN sequence = 13 THEN vlrvenda END AS vlrvenda13
        ,CASE WHEN sequence = 14 THEN vlrvenda END AS vlrvenda14
        ,CASE WHEN sequence = 15 THEN vlrvenda END AS vlrvenda15
        ,CASE WHEN sequence = 16 THEN vlrvenda END AS vlrvenda16	

        ,CASE WHEN sequence = 1 THEN vlrtotal END AS vlrtotal1
        ,CASE WHEN sequence = 2 THEN vlrtotal END AS vlrtotal2
        ,CASE WHEN sequence = 3 THEN vlrtotal END AS vlrtotal3
        ,CASE WHEN sequence = 4 THEN vlrtotal END AS vlrtotal4
        ,CASE WHEN sequence = 5 THEN vlrtotal END AS vlrtotal5
        ,CASE WHEN sequence = 6 THEN vlrtotal END AS vlrtotal6
        ,CASE WHEN sequence = 7 THEN vlrtotal END AS vlrtotal7
        ,CASE WHEN sequence = 8 THEN vlrtotal END AS vlrtotal8
        ,CASE WHEN sequence = 9 THEN vlrtotal END AS vlrtotal9
        ,CASE WHEN sequence = 10 THEN vlrtotal END AS vlrtotal10
        ,CASE WHEN sequence = 11 THEN vlrtotal END AS vlrtotal11
        ,CASE WHEN sequence = 12 THEN vlrtotal END AS vlrtotal12
        ,CASE WHEN sequence = 13 THEN vlrtotal END AS vlrtotal13
        ,CASE WHEN sequence = 14 THEN vlrtotal END AS vlrtotal14
        ,CASE WHEN sequence = 15 THEN vlrtotal END AS vlrtotal15
        ,CASE WHEN sequence = 16 THEN vlrtotal END AS vlrtotal16			

from
(
select                                                     
       first 16
        NEXT VALUE FOR TMP_SEQUENCE as sequence
       ,p.nome
       ,i.qtdestoque
       ,i.qtdvenda
       ,i.vlrvenda
       ,i.vlrtotal
from tbcadprodutos p                                       
left join  tbvendamanual_itens i on p.id = i.id_produto
AND i.ID_VENDAMANUAL = 3
WHERE 1 = 1
) a

INTO
	:NOME1
	:NOME2
	:NOME3
	:NOME4
	:NOME5
	:NOME6
	:NOME7
	:NOME8
	:NOME9
	:NOME10
	:NOME11
	:NOME12
	:NOME13
	:NOME14
	:NOME15
	:NOME16
	:qtdestoque1
	:qtdestoque2
	:qtdestoque3
	:qtdestoque4
	:qtdestoque5
	:qtdestoque6
	:qtdestoque7
	:qtdestoque8
	:qtdestoque9
    :qtdestoque10
    :qtdestoque11
    :qtdestoque12
    :qtdestoque13
    :qtdestoque14
    :qtdestoque15
    :qtdestoque16		
    :qtdvenda1
    :qtdvenda2
    :qtdvenda3
    :qtdvenda4
    :qtdvenda5
    :qtdvenda6
    :qtdvenda7
    :qtdvenda8
    :qtdvenda9
    :qtdvenda10
    :qtdvenda11
    :qtdvenda12
    :qtdvenda13
    :qtdvenda14
    :qtdvenda15
    :qtdvenda16				
    :vlrvenda1
    :vlrvenda2
    :vlrvenda3
    :vlrvenda4
    :vlrvenda5
    :vlrvenda6
    :vlrvenda7
    :vlrvenda8
    :vlrvenda9
    :vlrvenda10
    :vlrvenda11
    :vlrvenda12
    :vlrvenda13
    :vlrvenda14
    :vlrvenda15
    :vlrvenda16	
	:vlrtotal1
    :vlrtotal2
    :vlrtotal3
    :vlrtotal4
    :vlrtotal5
    :vlrtotal6
    :vlrtotal7
    :vlrtotal8
    :vlrtotal9
    :vlrtotal10
    :vlrtotal11
    :vlrtotal12
    :vlrtotal13
    :vlrtotal14
    :vlrtotal15
    :vlrtotal16	
	

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