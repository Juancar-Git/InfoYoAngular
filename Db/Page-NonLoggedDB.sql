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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [VARCHAR](100) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[HeadBgImgPath] [VARCHAR](MAX) NOT NULL,
	[CompanyAccessBtn] [VARCHAR](50) NOT NULL,
	[CompanyAccessBtnUrl] [VARCHAR](MAX) NOT NULL,
	[CandidateAccessBtn] [VARCHAR](50) NOT NULL,
	[CandidateAccessBtnUrl] [VARCHAR](MAX) NOT NULL,
	[BlockFilterTitle] [VARCHAR](100) NOT NULL,
	[SeachFilterTitle] [VARCHAR](100) NOT NULL,
	[LocationFilterTitle] [VARCHAR](100) NOT NULL,
	[SearchBtn] [VARCHAR](50) NOT NULL,
	[SearchBtnHoverDesc] [VARCHAR](100) NOT NULL,
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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_NoLogNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_NoLogNavBarLinks_Name ON dbo.NoLogNavBarLinks(Name);


------------------------------------------------------
-- 			Non Logged Company Offers Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCompaniesSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[ShowMoreTextBtn] [VARCHAR](MAX) NOT NULL,
	[DefaultMiniIconImgPath] [VARCHAR](500) NOT NULL,
	[DefaultMiniImgPath] [VARCHAR](50) NOT NULL,
	[DefaultOffersQtyText] [VARCHAR](50) NOT NULL,
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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[Description] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemBtn] [VARCHAR](50) NOT NULL,
	[ItemBtnUrl] [VARCHAR](MAX) NOT NULL,
	[EnabledItem] [BIT] NOT NULL,
 CONSTRAINT [PK_NoLogCompaniesPublicityItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTImg_ON [PRIMARY]
GO

-- Index
CREATE NONCLUSTERED INDEX IX_NoLogCompaniesItems_EnabledItem ON dbo.NoLogCompaniesItems(EnabledItem);


------------------------------------------------------
-- 			Non Logged Company Offers Section Publicity Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCompaniesPublicityItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[Description] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemBtn] [VARCHAR](50) NOT NULL,
	[ItemBtnUrl] [VARCHAR](MAX) NOT NULL,
	[EnabledItem] [BIT] NOT NULL,
 CONSTRAINT [PK_NoLogCompaniesPublicityItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTImg_ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_NoLogCompaniesPublicityItems_EnabledItem ON dbo.NoLogCompaniesPublicityItems(EnabledItem);


------------------------------------------------------
-- 			Non Logged Filters Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogFiltersSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150) NOT NULL, 
	[MoreFiltersBtn] [VARCHAR](50) NOT NULL, 
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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_NoLogFiltersItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index
CREATE NONCLUSTERED INDEX IX_NoLogFiltersItems_FilterName ON dbo.NoLogFiltersItems(FilterName);
CREATE NONCLUSTERED INDEX IX_NoLogFiltersItems_FilterValue ON dbo.NoLogFiltersItems(FilterValue);


------------------------------------------------------
-- 			Non Logged Cities Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogCitiesSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[MoreCitiesBtn] [VARCHAR](50) NOT NULL, 
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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL, 
 CONSTRAINT [PK_NoLogCitiesItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_NoLogCitiesItems_FilterName ON dbo.NoLogCitiesItems(FilterName);
CREATE NONCLUSTERED INDEX IX_NoLogCitiesItems_FilterValue ON dbo.NoLogCitiesItems(FilterValue);


------------------------------------------------------
-- 			Non Logged Sector Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[NoLogSectorSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[MoreSectorsBtn] [VARCHAR](50) NOT NULL, 
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
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_NoLogSectorItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_NoLogSectorItems_FilterName ON dbo.NoLogSectorItems(FilterName);
CREATE NONCLUSTERED INDEX IX_NoLogSectorItems_FilterValue ON dbo.NoLogSectorItems(FilterValue);


------------------------------------------------------
-- 			Log In Page TABLE
------------------------------------------------------
CREATE TABLE [dbo].[CandidateLogIn](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[LogInTitle] [VARCHAR](100) NOT NULL,
	[Email] [VARCHAR](50) NOT NULL,
	[Password] [VARCHAR](50) NOT NULL,
	[ForgetPw] [VARCHAR](50) NOT NULL,
	[LogInBtn] [VARCHAR](50) NOT NULL,
	[SignInTitle] [VARCHAR](100) NOT NULL,
	[CreateCvTl] [VARCHAR](150) NOT NULL,
	[CreateCvDesc] [VARCHAR](200) NOT NULL,
	[CreateCvIcon] [VARCHAR](100) NOT NULL,
	[RegisterTl] [VARCHAR](150) NOT NULL,
	[RegisterDesc] [VARCHAR](200) NOT NULL,
	[RegisterIcon] [VARCHAR](100) NOT NULL,
	[UpdCvTl] [VARCHAR](150) NOT NULL,
	[UpdCvDesc] [VARCHAR](200) NOT NULL,
	[UpdCvIcon] [VARCHAR](100) NOT NULL,
	[SignInBtn] [VARCHAR](50) NOT NULL,
	[OpenSession] [VARCHAR](150) NOT NULL,
	[CompanyAccess] [VARCHAR](150) NOT NULL,
	[Help] [VARCHAR](150) NOT NULL,
 CONSTRAINT [PK_CandidateLogIn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
