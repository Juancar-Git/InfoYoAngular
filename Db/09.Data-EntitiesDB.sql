------------------------------------------------------
-- 			Authentication TABLEs
------------------------------------------------------
-- 

CREATE SCHEMA auth;
------------------------------------------------------
-- 			Users TABLE
------------------------------------------------------

CREATE TABLE [auth].[AUser](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Email] [NVARCHAR](255) UNIQUE NOT NULL,
	[PasswordHash] [NVARCHAR](MAX) NOT NULL,
	[Rol] [VARCHAR](50) NOT NULL,
	[Status] [BIT] DEFAULT 1,
	[CreationDate] [DATETIME] DEFAULT GETDATE(),
 CONSTRAINT [PK_AUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index
CREATE NONCLUSTERED INDEX IX_AUser_Rol_Status
ON auth.AUser(Rol, Status);


------------------------------------------------------
-- 			Organization TABLEs
------------------------------------------------------
-- 

CREATE SCHEMA org;
------------------------------------------------------
-- 			Person TABLE
------------------------------------------------------


CREATE TABLE [org].[OPerson](
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
	[PreferPhone] [CHAR](1) DEFAULT 'M' CHECK(PreferPhone IN('M', 'L', 'F')),
	[WebSite] [VARCHAR](MAX) NOT NULL,
	[OpenToWork] [BIT] NOT NULL DEFAULT 0,
	[CreationDate] [DATETIME] NOT NULL DEFAULT GETDATE(),
	[Closed] [BIT] NOT NULL DEFAULT 0,
	[AUserId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_OPerson] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [org].[OPerson]  WITH CHECK ADD  CONSTRAINT [FK_OPerson_AUser] FOREIGN KEY([AUserId])
REFERENCES [auth].[AUser] ([Id])
GO

ALTER TABLE [org].[OPerson] CHECK CONSTRAINT [FK_OPerson_AUser]
GO

ALTER TABLE [org].[OPerson] ADD CONSTRAINT [UQ_OPerson_AUserId] UNIQUE ([AUserId]);
GO

-- Index
CREATE NONCLUSTERED INDEX IX_OPerson_Name_Surnames
ON org.OPerson(Name, FirstSurname, SecondSurname);

CREATE NONCLUSTERED INDEX IX_OPerson_Location
ON org.OPerson(Country, Province, Town);


CREATE NONCLUSTERED INDEX IX_OPerson_OpenToWork
ON org.OPerson(OpenToWork)
WHERE OpenToWork = 1;


