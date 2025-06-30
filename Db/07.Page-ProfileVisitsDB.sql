------------------------------------------------------
-- 			Profile Visits Page TABLEs
------------------------------------------------------
-- 

------------------------------------------------------
-- 			Profile Visits Page TABLE
------------------------------------------------------

CREATE TABLE [web].[WProfileVisitsPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [VARCHAR](100) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[Subtititle] [VARCHAR](100) NOT NULL,
	[Description] [VARCHAR](200) NOT NULL,
	[HourItemText] [VARCHAR](200) NOT NULL,
	[SeeCompanyItemBtn] [VARCHAR](50) NOT NULL,
	[SeeCompanyBaseItemUrl] [VARCHAR](MAX) NOT NULL,
	[EmptyDefaultTitle] [VARCHAR](100) NOT NULL,
	[EmptyDefaultDesc] [VARCHAR](150) NOT NULL,
	[EmptyDefaultImg] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_WProfileVisitsPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO