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
	[RegisteredName] [VARCHAR](300) NOT NULL,
	[NIF] [VARCHAR](300) NOT NULL,
	[TaxAddress] [VARCHAR](300) NOT NULL,
	[TaxCountry] [VARCHAR](300) NOT NULL,
	[TaxProvince] [VARCHAR](300) NOT NULL,
	[TaxTown] [VARCHAR](300) NOT NULL,
	[TaxPostCode] [VARCHAR](300) NOT NULL,
	[RegOffiAddress] [VARCHAR](300) NOT NULL,
	[RegOffiCountry] [VARCHAR](300) NOT NULL,
	[RegOffiProvince] [VARCHAR](300) NOT NULL,
	[RegOffiTown] [VARCHAR](300) NOT NULL,
	[RegOffiPostCode] [VARCHAR](300) NOT NULL,
	[LaborSector] [VARCHAR](300) NOT NULL,
	[WorkersNum] [VARCHAR](300) NOT NULL,
	[InternalName] [VARCHAR](MAX) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	[MainEmail] [VARCHAR](MAX) NOT NULL,
	[SecondaryEmail] [VARCHAR](MAX) NOT NULL,
	[MovilPhone] [VARCHAR](20) NOT NULL,
	[LandlinePhone] [VARCHAR](20),
	[ForeignPhone] [VARCHAR](20),
	[WebSite] [VARCHAR](MAX) NOT NULL,
	[LogoImgPath] [VARCHAR](500) NOT NULL,
	[BgImgPath] [VARCHAR](500) NOT NULL,
	[MiniImgPath] [VARCHAR](500) NOT NULL,
	[MiniText] [VARCHAR](150) NOT NULL,
	[CompanyBgImgPath] [VARCHAR](50) NOT NULL,

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
	[Title] [VARCHAR](300) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_CompanyInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyInfo]  WITH CHECK ADD  CONSTRAINT [FK_CompanyInfo_Companys] FOREIGN KEY([generalPageId])
REFERENCES [dbo].[Companys] ([Id])
GO

ALTER TABLE [dbo].[CompanyInfo] CHECK CONSTRAINT [FK_CompanyInfo_Companys]
GO

------------------------------------------------------
-- 			Company Job Offers TABLE
------------------------------------------------------
CREATE TABLE [org].[CompanyJobOffers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](300) NOT NULL,
	[Description] [VARCHAR](MAX) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_CompanyJobOffers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_Companys] FOREIGN KEY([generalPageId])
REFERENCES [dbo].[Companys] ([Id])
GO

ALTER TABLE [dbo].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_Companys]
GO
