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
CREATE TABLE [dbo].[NoLogHeader](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[HeadBgImgPath] [varchar](MAX) NOT NULL,
	[CompanyAccessBtn] [varchar](50) NOT NULL,
	[CompanyAccessBtnUrl] [varchar](MAX) NOT NULL,
	[CandidateAccessBtn] [varchar](50) NOT NULL,
	[CandidateAccessBtnUrl] [varchar](MAX) NOT NULL,
	[BlockFilterTitle] [varchar](100) NOT NULL,
	[SeachFilterTitle] [varchar](100) NOT NULL,
	[LocationFilterTitle] [varchar](100) NOT NULL,
	[SearchBtn] [varchar](50) NOT NULL,
	[SearchBtnHoverDesc] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NoLogHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Non Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogNavBarLinks](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LinkUrl] [varchar](300) NOT NULL,
 CONSTRAINT [PK_NoLogNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Non Logged Company Offers Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCompaniesSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[ShowMoreTextBtn] [varchar](MAX) NOT NULL,
	[DefaultMiniIconImgPath] [varchar](500) NOT NULL,
	[DefaultMiniImgPath] [varchar](50) NOT NULL,
	[DefaultOffersQtyText] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NoLogCompaniesSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Company Offers Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCompaniesItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ItemBgImgPath] [varchar](500) NOT NULL,
	[ItemBtn] [varchar](50) NOT NULL,
	[ItemBtnUrl] [varchar](MAX) NOT NULL,
	[EnabledItem] [bit] NOT NULL,
 CONSTRAINT [PK_NoLogCompaniesPublicityItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTImg_ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Company Offers Section Publicity Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCompaniesPublicityItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[ItemBgImgPath] [varchar](500) NOT NULL,
	[ItemBtn] [varchar](50) NOT NULL,
	[ItemBtnUrl] [varchar](MAX) NOT NULL,
	[EnabledItem] [bit] NOT NULL,
 CONSTRAINT [PK_NoLogCompaniesPublicityItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTImg_ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Filters Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogFiltersSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL, 
	[MoreFiltersBtn] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NoLogFiltersSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Filters Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogFiltersItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[ItemBgImgPath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NoLogFiltersItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Cities Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCitiesSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[MoreCitiesBtn] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NoLogCitiesSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Cities Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCitiesItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[ItemBgImgPath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL, 
 CONSTRAINT [PK_NoLogCitiesItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Sector Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogSectorSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL, 
	[MoreSectorsBtn] [varchar](50) NOT NULL, 
 CONSTRAINT [PK_NoLogSectorSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Sector Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogSectorItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[ItemBgImgPath] [varchar](500) NOT NULL,
	[FilterName] [varchar](100) NOT NULL, 
	[FilterValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NoLogSectorItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO