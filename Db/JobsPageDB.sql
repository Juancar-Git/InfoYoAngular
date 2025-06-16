------------------------------------------------------
-- 			Jobs Page TABLEs
------------------------------------------------------
-- Sección Empleos. Hay dos formatos, con y sin filtros, el primero solo como logueado.

------------------------------------------------------
-- 			Jobs Page No Filters TABLE
------------------------------------------------------
CREATE TABLE [dbo].[JobsPageNoFilters](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[VoidSearchTextField] [varchar](100) NOT NULL,
	[VoidLocationField] [varchar](100) NOT NULL,
	[SearchBtn] [varchar](50) NOT NULL,
	[OffersTitle] [varchar](100) NOT NULL,
	[OffersBaseUrl] [varchar](MAX) NOT NULL,
	[candidacyTitle] [varchar](100) NOT NULL,
	[candidacyComment] [varchar](100) NOT NULL,
	[candidacyLinkText] [varchar](100) NOT NULL,
	[candidacyLinkUrl] [varchar](MAX) NOT NULL,
	[preferencesTitle] [varchar](100) NOT NULL,
	[prefBtn] [varchar](50) NOT NULL,
	[prefBtnUrl] [varchar](100) NOT NULL,
	[prefBtn] [varchar](50) NOT NULL,
	[prefEditBtnUrl] [varchar](MAX) NOT NULL,
	[prefMoreBtn] [varchar](50) NOT NULL,
	[prefMoreBtnUrl] [varchar](MAX) NOT NULL,
	[YourOffersTitle] [varchar](100) NOT NULL,
	[YourOffersSubTitle] [varchar](100) NOT NULL,
 CONSTRAINT [PK_JobsPageNoFilters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Jobs Page With Filters TABLE
------------------------------------------------------
CREATE TABLE [dbo].[JobsPageWithFilters](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TitleSearchTextField] [varchar](50) NOT NULL,
	[VoidSearchTextField] [varchar](100) NOT NULL,
	[TitleLocationField] [varchar](50) NOT NULL,
	[VoidLocationField] [varchar](100) NOT NULL,
	[NonVariableOffersQtyText] [varchar](50) NOT NULL,
	[OrderByOffersText] [varchar](50) NOT NULL,
	[OrderByOffersInfoText] [varchar](300) NOT NULL,
	[NextBtn] [varchar](50) NOT NULL,
	[PreviousBtn] [varchar](50) NOT NULL,
	[NewSearchBtn] [varchar](50) NOT NULL,
	[RelationOffersTxt] [varchar](300) NOT NULL,
	[RelationCompaniesTxt] [varchar](300) NOT NULL,
 CONSTRAINT [PK_JobsPageWithFilters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			OrdeBy Offers Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[OrdeByOffersItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
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
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FilterKey] [varchar](50) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[ShowMoreTitle] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SideFilterTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[SideFilterItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemValue] [varchar](150) NOT NULL,
	[ItemLabel] [varchar](100) NOT NULL,
	[SideFilterTypesId] [bigint] NOT NULL,
 CONSTRAINT [PK_SideFilterItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SideFilterItems]  WITH CHECK ADD  CONSTRAINT [FK_SideFilterItems_SideFilterTypes] FOREIGN KEY([SideFilterTypesId])
REFERENCES [dbo].[SideFilterTypes] ([Id])
GO

ALTER TABLE [dbo].[SideFilterItems] CHECK CONSTRAINT [FK_SideFilterItems_SideFilterTypes]
GO
