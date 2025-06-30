

------------------------------------------------------
-- 			CompanyJobOffers TABLE
------------------------------------------------------
CREATE TABLE [org].[OCvVisit](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitType] [VARCHAR](15) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[SearchText] [VARCHAR](MAX) NOT NULL,
	[Birthdate] [DATETIME] DEFAULT GETDATE(),
	[OPersonId] [BIGINT] NOT NULL,
	[OCompanyId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OCvVisit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OCvVisit]  WITH CHECK ADD  CONSTRAINT [FK_OCvVisit_OPerson] FOREIGN KEY([OPersonId])
REFERENCES [org].[OPerson] ([Id])
GO

ALTER TABLE [org].[OCvVisit] CHECK CONSTRAINT [FK_OCvVisit_OPerson]
GO

ALTER TABLE [org].[OCvVisit]  WITH CHECK ADD  CONSTRAINT [FK_OCvVisit_OCompany] FOREIGN KEY([OCompanyId])
REFERENCES [org].[OCompany] ([Id])
GO

ALTER TABLE [org].[OCvVisit] CHECK CONSTRAINT [FK_OCvVisit_OCompany]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_OCvVisit_OCompanyId
ON org.OCvVisit(OCompanyId);

CREATE NONCLUSTERED INDEX IX_OCvVisit_OPersonId
ON org.OCvVisit(OPersonId);

CREATE NONCLUSTERED INDEX IX_OCvVisit_VisitType
ON org.OCvVisit(VisitType);

CREATE NONCLUSTERED INDEX IX_OCvVisit_Birthdate
ON org.OCvVisit(Birthdate);