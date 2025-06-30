------------------------------------------------------
-- 			Common Page Components TABLEs
------------------------------------------------------
-- Componentes de la web de uso común. Estas tienen el mismo formato en toda la web


------------------------------------------------------
-- 			Logged Header TABLE
------------------------------------------------------
CREATE TABLE [web].[WLogHeader](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Icon] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WLogHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [web].[WLogNavBarLink](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_WLogNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [web].[LogDropDownMenuLink](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[LinkUrl] [VARCHAR](300) NOT NULL,
 CONSTRAINT [PK_WLogDropDownMenuLink] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Footer Links Section Columns TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrLinksSectionCol](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WFtrLinksSectionCol] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrLinksSectionColItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[ItemPath] [VARCHAR](MAX) NOT NULL,
	[WFtrLinksSectionColId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_WFtrLinksSectionColItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [web].[WFtrLinksSectionColItem]  WITH CHECK ADD  CONSTRAINT [FK_WFtrLinksSectionColItem_WFtrLinksSectionCol] FOREIGN KEY([WFtrLinksSectionColId])
REFERENCES [web].[WFtrLinksSectionCol] ([Id])
GO

ALTER TABLE [web].[WFtrLinksSectionColItem] CHECK CONSTRAINT [FK_WFtrLinksSectionColItem_WFtrLinksSectionCol]
GO


-- Index
CREATE NONCLUSTERED INDEX IX_WFtrLinksSectionColItem_WFtrLinksSectionColId
ON web.WFtrLinksSectionColItem(WFtrLinksSectionColId);


------------------------------------------------------
-- 			Footer Social Media Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrSocialMediaSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WFtrSocialMediaSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Social Media Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrSocialMediaSectItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[IconItem] [VARCHAR](500) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_WFtrSocialMediaSectItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer App Dowload Link Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrAppDowloadLinkItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[TitleHoverDesc] [VARCHAR](100) NOT NULL,
	[ItemBgImgPath] [VARCHAR](500) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_WFtrAppDowloadLinkItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrPartnersSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](50) NOT NULL,
	[CopyrightText] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_WFtrPartnersSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section Items TABLE
------------------------------------------------------
CREATE TABLE [web].[WFtrPartnersSectItem](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](50) NOT NULL,
	[ItemUrl] [VARCHAR](MAX) NOT NULL,
 CONSTRAINT [PK_WFtrPartnersSectItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
