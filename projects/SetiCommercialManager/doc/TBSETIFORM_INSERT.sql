USE [dbSetiFramework]
GO

INSERT INTO [dbo].[TBSETIFORM]
           ([FORMNAME]
           ,[FORMCAPTION]
           ,[FORMTAG]
           ,[STATUS])
     VALUES
           ('FRMTESTEHERANCA',
            'Tela de Teste',
            0,
           'S'
		   )
GO


SELECT * FROM TBSETIFORM