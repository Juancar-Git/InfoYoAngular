------------------------------------------------------
-- 			Jobs Page TABLEs
------------------------------------------------------
-- Sección Empleos. Hay dos formatos, con y sin filtros, el primero solo como logueado.

------------------------------------------------------
-- 			Jobs Page No Filters TABLE
------------------------------------------------------
CREATE TABLE [web].[WJobsPageNoFilt](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [VARCHAR](100) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[VoidSearchTextField] [VARCHAR](100) NOT NULL,
	[VoidLocationField] [VARCHAR](100) NOT NULL,
	[SearchBtn] [VARCHAR](50) NOT NULL,
	[OffersTitle] [VARCHAR](100) NOT NULL,
	[OffersBaseUrl] [VARCHAR](MAX) NOT NULL,
	[CandidacyTitle] [VARCHAR](100) NOT NULL,
	[CandidacyComment] [VARCHAR](100) NOT NULL,
	[CandidacyLinkText] [VARCHAR](100) NOT NULL,
	[CandidacyLinkUrl] [VARCHAR](MAX) NOT NULL,
	[PreferencesTitle] [VARCHAR](100) NOT NULL,
	[PrefBtn] [VARCHAR](50) NOT NULL,
	[PrefBtnUrl] [VARCHAR](100) NOT NULL,
	[PrefEditBtn] [VARCHAR](50) NOT NULL,
	[PrefEditBtnUrl] [VARCHAR](MAX) NOT NULL,
	[PrefMoreBtn] [VARCHAR](50) NOT NULL,
	[PrefMoreBtnUrl] [VARCHAR](MAX) NOT NULL,
	[SaveItemIcon] [VARCHAR](100) NOT NULL,
	[YourOffersTitle] [VARCHAR](100) NOT NULL,
	[YourOffersSubTitle] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_WJobsPageNoFilt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Jobs Page With Filters TABLE
------------------------------------------------------
CREATE TABLE [web].[WJobsPageWithFilt](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[TitleSearchTextField] [VARCHAR](50) NOT NULL,
	[VoidSearchTextField] [VARCHAR](100) NOT NULL,
	[TitleLocationField] [VARCHAR](50) NOT NULL,
	[VoidLocationField] [VARCHAR](100) NOT NULL,
	[NonVariableOffersQtyText] [VARCHAR](50) NOT NULL,
	[OrderByOffersText] [VARCHAR](50) NOT NULL,
	[OrderByOffersInfoText] [VARCHAR](300) NOT NULL,
	[NextBtn] [VARCHAR](50) NOT NULL,
	[PreviousBtn] [VARCHAR](50) NOT NULL,
	[NewSearchBtn] [VARCHAR](50) NOT NULL,
	[RelationOffersTxt] [VARCHAR](300) NOT NULL,
	[RelationCompaniesTxt] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_WJobsPageWithFilt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			OrdeBy Offers Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WOrdeByOffersItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WOrdeByOffersItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Side Filter Types TABLE
------------------------------------------------------
CREATE TABLE [web].[WSideFilterType](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[FilterKey] [VARCHAR](50) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[ShowMoreTitle] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_WSideFilterType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_WSideFilterType_FilterKey ON web.WSideFilterType(FilterKey);


------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WSideFilterItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[ItemValue] [VARCHAR](150) NOT NULL,
	[ItemLabel] [VARCHAR](100) NOT NULL,
	[WSideFilterTypeId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_WSideFilterItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [web].[WSideFilterItem]  WITH CHECK ADD  CONSTRAINT [FK_WSideFilterItem_WSideFilterType] FOREIGN KEY([WSideFilterTypeId])
REFERENCES [web].[WSideFilterType] ([Id])
GO

ALTER TABLE [web].[WSideFilterItem] CHECK CONSTRAINT [FK_WSideFilterItem_WSideFilterType]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_WSideFilterItem_WSideFilterTypeId ON web.WSideFilterItem(WSideFilterTypeId);
