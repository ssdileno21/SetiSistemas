/* SCRIPT PARA INSERIR PARAMETROS DE PESQUISA*/

/*  MODELO DE INSERÇÃO DOS PARAMETROS

INSERT INTO TBSEARCHPARAMS
(   ID, PARAMETER_0, PARAMETER_1, PARAMETER_2,
    PARAMETER_3, PARAMETER_4, PARAMETER_5, PARAMETER_6,
    PARAMETER_7, PARAMETER_8, PARAMETER_9, PARAMETER_10,
    PARAMETER_11, PARAMETER_12, PARAMETER_13, PARAMETER_14,
    PARAMETER_15 ) VALUES
(GEN_ID(gen_id_searchparams,1),0,0,0,0,'','','','','','','','','','','','',0);

*/

--ID--------------------- Cod.Parametro
--PARAMETER_0------------ Tag.do Form (Irrelevante)
--PARAMETER_1------------ Tipo do retorno - 0-Field;1-Dts;2-Dsp
--PARAMETER_2------------ Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
--PARAMETER_3------------ Titulo para o campo de pesquisa
--PARAMETER_4------------ Titulo para a tela de pesquisa
--PARAMETER_5------------ Nome da tabela - PARAMETER_2 = 0
--PARAMETER_6------------ Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
--PARAMETER_7------------ Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
--PARAMETER_8------------ Nome do campo a ser pesquisado
--PARAMETER_9------------ Nome do campo chave da tabela
--PARAMETER_10----------- Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
--PARAMETER_11----------- Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
--PARAMETER_12----------- Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
--PARAMETER_13----------- Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
--PARAMETER_14----------- Nome do campo de retorno
--PARAMETER_15----------- Cod.parametro para a tabela TBPROVIDERPARAMS
--PARAMETER_16----------- Qtd.Parametros na SP
--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
/*
 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,0 --PARAMETER_0 - Tag.do Form (Irrelevante)
,0 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-Dsp
,0 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,''--PARAMETER_3 - Titulo para o campo de pesquisa
,''--PARAMETER_4 - Titulo para a tela de pesquisa
,''--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,''--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,''--PARAMETER_8 - Nome do campo a ser pesquisado
,''--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,''--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,''--PARAMETER_14 - Nome do campo de retorno
,0-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,0--PARAMETER_16----------- Qtd.Parametros na SP
,0--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
);
*/
 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,1 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,2 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Codigo'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBVENDAMANUAL'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,' SELECT * FROM SP_LISTA_VENDAS_MANUAIS '--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'VENDA_CODIGO'--PARAMETER_8 - Nome do campo a ser pesquisado
,'VENDA_CODIGO'--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY VENDA_CODIGO'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'VENDA_CODIGO'--PARAMETER_14 - Nome do campo de retorno
,1-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,10--PARAMETER_16----------- Qtd.Parametros na SP
,0--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'ID'--NOME REAL DO FIELD
);

 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,1 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,2 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Cod.Cliente'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBVENDAMANUAL'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,' SELECT * FROM SP_LISTA_VENDAS_MANUAIS '--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'CLIENTE_CODIGO'--PARAMETER_8 - Nome do campo a ser pesquisado
,'VENDA_CODIGO'--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY CLIENTE_CODIGO'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'CLIENTE_CODIGO'--PARAMETER_14 - Nome do campo de retorno
,1-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,10--PARAMETER_16----------- Qtd.Parametros na SP
,1--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'ID_CLIENTE'--NOME REAL DO FIELD
);

 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,1 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,2 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Nome do cliente'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBVENDAMANUAL'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,' SELECT * FROM SP_LISTA_VENDAS_MANUAIS '--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'CLIENTE_NOME'--PARAMETER_8 - Nome do campo a ser pesquisado
,'VENDA_CODIGO'--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY CLIENTE_NOME'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'CLIENTE_NOME'--PARAMETER_14 - Nome do campo de retorno
,1-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,10--PARAMETER_16----------- Qtd.Parametros na SP
,2--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'NOME'--NOME REAL DO FIELD
);

 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,1 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,2 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Cod.Vendedor'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBVENDAMANUAL'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,' SELECT * FROM SP_LISTA_VENDAS_MANUAIS '--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'FUNCIONARIO_CODIGO'--PARAMETER_8 - Nome do campo a ser pesquisado
