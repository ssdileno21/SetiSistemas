/* SCRIPT PARA INSERIR PARAMETROS DE PESQUISA*/

/*  MODELO DE INSERÇÃO DOS PARAMETROS

INSERT INTO TBSEARCHPARAMS
(   ID,CODPARAM, PARAMETER_0, PARAMETER_1, PARAMETER_2,
    PARAMETER_3, PARAMETER_4, PARAMETER_5, PARAMETER_6,
    PARAMETER_7, PARAMETER_8, PARAMETER_9, PARAMETER_10,
    PARAMETER_11, PARAMETER_12, PARAMETER_13, PARAMETER_14,
    PARAMETER_15 ) VALUES
(GEN_ID(gen_id_searchparams,1),0,0,0,0,'','','','','','','','','','','','',0);

*/

--ID
--CODPARAM--------------- Cod.Parametro
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
/*
 INSERT INTO TBSEARCHPARAMS
(
ID,CODPARAM,PARAMETER_0,PARAMETER_1,PARAMETER_2,PARAMETER_3,PARAMETER_4,
PARAMETER_5,PARAMETER_6,PARAMETER_7,PARAMETER_8,PARAMETER_9,PARAMETER_10,
PARAMETER_11,PARAMETER_12,PARAMETER_13,PARAMETER_14,PARAMETER_15
) VALUES (
GEN_ID(gen_id_searchparams,1) --ID
,0 --CODPARAM - Cod.Parametro
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
);
*/

