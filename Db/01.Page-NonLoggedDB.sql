------------------------------------------------------
-- 			Non Logged Home Page TABLEs
------------------------------------------------------
USE [InfoYo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- FALTA
-- Crear tabla de traducciones
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
/* -- DROP TABLES IN ORDER
DROP TABLE [org].[OCountry]
DROP TABLE [org].[OPublicityData]
DROP TABLE [org].[OCvVisit]
DROP TABLE [org].[OCnyComplaintOpinion]
DROP TABLE [org].[OCnyComplaintReason]
DROP TABLE [org].[OCompanyOpinion]
DROP TABLE [org].[OJobOfferPerson]
DROP TABLE [org].[OCompanyJobOffer]
DROP TABLE [org].[OContractType]
DROP TABLE [org].[OWorkDayType]
DROP TABLE [org].[OMinStudy]
DROP TABLE [org].[OJobCategory]
DROP TABLE [org].[OCompanyInfo]
DROP TABLE [org].[OCompany]
DROP TABLE [org].[OPerson]
DROP TABLE [auth].[AUser]
DROP TABLE [web].[WCompanyPage]
DROP TABLE [web].[WProfileVisitsPage]
DROP TABLE [web].[WMyCvSectOption]
DROP TABLE [web].[WMyCvSect]
DROP TABLE [web].[WMyCvPage]
DROP TABLE [web].[WMoreOptionsItems]
DROP TABLE [web].[WMyOffersPage]
DROP TABLE [web].[WSideFilterItem]
DROP TABLE [web].[WSideFilterType]
DROP TABLE [web].[WOrdeByOffersItem]
DROP TABLE [web].[WJobsPageWithFilt]
DROP TABLE [web].[WJobsPageNoFilt]
DROP TABLE [web].[WGender]
DROP TABLE [web].[WPersonalDataPage]
DROP TABLE [web].[WFtrPartnersSectItem]
DROP TABLE [web].[WFtrPartnersSect]
DROP TABLE [web].[WFtrAppDowloadLinkItem]
DROP TABLE [web].[WFtrSocialMediaSectItem]
DROP TABLE [web].[WFtrSocialMediaSect]
DROP TABLE [web].[WFtrLinksSectionColItem]
DROP TABLE [web].[WFtrLinksSectionCol]
DROP TABLE [web].[WLogDropDownMenuLink]
DROP TABLE [web].[WLogNavBarLink]
DROP TABLE [web].[WLogHeader]
DROP TABLE [web].[WCandidateLogIn]
DROP TABLE [web].[WNoLogSectorItem]
DROP TABLE [web].[WNoLogSectorSection]
DROP TABLE [web].[WNoLogCitiesItem]
DROP TABLE [web].[WNoLogCitiesSection]
DROP TABLE [web].[WNoLogFiltersItem]
DROP TABLE [web].[WNoLogFiltersSection]
DROP TABLE [web].[WNoLogCompanyPublicityItem]
DROP TABLE [web].[WNoLogCompanyItem]
DROP TABLE [web].[WNoLogCompanySection]
DROP TABLE [web].[WNoLogNavBarLink]
DROP TABLE [web].[WNoLogHeader]
*/

CREATE SCHEMA web;

------------------------------------------------------
-- 			Non Logged HOME PAGE TABLE
------------------------------------------------------
--!!!!! ESTA PAGINA SOLO APARECE CUANDO EL USUARIO NO ESTÁ CONECTADO

------------------------------------------------------
-- 			Non Logged Header TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogHeader](
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
 CONSTRAINT [PK_WNoLogHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Non Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogNavBarLink](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_WNoLogNavBarLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_WNoLogNavBarLink_Name ON web.WNoLogNavBarLink(Name);


------------------------------------------------------
-- 			Non Logged Company Offers Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogCompanySection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[ShowMoreTextBtn] [VARCHAR](MAX) NOT NULL,
	[DefaultMiniIconImgPath] [VARCHAR](500) NOT NULL,
	[DefaultMiniImgPath] [VARCHAR](50) NOT NULL,
	[DefaultOffersQtyText] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WNoLogCompanySection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Company Offers Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogCompanyItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[Description] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemBtn] [VARCHAR](50) NOT NULL,
	[ItemBtnUrl] [VARCHAR](MAX) NOT NULL,
	[EnabledItem] [BIT] NOT NULL,
 CONSTRAINT [PK_WNoLogCompanyItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index
CREATE NONCLUSTERED INDEX IX_WNoLogCompanyItem_EnabledItem ON web.WNoLogCompanyItem(EnabledItem);


------------------------------------------------------
-- 			Non Logged Company Offers Section Publicity Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogCompanyPublicityItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[Description] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemBtn] [VARCHAR](50) NOT NULL,
	[ItemBtnUrl] [VARCHAR](MAX) NOT NULL,
	[EnabledItem] [BIT] NOT NULL,
 CONSTRAINT [PK_WNoLogCompanyPublicityItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_WNoLogCompanyPublicityItem_EnabledItem ON web.WNoLogCompanyPublicityItem(EnabledItem);


------------------------------------------------------
-- 			Non Logged Filters Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogFiltersSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](150) NOT NULL, 
	[MoreFiltersBtn] [VARCHAR](50) NOT NULL, 
 CONSTRAINT [PK_WNoLogFiltersSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Filters Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogFiltersItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_WNoLogFiltersItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index
CREATE NONCLUSTERED INDEX IX_WNoLogFiltersItem_FilterName ON web.WNoLogFiltersItem(FilterName);
CREATE NONCLUSTERED INDEX IX_WNoLogFiltersItem_FilterValue ON web.WNoLogFiltersItem(FilterValue);


------------------------------------------------------
-- 			Non Logged Cities Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogCitiesSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[MoreCitiesBtn] [VARCHAR](50) NOT NULL, 
 CONSTRAINT [PK_WNoLogCitiesSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Cities Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogCitiesItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL, 
 CONSTRAINT [PK_WNoLogCitiesItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_WNoLogCitiesItem_FilterName ON web.WNoLogCitiesItem(FilterName);
CREATE NONCLUSTERED INDEX IX_WNoLogCitiesItem_FilterValue ON web.WNoLogCitiesItem(FilterValue);


------------------------------------------------------
-- 			Non Logged Sector Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogSectorSection](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL, 
	[MoreSectorsBtn] [VARCHAR](50) NOT NULL, 
 CONSTRAINT [PK_WNoLogSectorSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Non Logged Sector Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WNoLogSectorItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[FilterName] [VARCHAR](100) NOT NULL, 
	[FilterValue] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_WNoLogSectorItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_WNoLogSectorItem_FilterName ON web.WNoLogSectorItem(FilterName);
CREATE NONCLUSTERED INDEX IX_WNoLogSectorItem_FilterValue ON web.WNoLogSectorItem(FilterValue);


------------------------------------------------------
-- 			Log In Page TABLE
------------------------------------------------------
CREATE TABLE [web].[WCandidateLogIn](
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
 CONSTRAINT [PK_WCandidateLogIn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
