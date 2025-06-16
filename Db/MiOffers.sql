------------------------------------------------------
-- 			Offers Page TABLEs
------------------------------------------------------
-- Sección Mis Ofertas

------------------------------------------------------
-- 			Jobs Page No Filters TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MiOffersPage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[CandidacyTab] [varchar](100) NOT NULL,
	[EmptyCandidacyTitle] [varchar](100) NOT NULL,
	[EmptyCandidacyDesc] [varchar](100) NOT NULL,
	[EmptyCandidacyImg] [varchar](100) NOT NULL,
	[SavedTab] [varchar](100) NOT NULL,
	[EmptySavedTitle] [varchar](100) NOT NULL,
	[EmptySavedDesc] [varchar](100) NOT NULL,
	[EmptySavedImg] [varchar](100) NOT NULL,
	[MoreOptionsTitle] [varchar](100) NOT NULL,
	[NextBtn] [varchar](50) NOT NULL,
	[PreviousBtn] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MiOffersPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MoreOptionsItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Url] [varchar](100) NOT NULL,
 CONSTRAINT [PK_MoreOptionsItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO