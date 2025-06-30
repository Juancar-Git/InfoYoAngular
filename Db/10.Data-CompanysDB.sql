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
CREATE TABLE [org].[OCompany](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [VARCHAR](150) NOT NULL,
	[RegisteredName] [VARCHAR](150) NOT NULL,
	[NIF] [VARCHAR](30) UNIQUE NOT NULL,
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
 CONSTRAINT [PK_OCompany] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index
CREATE UNIQUE INDEX IX_OCompany_NIF ON org.OCompany(NIF);

CREATE NONCLUSTERED INDEX IX_OCompany_OCompanyName ON org.OCompany(CompanyName);

CREATE NONCLUSTERED INDEX IX_OCompany_TaxLocation
ON org.OCompany(TaxCountry, TaxProvince, TaxTown);


------------------------------------------------------
-- 			Company Info TABLE
------------------------------------------------------
CREATE TABLE [org].[OCompanyInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [VARCHAR](MAX),
	[YtVideoUrl] [VARCHAR](MAX),
	[FirstImgUrl] [VARCHAR](MAX) NOT NULL,
	[SecondImgUrl] [VARCHAR](MAX) NOT NULL,
	[OCompanyId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OCompanyInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OCompanyInfo]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyInfo_OCompany] FOREIGN KEY([OCompanyId])
REFERENCES [org].[OCompany] ([Id])
GO

ALTER TABLE [org].[OCompanyInfo] CHECK CONSTRAINT [FK_OCompanyInfo_OCompany]
GO


-- Index 
CREATE UNIQUE INDEX IX_OCompanyInfo_OCompanyId ON org.OCompanyInfo(OCompanyId);



------------------------------------------------------
-- 			Job Category TABLE
------------------------------------------------------
CREATE TABLE [org].[OJobCategory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_OJobCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			JOB OFFERS
------------------------------------------------------

------------------------------------------------------
-- 			Min Study TABLE
------------------------------------------------------
CREATE TABLE [org].[OMinStudy](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_OMinStudy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			WorkDay Type TABLE
------------------------------------------------------
CREATE TABLE [org].[OWorkDayType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_OWorkDayType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Contract Type TABLE
------------------------------------------------------
CREATE TABLE [org].[OContractType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_OContractType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Company Job Offers TABLE
------------------------------------------------------
CREATE TABLE [org].[OCompanyJobOffer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[CreationDate] [DATETIME] DEFAULT GETDATE(),
	[PublicationDate] [DATETIME] DEFAULT GETDATE(),
	[Country] [VARCHAR](100) NOT NULL,
	[Province] [VARCHAR](100) NOT NULL,
	[Town] [VARCHAR](100) NOT NULL,
	[LocationType] [VARCHAR](50) NOT NULL CHECK(LocationType IN('InPerson', 'Hybrid', 'TeleWorking', 'Unspecified')),
	[Salary] [DECIMAL](10,2),
	[MinExperienceYears] [INT] NOT NULL,
	[MinRequirements] [VARCHAR](500) NOT NULL,
	--Continuar
	--Continuar
	[Active] [BIT] NOT NULL DEFAULT 1,
	[OCompanyId] [BIGINT] NOT NULL,
	[OJobCategoryId] [BIGINT] NOT NULL DEFAULT 1,
	[OMinStudyId] [BIGINT] NOT NULL,
	[OWorkDayTypeId] [BIGINT] NOT NULL DEFAULT 1,
	[OContractTypeId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OCompanyJobOffer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OCompanyJobOffer]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyJobOffer_OCompany] FOREIGN KEY([OCompanyId])
REFERENCES [org].[OCompany] ([Id])
GO

ALTER TABLE [org].[OCompanyJobOffer] CHECK CONSTRAINT [FK_OCompanyJobOffer_OCompany]
GO

ALTER TABLE [org].[OCompanyJobOffer]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyJobOffer_OJobCategory] FOREIGN KEY([OJobCategoryId])
REFERENCES [org].[OJobCategory] ([Id])
GO

ALTER TABLE [org].[OCompanyJobOffer] CHECK CONSTRAINT [FK_OCompanyJobOffer_OJobCategory]
GO

ALTER TABLE [org].[OCompanyJobOffer]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyJobOffer_OMinStudy] FOREIGN KEY([OMinStudyId])
REFERENCES [org].[OMinStudy] ([Id])
GO

ALTER TABLE [org].[OCompanyJobOffer] CHECK CONSTRAINT [FK_OCompanyJobOffer_OMinStudy]
GO

ALTER TABLE [org].[OCompanyJobOffer]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyJobOffer_OWorkDayType] FOREIGN KEY([OWorkDayTypeId])
REFERENCES [org].[OWorkDayType] ([Id])
GO

ALTER TABLE [org].[OCompanyJobOffer] CHECK CONSTRAINT [FK_OCompanyJobOffer_OWorkDayType]
GO

ALTER TABLE [org].[OCompanyJobOffer]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyJobOffer_OContractType] FOREIGN KEY([OContractTypeId])
REFERENCES [org].[OContractType] ([Id])
GO

ALTER TABLE [org].[OCompanyJobOffer] CHECK CONSTRAINT [FK_OCompanyJobOffer_OContractType]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_OJobOffer_Active_PublicationDate
ON org.OCompanyJobOffer(Active, PublicationDate);

CREATE NONCLUSTERED INDEX IX_OJobOffer_Location
ON org.OCompanyJobOffer(Country, Province, Town);

CREATE NONCLUSTERED INDEX IX_OJobOffers_JobCategory
ON org.OCompanyJobOffer(OJobCategoryId);

CREATE NONCLUSTERED INDEX IX_OJobOffer_CompanyId
ON org.OCompanyJobOffer(OCompanyId);

CREATE NONCLUSTERED INDEX IX_OJobOffer_ContractType_WorkDay
ON org.OCompanyJobOffer(OContractTypeId, OWorkDayTypeId);



------------------------------------------------------
-- 			Link Company Job Offers - Person TABLE
------------------------------------------------------

CREATE TABLE [org].[OJobOfferPerson](
	[OPersonId] [BIGINT] NOT NULL,
	[OJobOfferId] [BIGINT] NOT NULL,
	[ApplicationDate] DATE NOT NULL DEFAULT GETDATE(),
	[Status] NVARCHAR(50),
 CONSTRAINT [PK_OJobOfferPerson] PRIMARY KEY CLUSTERED 
(
	[OPersonId], [OJobOfferId]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OJobOfferPerson]  WITH CHECK ADD  CONSTRAINT [FK_OJobOfferPerson_OCompanyJobOffer] FOREIGN KEY([OJobOfferId])
REFERENCES [org].[OCompanyJobOffer] ([Id])
GO

ALTER TABLE [org].[OJobOfferPerson] CHECK CONSTRAINT [FK_OJobOfferPerson_OCompanyJobOffer]
GO

ALTER TABLE [org].[OJobOfferPerson]  WITH CHECK ADD  CONSTRAINT [FK_OJobOfferPerson_OPerson] FOREIGN KEY([OPersonId])
REFERENCES [org].[OPerson] ([Id])
GO

ALTER TABLE [org].[OJobOfferPerson] CHECK CONSTRAINT [FK_OJobOfferPerson_OPerson]
GO


-- Index
CREATE NONCLUSTERED INDEX IX_OJobOfferPerson_OJobOfferId
ON org.OJobOfferPerson(OJobOfferId);

CREATE NONCLUSTERED INDEX IX_OJobOfferPerson_Status
ON org.OJobOfferPerson(Status);

CREATE NONCLUSTERED INDEX IX_OJobOfferPerson_ApplicationDate
ON org.OJobOfferPerson(ApplicationDate);



------------------------------------------------------
-- 			Company Opinions TABLE
------------------------------------------------------
CREATE TABLE [org].[OCompanyOpinion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150),
	[Description] [VARCHAR](300),
	[Stars] [INT] NOT NULL DEFAULT 0,
	[Complaints] [INT] NOT NULL DEFAULT 0,
	[Active] [BIT] NOT NULL DEFAULT 0,
	[OCompanyId] [BIGINT] NOT NULL,
	[OPersonId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OCompanyOpinion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[OCompanyOpinion]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyOpinion_OCompany] FOREIGN KEY([OCompanyId])
REFERENCES [org].[OCompany] ([Id])
GO

ALTER TABLE [org].[OCompanyOpinion] CHECK CONSTRAINT [FK_OCompanyOpinion_OCompany]
GO

ALTER TABLE [org].[OCompanyOpinion]  WITH CHECK ADD  CONSTRAINT [FK_OCompanyOpinion_OPerson] FOREIGN KEY([OPersonId])
REFERENCES [org].[OPerson] ([Id])
GO

ALTER TABLE [org].[OCompanyOpinion] CHECK CONSTRAINT [FK_OCompanyOpinion_OPerson]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_OCompanyOpinion_OCompanyId
ON org.OCompanyOpinion(OCompanyId);

CREATE NONCLUSTERED INDEX IX_OCompanyOpinion_OCompany_Active
ON org.OCompanyOpinion(OCompanyId, Active);

CREATE NONCLUSTERED INDEX IX_OCompanyOpinion_OPersonId
ON org.OCompanyOpinion(OPersonId);




------------------------------------------------------
-- 			Company Complaint Reason TABLE
------------------------------------------------------
CREATE TABLE [org].[OCnyComplaintReason](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_OCnyComplaintReason] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Company Complaint Opinions TABLE
------------------------------------------------------
CREATE TABLE [org].[OCnyComplaintOpinion](
	[OCompanyOpinionId] [BIGINT] NOT NULL,
	[OPersonId] [BIGINT] NOT NULL,
	[Description] [VARCHAR](2000),
	[Stars] [INT] NOT NULL DEFAULT 0,
	[Active] [BIT] NOT NULL DEFAULT 0,
	[OCnyComplaintReasonId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OCnyComplaintOpinion] PRIMARY KEY CLUSTERED 
(
	[OCompanyOpinionId], [OPersonId]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OCnyComplaintOpinion]  WITH CHECK ADD  CONSTRAINT [FK_OCnyComplaintOpinion_OCompanyOpinion] FOREIGN KEY([OCompanyOpinionId])
REFERENCES [org].[OCompanyOpinion] ([Id])
GO

ALTER TABLE [org].[OCnyComplaintOpinion] CHECK CONSTRAINT [FK_OCnyComplaintOpinion_OCompanyOpinion]
GO

ALTER TABLE [org].[OCnyComplaintOpinion]  WITH CHECK ADD  CONSTRAINT [FK_OCnyComplaintOpinion_OPerson] FOREIGN KEY([OPersonId])
REFERENCES [org].[OPerson] ([Id])
GO

ALTER TABLE [org].[OCnyComplaintOpinion] CHECK CONSTRAINT [FK_OCnyComplaintOpinion_OPerson]
GO

ALTER TABLE [org].[OCnyComplaintOpinion]  WITH CHECK ADD  CONSTRAINT [FK_OCnyComplaintOpinion_OCnyComplaintReason] FOREIGN KEY([OCnyComplaintReasonId])
REFERENCES [org].[OCnyComplaintReason] ([Id])
GO

ALTER TABLE [org].[OCnyComplaintOpinion] CHECK CONSTRAINT [FK_OCnyComplaintOpinion_OCnyComplaintReason]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_OCnyComplaintOpinion_Reason
ON org.OCnyComplaintOpinion(OCnyComplaintReasonId);

CREATE NONCLUSTERED INDEX IX_OCnyComplaintOpinion_Active
ON org.OCnyComplaintOpinion(Active)
WHERE Active = 1;


