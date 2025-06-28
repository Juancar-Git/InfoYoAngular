------------------------------------------------------
-- 			Jobs Page TABLEs
------------------------------------------------------
-- Sección Empleos. Hay dos formatos, con y sin filtros, el primero solo como logueado.

------------------------------------------------------
-- 			Jobs Page No Filters TABLE
------------------------------------------------------
CREATE TABLE [dbo].[JobsPageNoFilt](
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
	[PrefBtn] [VARCHAR](50) NOT NULL,
	[PrefEditBtnUrl] [VARCHAR](MAX) NOT NULL,
	[PrefMoreBtn] [VARCHAR](50) NOT NULL,
	[PrefMoreBtnUrl] [VARCHAR](MAX) NOT NULL,
	[SaveItemIcon] [VARCHAR](100) NOT NULL,
	[YourOffersTitle] [VARCHAR](100) NOT NULL,
	[YourOffersSubTitle] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_JobsPageNoFilt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Jobs Page With Filters TABLE
------------------------------------------------------
CREATE TABLE [dbo].[JobsPageWithFilt](
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
 CONSTRAINT [PK_JobsPageWithFilt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			OrdeBy Offers Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[OrdeByOffersItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_OrdeByOffersItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Side Filter Types TABLE
------------------------------------------------------
CREATE TABLE [dbo].[SideFilterTypes](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[FilterKey] [VARCHAR](50) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[ShowMoreTitle] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_SideFilterTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Index 
CREATE NONCLUSTERED INDEX IX_SideFilterTypes_FilterKey ON dbo.SideFilterTypes(FilterKey);


------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[SideFilterItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[ItemValue] [VARCHAR](150) NOT NULL,
	[ItemLabel] [VARCHAR](100) NOT NULL,
	[SideFilterTypesId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_SideFilterItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [dbo].[SideFilterItems]  WITH CHECK ADD  CONSTRAINT [FK_SideFilterItems_SideFilterTypes] FOREIGN KEY([SideFilterTypesId])
REFERENCES [dbo].[SideFilterTypes] ([Id])
GO

ALTER TABLE [dbo].[SideFilterItems] CHECK CONSTRAINT [FK_SideFilterItems_SideFilterTypes]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_SideFilterItems_SideFilterTypesId ON dbo.SideFilterItems(SideFilterTypesId);
