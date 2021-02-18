--USE [dbSetiFramework]
--GO

--INSERT INTO [dbo].[TBTESTE]
--        ([ID]
--        ,[DESC]
--        ,[STATUS])
--    VALUES
--        (6
--        ,'ENZO'
--        ,'A')
--GO


SELECT * FROM TBTESTE WITH(NOLOCK);

--UPDATE TBTESTE SET ID = 4 WHERE DESCR = 'JOSE'