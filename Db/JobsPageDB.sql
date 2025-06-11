------------------------------------------------------
-- 			Jobs Page TABLEs
------------------------------------------------------
-- Sección Empleos. Hay dos formatos, con y sin filtros, el primero solo como logueado.


------------------------------------------------------
-- 			Header TABLE
------------------------------------------------------
CREATE TABLE [dbo].[JobsPageWithFilters](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TitleSearchTextField] [varchar](50) NOT NULL,
	[PlaceholderSearchTextField] [varchar](100) NOT NULL,
	[TitleLocationField] [varchar](50) NOT NULL,
	[PlaceholderLocationField] [varchar](100) NOT NULL,
	[NonVariableOffersQuantityText] [varchar](50) NOT NULL,
	[OrderByOffersText] [varchar](50) NOT NULL,
	[OrderByOffersInfoText] [varchar](300) NOT NULL,
 CONSTRAINT [PK_JobsPageWithFilters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Logged NavBar Links TABLE
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
-- 			Logged NavBar Links TABLE
------------------------------------------------------
CREATE TABLE [dbo].[LoggedNavBarLinks](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LinkUrl] [varchar](300) NOT NULL,
 CONSTRAINT [PK_NonLoggedNavBarLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
