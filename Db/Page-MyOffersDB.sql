------------------------------------------------------
-- 			Offers Page TABLEs
------------------------------------------------------
-- Sección Mis Ofertas

------------------------------------------------------
-- 			My Offers Page TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MyOffersPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[HideBtn] [VARCHAR](50) NOT NULL,
	[CandidacyTab] [VARCHAR](100) NOT NULL,
	[EmptyCandidacyTitle] [VARCHAR](100) NOT NULL,
	[EmptyCandidacyDesc] [VARCHAR](100) NOT NULL,
	[EmptyCandidacyImg] [VARCHAR](100) NOT NULL,
	[SavedTab] [VARCHAR](100) NOT NULL,
	[EmptySavedTitle] [VARCHAR](100) NOT NULL,
	[EmptySavedDesc] [VARCHAR](100) NOT NULL,
	[EmptySavedImg] [VARCHAR](100) NOT NULL,
	[MoreOptionsTitle] [VARCHAR](100) NOT NULL,
	[NextBtn] [VARCHAR](50) NOT NULL,
	[PreviousBtn] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_MyOffersPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MoreOptionsItems](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[Url] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_MoreOptionsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO