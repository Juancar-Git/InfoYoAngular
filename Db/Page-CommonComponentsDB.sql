------------------------------------------------------
-- 			Common Page Components TABLEs
------------------------------------------------------
-- Componentes de la web de uso común. Estas tienen el mismo formato en toda la web


------------------------------------------------------
-- 			Logged Header TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LogHeader](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Icon] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_LogHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LogNavBarLinks](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_LogNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LogDropDownMenuLinks](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_LogDropDownMenuLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Footer Links Section Columns TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrLinksSectionCols](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_FtrLinksSectionCols] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrLinksSectionColsItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[ItemPath] [VARCHAR](MAX) NOT NULL,
	[FtrLinksSectionColsId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_FtrLinksSectionColsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [dbo].[FtrLinksSectionColsItems]  WITH CHECK ADD  CONSTRAINT [FK_FtrLinksSectionColsItems_FtrLinksSectionCols] FOREIGN KEY([FtrLinksSectionColsId])
REFERENCES [dbo].[FtrLinksSectionCols] ([Id])
GO

ALTER TABLE [dbo].[FtrLinksSectionColsItems] CHECK CONSTRAINT [FK_FtrLinksSectionColsItems_FtrLinksSectionCols]
GO


-- Index
CREATE NONCLUSTERED INDEX IX_FtrLinksSectionColsItems_FtrLinksSectionColsId
ON dbo.FtrLinksSectionColsItems(FtrLinksSectionColsId);


------------------------------------------------------
-- 			Footer Social Media Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrSocialMediaSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_FtrSocialMediaSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Social Media Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrSocialMediaSectItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[IconItem] [VARCHAR](500) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_FtrSocialMediaSectItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer App Dowload Link Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrAppDowloadLinkItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_FtrAppDowloadLinkItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrPartnersSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[CopyrightText] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_FtrPartnersSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FtrPartnersSectItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_FtrPartnersSectItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
