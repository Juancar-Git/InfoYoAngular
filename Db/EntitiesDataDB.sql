------------------------------------------------------
-- 			Authentication TABLEs
------------------------------------------------------
-- 

CREATE SCHEMA auth;
------------------------------------------------------
-- 			Profile Visits Page TABLE
------------------------------------------------------

CREATE TABLE [auth].[Users](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Email] [NVARCHAR](255) UNIQUE NOT NULL,
	[PasswordHash] [NVARCHAR](MAX) NOT NULL,
	[Rol] [VARCHAR](50) NOT NULL,
	[Status] [BIT] DEFAULT 1,
	[CreationDate] [DATETIME] DEFAUL GETDATE(),
 CONSTRAINT [PK_MiCvPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE SCHEMA org;

CREATE TABLE [org].[Person](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](100) UNIQUE NOT NULL,
	[FirstSurname] [VARCHAR](100) NOT NULL,
	[SecondSurname] [VARCHAR](100),
	[Birthdate] [DATETIME] DEFAUL GETDATE(),
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
	[PreferPhone] [CHAR](1)) CHECK(PreferPhone IN('M', 'L', 'F')),
	[WebSite] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_MiCvPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO