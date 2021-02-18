unit uSetiConstantesDB;

interface

Const
      {* FRMFORMS}
      {SQLSERVER}
      {ADOForms =            '   SELECT [ID]                               '#13+
                            '      ,[FORMNAME]                            '#13+
                            '      ,[FORMCAPTION]                         '#13+
                            '      ,[FORMTAG]                             '#13+
                            '      ,[FORMSTATUS]                          '#13+
                            '   FROM [dbo].[TBFORMS] WITH(NOLOCK)         '#13+
                            '   WHERE 1 = 1 ';}

      ADOForms =            'USE [sfdb]                             '#13+
                            'GO                                     '#13+
                            'DECLARE @ID int;                       '#13+
                            'DECLARE @FORMNAME varchar(100);        '#13+
                            'DECLARE @FORMCAPTION varchar(100);     '#13+
                            'DECLARE @FORMTAG int;                  '#13+
                            'DECLARE @FORMSTATUS char(1);           '#13+
                            'SET @ID = :ID;                         '#13+
                            'SET @FORMNAME = :FORMNAME;             '#13+
                            'SET @FORMCAPTION = :FORMCAPTION;       '#13+
                            'SET @FORMTAG = :FORMTAG;               '#13+
                            'SET @FORMSTATUS = :FORMSTATUS;         '#13+
                            'EXEC [dbo].[SP_LISTA_FORMS]            '#13+
                            '  @ID                                  '#13+
                            ' ,@FORMNAME                            '#13+
                            ' ,@FORMCAPTION                         '#13+
                            ' ,@FORMTAG                             '#13+
                            ' ,@FORMSTATUS                          '#13+
                            'GO                                     ';

      {FIREBIRD}
    {  SQLForms =            ' SELECT ID                                 '#13+
                            '      ,FORMNAME                            '#13+
                            '      ,FORMCAPTION                         '#13+
                            '      ,FORMTAG                             '#13+
                            '      ,FORMSTATUS                          '#13+
                            '  FROM TBFORMS                             '#13+

                            '  WHERE 1 = 1                              ';}
      SQLForms = 'SELECT * FROM SP_LISTA_FORMS ';
      //parei aqui



implementation

end.
