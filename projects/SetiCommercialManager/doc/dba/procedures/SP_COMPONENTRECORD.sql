 USE [dbSetiFramework]
GO
/****** Object:  StoredProcedure [dbo].[SP_RecordFormInfo]    Script Date: 31/03/2018 21:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		DILENO S SANTOS
-- CREATE DATE: 31/03/2018
-- DESCRIPTION:	ROTINA PARA INSERIR OU ATUALIZAR INFORMA��ES DO FORM SELECIONADO NO SETIFRAMEWORK.
-- =============================================
ALTER PROCEDURE [dbo].[SP_COMPONENTRECORD]  @TPOPER INT, @COMPNAME VARCHAR(100), @COMPCAPTION VARCHAR(100), 
@COMPTAG INT, @COMPTYPE VARCHAR(30), @COMPSTATUS CHAR(1), @COMPFORMID INT
AS
BEGIN
	SET NOCOUNT ON;

	/*
		@TPOPER = 0 : IF NOT EXISTS : INSERT
		@TPOPER = 1 : INSERT
		@TPOPER = 2 : UPDATE
		@TPOPER = 3 : DELETE
		@TPOPER = 4 : TRUNCATE TABLE
	*/

	IF (@COMPNAME <> '') 
	BEGIN	
		IF (@TPOPER = 1) 
		BEGIN
			BEGIN TRAN
			INSERT INTO DBSETIFRAMEWORK..TBSETICOMPONENT
				(COMPONENTNAME,COMPONENTCAPTION,COMPONENTFORMID,COMPONENTTAG,COMPONENTTYPE,COMPONENTSTATUS)
			VALUES
				(@COMPNAME,@COMPCAPTION,@COMPFORMID,@COMPTAG,@COMPTYPE,@COMPSTATUS);
			if @@ERROR > 0
			BEGIN
				ROLLBACK TRAN;
				RETURN;
			END 
			ELSE
				COMMIT;
		END 
		ELSE
		IF (@TPOPER = 0) OR (@TPOPER = 2) OR (@TPOPER = 3)
		BEGIN
			SELECT	 
					MAX(ID) AS ID
					,COMPONENTNAME
					,COMPONENTCAPTION
					,COMPONENTFORMID	
					,COMPONENTTAG
					,COMPONENTTYPE
					,COMPONENTSTATUS						
					,MAX(COMPONENTCREATEDATE) AS COMPONENTCREATEDATE
			INTO #TBCOMPONENT
			FROM DBSETIFRAMEWORK..TBSETICOMPONENT WITH(NOLOCK)
			WHERE COMPONENTNAME = COMPONENTNAME
			GROUP BY  COMPONENTNAME
					 ,COMPONENTCAPTION
					 ,COMPONENTFORMID
					 ,COMPONENTTAG
					 ,COMPONENTTYPE
					 ,COMPONENTSTATUS
			IF (SELECT COUNT(*) FROM #TBCOMPONENT WITH(NOLOCK)) > 0
			BEGIN
				DECLARE @PID INT;
				DECLARE @PCOMPNAME VARCHAR(100);
				DECLARE @PCOMPCAPTION VARCHAR(100);
				DECLARE @PFORMID INT;
				DECLARE @PCOMPTAG INT;
				DECLARE @PCOMPTYPE VARCHAR(30);
				DECLARE @PCOMPSTATUS CHAR(1);				
				DECLARE @PCREATEDATE DATETIME;

				SELECT
						@PID = ID,
						@PCOMPNAME = COMPONENTNAME,
						@PCOMPCAPTION = COMPONENTCAPTION,
						@PFORMID = COMPONENTFORMID,
						@PCOMPTAG = COMPONENTTAG,
						@PCOMPTYPE = COMPONENTTYPE,
						@PCOMPSTATUS = COMPONENTSTATUS,
						@PCREATEDATE = COMPONENTCREATEDATE
				FROM #TBCOMPONENT

				IF (@TPOPER = 2) OR (@TPOPER = 0)
				BEGIN
					IF (@COMPCAPTION <> @PCOMPCAPTION) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETICOMPONENT SET COMPONENTCAPTION = @COMPCAPTION 
						WHERE (ID = @PID) AND (COMPONENTNAME = @PCOMPNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;
					IF (@COMPFORMID <> @PFORMID) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETICOMPONENT SET COMPONENTFORMID = @COMPFORMID 
						WHERE (ID = @PID) AND (COMPONENTNAME = @PCOMPNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;
					IF (@COMPTAG <> @PCOMPTAG) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETICOMPONENT SET COMPONENTTAG = @COMPTAG 
						WHERE (ID = @PID) AND (COMPONENTNAME = @PCOMPNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;
					IF (@COMPTYPE <> @PCOMPTYPE) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETICOMPONENT SET COMPONENTTYPE = @COMPTYPE 
						WHERE (ID = @PID) AND (COMPONENTNAME = @PCOMPNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;
					IF (@COMPSTATUS <> @PCOMPSTATUS) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETICOMPONENT SET COMPONENTSTATUS = @COMPSTATUS 
						WHERE (ID = @PID) AND (COMPONENTNAME = @PCOMPNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;			
				END 
				ELSE
				IF (@TPOPER = 3)
				BEGIN
					BEGIN TRAN
					DELETE FROM DBSETIFRAMEWORK..TBSETICOMPONENT
					WHERE ID = @PID AND COMPONENTNAME = @PCOMPNAME
					if @@ERROR > 0
					BEGIN
						ROLLBACK TRAN;
						RETURN;
					END 
					ELSE
						COMMIT;		
				END;						
			END 
			ELSE
			BEGIN
				IF (@TPOPER = 0) 
				BEGIN
					BEGIN TRAN
						INSERT INTO DBSETIFRAMEWORK..TBSETICOMPONENT 
							(COMPONENTNAME,COMPONENTCAPTION,COMPONENTFORMID,COMPONENTTAG,COMPONENTTYPE,COMPONENTSTATUS)
						VALUES
							(@COMPNAME,@COMPCAPTION,@COMPFORMID,@COMPTAG,@COMPTYPE,@COMPSTATUS);
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END 
						ELSE
							COMMIT;
					END;
				END;
			END 
			ELSE
			IF (@TPOPER = 4) 
			BEGIN
				TRUNCATE TABLE DBSETIFRAMEWORK..TBSETIFORM
			END;
	END;
END;