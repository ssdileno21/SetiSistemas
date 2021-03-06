USE [DBSETIFRAMEWORK]
GO

SELECT * FROM DBSETIFRAMEWORK..TBSETIFORM WITH(NOLOCK);

/*
	@TPOPER = 0 : IF NOT EXISTS : INSERT
	@TPOPER = 1 : INSERT
	@TPOPER = 2 : UPDATE
	@TPOPER = 3 : DELETE
	@TPOPER = 4 : TRUNCATE TABLE
*/

DECLARE @TPOPER int = 4
DECLARE @FORMNAME varchar(100) = ''
DECLARE @FORMCAPTION varchar(100) = ''
DECLARE @FORMTAG int = -1
DECLARE @STATUS char(1) = ''

-- TODO: Set parameter values here.

EXEC [dbo].[SP_FORMINFORECORD] 
   @TPOPER
  ,@FORMNAME
  ,@FORMCAPTION
  ,@FORMTAG
  ,@STATUS
GO


SELECT * FROM DBSETIFRAMEWORK..TBSETIFORM WITH(NOLOCK);


/*
INSERT INTO DBSETIFRAMEWORK..TBSETIFORM (FORMNAME,FORMCAPTION,FORMTAG,STATUS) VALUES ('FRMMAIN',	'MAIN',	0,	'S');
INSERT INTO DBSETIFRAMEWORK..TBSETIFORM (FORMNAME,FORMCAPTION,FORMTAG,STATUS) VALUES ('FRMSTANDARDREG',	'CADASTRO PADR�O',	0,	'S');
INSERT INTO DBSETIFRAMEWORK..TBSETIFORM (FORMNAME,FORMCAPTION,FORMTAG,STATUS) VALUES ('FRMDEFAULTSEARCH',	'PESQUISA',	0,	'S');
INSERT INTO DBSETIFRAMEWORK..TBSETIFORM (FORMNAME,FORMCAPTION,FORMTAG,STATUS) VALUES ('FRMPATTERN',	'FRMPATTERN',	0,	'S');
INSERT INTO DBSETIFRAMEWORK..TBSETIFORM (FORMNAME,FORMCAPTION,FORMTAG,STATUS) VALUES ('FRMTESTEHERANCA',	'TELA DE TESTE',	0,	'S');


EXEC [dbo].[SP_RecordFormInfo]  0, 'FRMMAIN','MAIN',0,'S';
EXEC [dbo].[SP_RecordFormInfo]  0, 'FRMSTANDARDREG','CADASTRO PADR�O',0,'S';
EXEC [dbo].[SP_RecordFormInfo]  0, 'FRMDEFAULTSEARCH','PESQUISA',0,'S';
EXEC [dbo].[SP_RecordFormInfo]  0, 'FRMPATTERN','FRMPATTERN',0,'S';
EXEC [dbo].[SP_RecordFormInfo]  0, 'FRMTESTEHERANCA','TELA DE TESTE',0,'S';


SELECT * FROM DBSETIFRAMEWORK..TBSETIFORM WITH(NOLOCK)
*/