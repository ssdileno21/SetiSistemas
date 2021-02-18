USE [dbSetiFramework]
GO

/****** Object:  Table [dbo].[TBSETICOMPONENT]    Script Date: 25/03/2018 23:35:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TBSETICOMPONENT](
	[ID] [int] NOT NULL IDENTITY(1,1),
	[COMPONENTNAME] [varchar](100) NOT NULL,
	[COMPONENTCAPTION] [varchar](100) NULL,
	[COMPONENTTAG] [int] NULL,
	[COMPONENTTYPE] [varchar](30) NULL,
	[COMPONENTFORM] [int] NULL,
	[STATUS] [char](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TBSETICOMPONENT] ADD  CONSTRAINT [DF_TBSETICOMPONENT_COMPONENTTAG]  DEFAULT ((0)) FOR [COMPONENTTAG]
GO


