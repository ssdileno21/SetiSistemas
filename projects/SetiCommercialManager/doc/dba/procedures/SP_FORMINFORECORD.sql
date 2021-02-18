USE DBSETIFRAMEWORK;

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- AUTHOR:		DILENO S SANTOS
-- CREATE DATE: 30/03/2018
-- DESCRIPTION:	ROTINA PARA INSERIR OU ATUALIZAR INFORMAÇÕES DO FORM SELECIONADO NO SETIFRAMEWORK.
-- =============================================
ALTER PROCEDURE [DBO].[SP_FORMINFORECORD]  @TPOPER INT, @FORMNAME VARCHAR(100), @FORMCAPTION VARCHAR(100), @FORMTAG INT, @STATUS CHAR(1)
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

	IF (@FORMNAME <> '') 
	BEGIN	
		IF (@TPOPER = 1) 
		BEGIN
			BEGIN TRAN
			INSERT INTO DBSETIFRAMEWORK..TBSETIFORM 
				(FORMNAME,FORMCAPTION,FORMTAG,STATUS)
			VALUES
				(@FORMNAME,@FORMCAPTION,@FORMTAG,@STATUS);
			if @@ERROR > 0
			BEGIN
				ROLLBACK TRAN;
				RETURN;
			END ELSE
			COMMIT;
		END ELSE
		IF (@TPOPER = 0) OR (@TPOPER = 2) OR (@TPOPER = 3)
		BEGIN
			SELECT	 
					MAX(ID) AS ID
					,FORMNAME	
					,FORMCAPTION	
					,FORMTAG	
					,STATUS				
					,MAX(CREATEDATE) AS CREATEDATE
			INTO #TBSETIFORM
			FROM DBSETIFRAMEWORK..TBSETIFORM WITH(NOLOCK)
			WHERE FORMNAME = @FORMNAME
			GROUP BY FORMNAME	
					,FORMCAPTION	
					,FORMTAG	
					,STATUS			;
		
			IF (SELECT COUNT(*) FROM #TBSETIFORM WITH(NOLOCK)) > 0
			BEGIN
				DECLARE @PID INT;
				DECLARE @PFORMNAME VARCHAR(100);
				DECLARE @PFORMCAPTION VARCHAR(100);
				DECLARE @PFORMTAG INT;
				DECLARE @PSTATUS CHAR(1);
				DECLARE @PCREATEDATE DATETIME;

				SELECT
						@PID = ID,
						@PFORMNAME = FORMNAME,
						@PFORMCAPTION = FORMCAPTION,
						@PFORMTAG = FORMTAG,
						@PSTATUS = STATUS,
						@PCREATEDATE = CREATEDATE
				FROM #TBSETIFORM

				IF (@TPOPER = 2) OR (@TPOPER = 0)
				BEGIN
					IF (@FORMCAPTION <> @PFORMCAPTION) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETIFORM SET FORMCAPTION = @FORMCAPTION 
						WHERE (ID = @PID) AND (FORMNAME = @FORMNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END ELSE
						COMMIT;
					END;
					IF (@FORMTAG <> @PFORMTAG) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETIFORM SET FORMTAG = @FORMTAG 
						WHERE (ID = @PID) AND (FORMNAME = @FORMNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END ELSE
						COMMIT;
					END;
					IF (@STATUS <> @PSTATUS) 
					BEGIN
						BEGIN TRAN
						UPDATE DBSETIFRAMEWORK..TBSETIFORM SET STATUS = @STATUS 
						WHERE (ID = @PID) AND (FORMNAME = @FORMNAME) 
						if @@ERROR > 0
						BEGIN
							ROLLBACK TRAN;
							RETURN;
						END ELSE
						COMMIT;
					END;			
				END ELSE
				IF (@TPOPER = 3)
				BEGIN
					BEGIN TRAN
					DELETE FROM DBSETIFRAMEWORK..TBSETIFORM
					WHERE ID = @PID AND FORMNAME = @PFORMNAME
					if @@ERROR > 0
					BEGIN
						ROLLBACK TRAN;
						RETURN;
					END ELSE
					COMMIT;		
				END;						
			END ELSE
			BEGIN
				IF (@TPOPER = 0) 
				BEGIN
			BEGIN TRAN
				INSERT INTO DBSETIFRAMEWORK..TBSETIFORM 
					(FORMNAME,FORMCAPTION,FORMTAG,STATUS)
				VALUES
					(@FORMNAME,@FORMCAPTION,@FORMTAG,@STATUS);
				if @@ERROR > 0
				BEGIN
					ROLLBACK TRAN;
					RETURN;
				END ELSE
					COMMIT;
				END;
			END;
		END ELSE
		IF (@TPOPER = 4) 
		BEGIN
			TRUNCATE TABLE DBSETIFRAMEWORK..TBSETIFORM
		END;
	END;
END;