,'VENDA_CODIGO'--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY FUNCIONARIO_CODIGO'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'FUNCIONARIO_CODIGO'--PARAMETER_14 - Nome do campo de retorno
,1-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,10--PARAMETER_16----------- Qtd.Parametros na SP
,3--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'ID_FUNCIONARIO'--NOME REAL DO FIELD
);
 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,1 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,2 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Nome do Vendedor'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBVENDAMANUAL'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,' SELECT * FROM SP_LISTA_VENDAS_MANUAIS '--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'FUNCIONARIO_NOME'--PARAMETER_8 - Nome do campo a ser pesquisado
,'VENDA_CODIGO'--PARAMETER_9 - Nome do campo chave da tabela
,''--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,''--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY FUNCIONARIO_NOME'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,''--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'FUNCIONARIO_NOME'--PARAMETER_14 - Nome do campo de retorno
,1-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,10--PARAMETER_16----------- Qtd.Parametros na SP
,4--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'NOME'--NOME REAL DO FIELD'
);

 INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,2 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,1 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Cod.Cliente'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais - Retorna cliente'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBCADCLIENTES'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,'SELECT * FROM TBCADCLIENTES WHERE 1 = 1 AND STATUS = ''S'''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,NULL--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'ID'--PARAMETER_8 - Nome do campo a ser pesquisado
,'ID'--PARAMETER_9 - Nome do campo chave da tabela
,NULL--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,NULL--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY ID'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,NULL--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'ID'--PARAMETER_14 - Nome do campo de retorno
,2-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,NULL--PARAMETER_16----------- Qtd.Parametros na SP
,NULL--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'ID'--NOME REAL DO FIELD'
);

INSERT INTO TBSEARCHPARAMS
(
ID,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15,PARAMETER_16,
PARAMETER_17,PARAMETER_18
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID - Cod.Parametro
,1 --PARAMETER_0 - Tag.do Form (Irrelevante)
,2 --PARAMETER_1 - Tipo do retorno - 0-Field;1-Dts;2-FieldValue
,1 --PARAMETER_2 - Tipo de consulta - 0-Tab;1-SqlCom;2-SqlComSP
,'Cod.Vendedor'--PARAMETER_3 - Titulo para o campo de pesquisa
,'Controle de vendas manuais - Retorna vendedor'--PARAMETER_4 - Titulo para a tela de pesquisa
,'TBCADFUNCIONARIOS'--PARAMETER_5 - Nome da tabela - PARAMETER_2 = 0
,'SELECT * FROM TBCADFUNCIONARIOS WHERE 1 = 1 AND STATUS = ''S'''--PARAMETER_6 - Comando sql, tentar reduzir ao max, usar '' where 1 = 1  '' - PARAMETER_2 = 1
,NULL--PARAMETER_7 - Comando sql SP, tentar reduzir ao max - PARAMETER_2 = 2
,'ID'--PARAMETER_8 - Nome do campo a ser pesquisado
,'ID'--PARAMETER_9 - Nome do campo chave da tabela
,NULL--PARAMETER_10 - Comando para a clausula where, tentar reduzir ao max, e utilizar o '' and ...
,NULL--PARAMETER_11 - Complemento para o ''and'', tentar reduzir ao max e utilizar '' and ...
,'ORDER BY ID'--PARAMETER_12 - Comando order by, tentar reduzir ao mx, utilizar '' ORDER BY ...
,NULL--PARAMETER_13 - Comando group  by, tentar reduzir ao mx, utilizar ''GROUP BY ...
,'ID'--PARAMETER_14 - Nome do campo de retorno
,2-- PARAMETER_15 - Cod.parametro para a tabela TBPROVIDERPARAMS
,NULL--PARAMETER_16----------- Qtd.Parametros na SP
,NULL--PARAMETER_17----------- Seq.do parametro da SP. Iniciar contagem do num. 0(zero)
,'ID'--NOME REAL DO FIELD'
);
