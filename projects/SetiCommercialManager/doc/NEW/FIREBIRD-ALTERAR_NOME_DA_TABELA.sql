/*ALTERAR NOME DA TABELA NO FIREBIRD*/
UPDATE RDB$RELATIONS
SET RDB$RELATION_NAME='TBFORMSFRAMEWORK' where
RDB$RELATION_NAME='TBFORMS';

UPDATE RDB$RELATION_FIELDS
SET RDB$RELATION_NAME='TBFORMSFRAMEWORK' where
RDB$RELATION_NAME='TBFORMS' and
RDB$SYSTEM_FLAG=0;

