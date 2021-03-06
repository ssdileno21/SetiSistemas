/*
    SCRIPT DE INSER��O DE DADOS NA TABELA TBPROVIDERPARAMS
    NESTA TABELA, SER� ARMAZENADA AS INFORMA��ES SOBRE OS
    FIELDS DAS QUERYS DO BANCO PARA EXIBI��O NOS DBGRIDS

    VOC� PODERA CRIAR UM PARAMETRO COM INFORMA��ES DE TABELA
    OU COM INFORMA��ES DE UMA CONSULTA RETORNADA DE UMA PROC,
    ONDE TERA FIELDS DE DIVERSAS TABELAS

*/


-- PARAMETRO : 1 - CONSULTA PROCEDURE SP_LISTA_VENDAS_MANUAIS

--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID','VENDA_CODIGO','Cod.Venda',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_CLIENTE','CLIENTE_CODIGO','Cod.Cliente',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','NOME','CLIENTE_NOME','Nome Cliente',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','FUNCIONARIO_CODIGO','Cod.Funcionario',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADFUNCIONARIOS','NOME','FUNCIONARIO_NOME','Nome Funcionario',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOURO','ENDERECO','Endereco',45,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOURONUM','NUMERO','Num.',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOUROCOMP','COMPLEMENTO','Complemento',25,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOUROBAIRRO','BAIRRO','Bairro',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOUROCIDADE','CIDADE','Cidade',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOUROUF','UF','UF',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADCLIENTES','LOGRADOUROCEP','CEP','CEP',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_REGIOES','REGIOES_CODIGO','Cod.Regiao',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADREGIOES','DESCRICAO','REGIOES_NOME','Regiao',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_SETORES','ROTA_CODIGO','Cod.Rota',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADROTAS','DESCRICAO','ROTA_NOME','Rota',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_SETORES','SETOR_CODIGO','Cod.Setor',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADSETORES','DESCRICAO','SETOR_NOME','Setor',35,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','DATCADASTRO','USU_CADASTRO','Usu.Cadastro',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','DT_CADASTRO','Dta.Cadastro',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','USU_ALTERACAO','Usu.Alteracao',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','DT_ULTIMA_ALT','Dta.Alteracao',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','USU_CANCELAMENTO','Usu.Cancelamento',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','DT_USUARIO_CANC','Dta.Cancelamento',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBCADFORMAPAGTO','ID_FUNCIONARIO','FORMA_PAGAMENTO','Forma Pagto.',30,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','DT_PAGAMENTO','Dta.Pagamento',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','VALOR_TOTAL_VENDA','Vlr.Total Venda',15,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');
--SP_LISTA_VENDAS_MANUAIS
INSERT INTO tbproviderparams (
ID,CODPARAM,TABLENAME,FIELDNAME,FIELDNAMEALIAS,FIELDCAPTION,SIZEFORGRID,VISIBLEINGRID,SPNAME,VIEWNAME,
QUERYNAME,OBS) values (
GEN_ID(gen_id_providerparams,1),1,'TBVENDAMANUAL','ID_FUNCIONARIO','STATUS','Status',8,'S','SP_LISTA_VENDAS_MANUAIS',
'','LocCds','');

