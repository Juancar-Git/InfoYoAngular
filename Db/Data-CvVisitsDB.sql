

------------------------------------------------------
-- 			CompanyJobOffers TABLE
------------------------------------------------------
CREATE TABLE [org].[CvVisits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitType] [VARCHAR](15) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[SearchText] [VARCHAR](MAX) NOT NULL,
	[Birthdate] [DATETIME] DEFAULT GETDATE(),
	[PersonsId] [BIGINT] NOT NULL,
	[CompanysId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_CvVisits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[CvVisits]  WITH CHECK ADD  CONSTRAINT [FK_CvVisits_Persons] FOREIGN KEY([PersonsId])
REFERENCES [org].[Persons] ([Id])
GO

ALTER TABLE [org].[CvVisits] CHECK CONSTRAINT [FK_CvVisits_Persons]
GO

ALTER TABLE [org].[CvVisits]  WITH CHECK ADD  CONSTRAINT [FK_CvVisits_Companys] FOREIGN KEY([CompanysId])
REFERENCES [org].[Companys] ([Id])
GO

ALTER TABLE [org].[CvVisits] CHECK CONSTRAINT [FK_CvVisits_Companys]
GO