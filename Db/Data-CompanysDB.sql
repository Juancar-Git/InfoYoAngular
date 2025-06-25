------------------------------------------------------
-- 			Companies Data TABLEs
------------------------------------------------------

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Datos necesario para crear una empresa
-- Voy a recopilar datos necesarios para estó, en principio desarrollaré la web enfocada al usuario cliente.
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


------------------------------------------------------
-- 			Companies TABLE
------------------------------------------------------
CREATE TABLE [org].[Companys](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [VARCHAR](150) NOT NULL,
	[RegisteredName] [VARCHAR](150) NOT NULL,
	[NIF] [VARCHAR](30) NOT NULL,
	[TaxAddress] [VARCHAR](100) NOT NULL,
	[TaxCountry] [VARCHAR](100) NOT NULL,
	[TaxProvince] [VARCHAR](100) NOT NULL,
	[TaxTown] [VARCHAR](100) NOT NULL,
	[TaxPostCode] [VARCHAR](15) NOT NULL,
	[RegOffiAddress] [VARCHAR](200) NOT NULL,
	[RegOffiCountry] [VARCHAR](100) NOT NULL,
	[RegOffiProvince] [VARCHAR](100) NOT NULL,
	[RegOffiTown] [VARCHAR](100) NOT NULL,
	[RegOffiPostCode] [VARCHAR](15) NOT NULL,
	[LaborSector] [VARCHAR](100) NOT NULL,
	[WorkersNum] [INT] NOT NULL,
	[InternalName] [VARCHAR](100) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[MainEmail] [VARCHAR](200) NOT NULL,
	[SecondaryEmail] [VARCHAR](200) NOT NULL,
	[MovilPhone] [VARCHAR](20) NOT NULL,
	[LandlinePhone] [VARCHAR](20),
	[ForeignPhone] [VARCHAR](20),
	[WebSite] [VARCHAR](MAX),
	[LogoImgPath] [VARCHAR](MAX),
	[BgImgPath] [VARCHAR](MAX),
	[MiniImgPath] [VARCHAR](MAX),
	[CompanyBgImgPath] [VARCHAR](MAX),
	[MiniText] [VARCHAR](150),
 CONSTRAINT [PK_Companys] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



------------------------------------------------------
-- 			Company Info TABLE
------------------------------------------------------
CREATE TABLE [org].[CompanyInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [VARCHAR](MAX),
	[YtVideoUrl] [VARCHAR](MAX),
	[FirstImgUrl] [VARCHAR](MAX) NOT NULL,
	[SecondImgUrl] [VARCHAR](MAX) NOT NULL,
	[CompanysId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_CompanyInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[CompanyInfo]  WITH CHECK ADD  CONSTRAINT [FK_CompanyInfo_Companys] FOREIGN KEY([CompanysId])
REFERENCES [org].[Companys] ([Id])
GO

ALTER TABLE [org].[CompanyInfo] CHECK CONSTRAINT [FK_CompanyInfo_Companys]
GO




------------------------------------------------------
-- 			JOB OFFERS
------------------------------------------------------

------------------------------------------------------
-- 			Company Job Offers TABLE
------------------------------------------------------
CREATE TABLE [org].[CompanyJobOffers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[CreationDate] [DATETIME] DEFAULT GETDATE(),
	[PublicationDate] [DATETIME] DEFAULT GETDATE(),
	[Country] [VARCHAR](100) NOT NULL,
	[Province] [VARCHAR](100) NOT NULL,
	[Town] [VARCHAR](100) NOT NULL,
	[LocationType] [VARCHAR](50) NOT NULL CHECK(DocumentType IN('InPerson', 'Hybrid', 'TeleWorking', 'Unspecified')),
	[Salary] [DECIMAL](10,2),
	[MinExperienceYears] [INT] NOT NULL,
	[MinRequirements] [VARCHAR](500) NOT NULL,
	--Continuar
	--Continuar
	[Active] [BIT] NOT NULL DEFAULT 1,
	[CompanysId] [BIGINT] NOT NULL,
	[JobCategoryId] [BIGINT] NOT NULL DEFAULT 1,
	[MinStudyId] [BIGINT] NOT NULL,
	[WorkDayTypeId] [BIGINT] NOT NULL DEFAULT 1,
	[ContractTypeId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_CompanyJobOffers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_Companys] FOREIGN KEY([CompanysId])
REFERENCES [org].[Companys] ([Id])
GO

ALTER TABLE [org].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_Companys]
GO

ALTER TABLE [org].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_JobCategory] FOREIGN KEY([JobCategoryId])
REFERENCES [org].[JobCategory] ([Id])
GO

ALTER TABLE [org].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_JobCategory]
GO

ALTER TABLE [org].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_MinStudy] FOREIGN KEY([MinStudyId])
REFERENCES [org].[MinStudy] ([Id])
GO

ALTER TABLE [org].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_MinStudy]
GO

ALTER TABLE [org].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_WorkDayType] FOREIGN KEY([WorkDayTypeId])
REFERENCES [org].[WorkDayType] ([Id])
GO

ALTER TABLE [org].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_WorkDayType]
GO

ALTER TABLE [org].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_ContractType] FOREIGN KEY([ContractTypeId])
REFERENCES [org].[ContractType] ([Id])
GO

ALTER TABLE [org].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_ContractType]
GO

------------------------------------------------------
-- 			Job Category TABLE
------------------------------------------------------
CREATE TABLE [org].[JobCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_JobCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Job Category TABLE
------------------------------------------------------
CREATE TABLE [org].[MinStudy](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_MinStudy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			WorkDay Type TABLE
------------------------------------------------------
CREATE TABLE [org].[WorkDayType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_WorkDayType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Contract Type TABLE
------------------------------------------------------
CREATE TABLE [org].[ContractType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_ContractType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



------------------------------------------------------
-- 			Company Opinions TABLE
------------------------------------------------------
CREATE TABLE [org].[CompanyOpinions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150),
	[Description] [VARCHAR](300),
	[Stars] [INT] NOT NULL DEFAULT 0,
	[Complaints] [INT] NOT NULL DEFAULT 0,
	[Active] [BIT] NOT NULL DEFAULT 0,
	[CompanysId] [BIGINT] NOT NULL,
	[PersonsId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_CompanyOpinions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[CompanyOpinions]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOpinions_Companys] FOREIGN KEY([CompanysId])
REFERENCES [org].[Companys] ([Id])
GO

ALTER TABLE [org].[CompanyOpinions] CHECK CONSTRAINT [FK_CompanyOpinions_Companys]
GO

ALTER TABLE [org].[CompanyOpinions]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOpinions_Persons] FOREIGN KEY([PersonsId])
REFERENCES [org].[Persons] ([Id])
GO

ALTER TABLE [org].[CompanyOpinions] CHECK CONSTRAINT [FK_CompanyOpinions_Persons]
GO



------------------------------------------------------
-- 			Company Complaint Opinions TABLE
------------------------------------------------------
CREATE TABLE [org].[CnyComplaintOpinions](
	[CompanyOpinionsId] [BIGINT] NOT NULL,
	[PersonsId] [BIGINT] NOT NULL,
	[Description] [VARCHAR](2000),
	[Stars] [INT] NOT NULL DEFAULT 0,
	[Active] [BIT] NOT NULL DEFAULT 0,
	[CnyComplaintReasonId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_CnyComplaintOpinions] PRIMARY KEY CLUSTERED 
(
	[CompanyOpinionsId], [PersonsId]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[CnyComplaintOpinions]  WITH CHECK ADD  CONSTRAINT [FK_CnyComplaintOpinions_CompanyOpinions] FOREIGN KEY([CompanyOpinionsId])
REFERENCES [org].[CompanyOpinions] ([Id])
GO

ALTER TABLE [org].[CnyComplaintOpinions] CHECK CONSTRAINT [FK_CnyComplaintOpinions_CompanyOpinions]
GO

ALTER TABLE [org].[CnyComplaintOpinions]  WITH CHECK ADD  CONSTRAINT [FK_CnyComplaintOpinions_Persons] FOREIGN KEY([PersonsId])
REFERENCES [org].[Persons] ([Id])
GO

ALTER TABLE [org].[CnyComplaintOpinions] CHECK CONSTRAINT [FK_CnyComplaintOpinions_Persons]
GO

ALTER TABLE [org].[CnyComplaintOpinions]  WITH CHECK ADD  CONSTRAINT [FK_CnyComplaintOpinions_CnyComplaintReason] FOREIGN KEY([CnyComplaintReasonId])
REFERENCES [org].[CnyComplaintReason] ([Id])
GO

ALTER TABLE [org].[CnyComplaintOpinions] CHECK CONSTRAINT [FK_CnyComplaintOpinions_CnyComplaintReason]
GO


------------------------------------------------------
-- 			Contract Type TABLE
------------------------------------------------------
CREATE TABLE [org].[CnyComplaintReason](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_CnyComplaintReason] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

