------------------------------------------------------
-- 			Authentication TABLEs
------------------------------------------------------
-- 

CREATE SCHEMA auth;
------------------------------------------------------
-- 			Users TABLE
------------------------------------------------------

CREATE TABLE [auth].[Users](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Email] [NVARCHAR](255) UNIQUE NOT NULL,
	[PasswordHash] [NVARCHAR](MAX) NOT NULL,
	[Rol] [VARCHAR](50) NOT NULL,
	[Status] [BIT] DEFAULT 1,
	[CreationDate] [DATETIME] DEFAULT GETDATE(),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




------------------------------------------------------
-- 			Organization TABLEs
------------------------------------------------------
-- 

CREATE SCHEMA org;
------------------------------------------------------
-- 			Person TABLE
------------------------------------------------------


CREATE TABLE [org].[Persons](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](100) UNIQUE NOT NULL,
	[FirstSurname] [VARCHAR](100) NOT NULL,
	[SecondSurname] [VARCHAR](100),
	[Birthdate] [DATETIME] DEFAULT GETDATE(),
	[DocumentType] [VARCHAR](50) NOT NULL CHECK(DocumentType IN('DNI', 'NIE', 'Pasaporte')),
	[Gender] [VARCHAR](50) CHECK(Gender IN('Hombre', 'Mujer')),
	[Country] [VARCHAR](100) NOT NULL,
	[PostCode] [VARCHAR](15) NOT NULL,
	[Province] [VARCHAR](100) NOT NULL,
	[Town] [VARCHAR](100) NOT NULL,
	[Address] [VARCHAR](100),
	[MovilPhone] [VARCHAR](20) NOT NULL,
	[LandlinePhone] [VARCHAR](20),
	[ForeignPhone] [VARCHAR](20),
	[PreferPhone] [CHAR](1)) DEFAULT 'M' CHECK(PreferPhone IN('M', 'L', 'F')),
	[WebSite] [VARCHAR](MAX) NOT NULL,
	[OpenToWork] [BIT] NOT NULL DEFAULT FALSE,
	[CreationDate] [DATETIME] NOT NULL DEFAULT GETDATE(),
	[Closed] [BIT] NOT NULL DEFAULT FALSE,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Link Company Job Offers - Person TABLE
------------------------------------------------------

CREATE TABLE [org].[JobOffersPersons](
	[PersonsId] [BIGINT] NOT NULL,
	[JobOffersId] [BIGINT] NOT NULL,
	[ApplicationDate] DATE NOT NULL DEFAULT GETDATE(),
	[Status] NVARCHAR(50),
 CONSTRAINT [PK_JobOffersPersons] PRIMARY KEY CLUSTERED 
(
	[PersonsId], [JobOffersId]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [org].[JobOffersPersons]  WITH CHECK ADD  CONSTRAINT [FK_JobOffersPersons_CompanyJobOffers] FOREIGN KEY([JobOffersId])
REFERENCES [org].[CompanyJobOffers] ([Id])
GO

ALTER TABLE [org].[JobOffersPersons] CHECK CONSTRAINT [FK_JobOffersPersons_CompanyJobOffers]
GO

ALTER TABLE [org].[JobOffersPersons]  WITH CHECK ADD  CONSTRAINT [FK_JobOffersPersons_Persons] FOREIGN KEY([PersonsId])
REFERENCES [org].[Persons] ([Id])
GO

ALTER TABLE [org].[JobOffersPersons] CHECK CONSTRAINT [FK_JobOffersPersons_Persons]
GO