------------------------------------------------------
-- 			Non Logged Home Page TABLEs
------------------------------------------------------
USE [InfoYoDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Crear varios esquemas, separando los datos de ENTIDADES, como usuarios, empresas, etc, y otros para el FRONTEND
-- AÑADIR INDICES A LOS CAMPOS IDs
-- Crear tabla de traducciones
-- Reducir la nomenclatura de tablas y campos
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

------------------------------------------------------
-- 			Non Logged HOME PAGE TABLE
------------------------------------------------------
--!!!!! ESTA PAGINA SOLO APARECE CUANDO EL USUARIO NO ESTÁ CONECTADO

------------------------------------------------------
-- 			Non Logged Header TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedHeader](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[HeadBackgroundImagePath] [varchar](MAX) NOT NULL,
	[CompanyAccessButton] [varchar](50) NOT NULL,
	[CompanyAccessButtonUrl] [varchar](MAX) NOT NULL,
	[CandidateAccessButton] [varchar](50) NOT NULL,
	[CandidateAccessButtonUrl] [varchar](MAX) NOT NULL,
	[BlockFilterTitle] [varchar](100) NOT NULL,
	[SeachFilterTitle] [varchar](100) NOT NULL,
	[LocationFilterTitle] [varchar](100) NOT NULL,
	[SearchButton] [varchar](50) NOT NULL,
	[SearchButtonHoverDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NonLoggedHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Non Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedNavBarLinks](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LinkUrl] [varchar](300) NOT NULL,
 CONSTRAINT [PK_NonLoggedNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Non Logged Company Offers Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedCompanyOffersSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[ShowMoreTextButton] [varchar](MAX) NOT NULL,
	[DefaultThumbnailIconImagePath] [varchar](500) NOT NULL,
	[DefaultThumbnailImagePath] [varchar](50) NOT NULL,
	[DefaultOffersNumberText] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NonLoggedCompanyOffersSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Company Offers Section Publicity Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedCompanyOffersSectionPublicityItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ItemBackgroundImagePath] [varchar](500) NOT NULL,
	[ItemButton] [varchar](50) NOT NULL,
	[ItemButtonUrl] [varchar](MAX) NOT NULL,
	[EnabledItem] [bit] NOT NULL,
 CONSTRAINT [PK_NonLoggedCompanyOffersSectionPublicityItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Filters Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedFiltersSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL, 
	[MoreFiltersButton] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NonLoggedFiltersSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Filters Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedFiltersSectionItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[ItemBackgroundImagePath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NonLoggedFiltersSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Cities Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedCitiesSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[MoreCitiesButton] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NonLoggedCitiesSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Cities Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedCitiesSectionItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[ItemBackgroundImagePath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL, 
 CONSTRAINT [PK_NonLoggedCitiesSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Sector Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedSectorSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[MoreSectorsButton] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NonLoggedSectorSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Sector Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NonLoggedSectorSectionItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[ItemBackgroundImagePath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NonLoggedSectorSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO