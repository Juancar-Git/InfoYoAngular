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
-- 			Company Job Offers TABLE
------------------------------------------------------
CREATE TABLE [org].[CompanyJobOffers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150) NOT NULL,
	[PublicationDate] [DATETIME] DEFAULT GETDATE(),
	[Country] [VARCHAR](100) NOT NULL,
	[Province] [VARCHAR](100) NOT NULL,
	[Town] [VARCHAR](100) NOT NULL,
	[LocationType] [VARCHAR](50) NOT NULL CHECK(DocumentType IN('InPerson', 'Hybrid', 'TeleWorking', 'Unspecified')),
	[Salary] [DECIMAL](10,2),
	[MinExperience] [INT] NOT NULL,
	[ContractType] [VARCHAR](50) NOT NULL CHECK(DocumentType IN('Permanent', 'FixedTerm', 'SeasonalPermanent', 'SelfEmployed', 'PartTime', 'Training', 'Replacement', 'Others')),
	[WorkDayType] [VARCHAR](50) NOT NULL CHECK(DocumentType IN('FullTime', 'PartTime-Unspecified', 'PartTime-Morning', 'ContinuousShift-Unspecified', 'ContinuousShift-Morning', 'PartTime-Afternoon', 'PartTime-Night', 'ContinuousShift-Afternoon', 'ContinuousShift-Night', 'Unspecified')),
	--Continuar
	--Continuar
	[Description] [VARCHAR](MAX) NOT NULL,
	--Continuar
	--Continuar
	[CompanysId] [BIGINT] NOT NULL,
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
