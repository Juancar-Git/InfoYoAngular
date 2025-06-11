------------------------------------------------------
-- 			Common Page Components TABLEs
------------------------------------------------------
-- Componentes de la web de uso común. Estas tienen el mismo formato en toda la web


------------------------------------------------------
-- 			Logged Header TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LoggedHeader](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Icon] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LoggedHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LoggedNavBarLinks](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LinkUrl] [varchar](300) NOT NULL,
 CONSTRAINT [PK_LoggedNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LoggedDropDownMenuLinks](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LinkUrl] [varchar](300) NOT NULL,
 CONSTRAINT [PK_LoggedDropDownMenuLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Footer Links Section Columns TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterLinksSectionColumns](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FooterLinksSectionColumns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Links Section Columns Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterLinksSectionColumnsItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[TitleHoverDescription] [varchar](100) NOT NULL,
	[ItemPath] [varchar](MAX) NOT NULL,
	[FooterLinksSectionColumnsId] [bigint] NOT NULL,
 CONSTRAINT [PK_FooterLinksSectionColumnsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FooterLinksSectionColumnsItems]  WITH CHECK ADD  CONSTRAINT [FK_FooterLinksSectionColumnsItems_FooterLinksSectionColumns] FOREIGN KEY([FooterLinksSectionColumnsId])
REFERENCES [dbo].[FooterLinksSectionColumns] ([Id])
GO

ALTER TABLE [dbo].[FooterLinksSectionColumnsItems] CHECK CONSTRAINT [FK_FooterLinksSectionColumnsItems_FooterLinksSectionColumns]
GO


------------------------------------------------------
-- 			Footer Social Media Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterSocialMediaSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FooterSocialMediaSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Social Media Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterSocialMediaSectionItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TitleHoverDescription] [varchar](100) NOT NULL,
	[IconItem] [varchar](500) NOT NULL,
	[ItemUrl] [varchar](MAX) NOT NULL,
 CONSTRAINT [PK_FooterSocialMediaSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer App Dowload Link Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterAppDowloadLinkItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[TitleHoverDescription] [varchar](100) NOT NULL,
	[ItemBackgroundImagePath] [varchar](500) NOT NULL,
	[ItemUrl] [varchar](MAX) NOT NULL,
 CONSTRAINT [PK_FooterAppDowloadLinkItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterPartnersSection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[CopyrightText] [varchar](100) NOT NULL,
 CONSTRAINT [PK_FooterPartnersSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Footer Partners Section Items TABLE
------------------------------------------------------
CREATE TABLE [dbo].[FooterPartnersSectionItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ItemUrl] [varchar](MAX) NOT NULL,
 CONSTRAINT [PK_FooterPartnersSectionItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
