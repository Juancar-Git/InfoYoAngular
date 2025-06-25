------------------------------------------------------
-- 			Personal Data Page TABLEs
------------------------------------------------------
-- 

------------------------------------------------------
-- 			Personal Data Page TABLE
------------------------------------------------------

CREATE TABLE [dbo].[PersonalDataPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [VARCHAR](100) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[AboutMeTtl] [VARCHAR](100) NOT NULL,
	[Photo] [VARCHAR](100) NOT NULL,
	[PhotoBtn] [VARCHAR](100) NOT NULL,
	[Name] [VARCHAR](100) NOT NULL,
	[FirstSurName] [VARCHAR](100) NOT NULL,
	[SecondoSurName] [VARCHAR](100) NOT NULL,
	[DocType] [VARCHAR](100) NOT NULL,
	[DocNum] [VARCHAR](100) NOT NULL,
	[Gender] [VARCHAR](100) NOT NULL,
	[ResideceTtl] [VARCHAR](100) NOT NULL,
	[Country] [VARCHAR](100) NOT NULL,
	[PostCode] [VARCHAR](100) NOT NULL,
	[Province] [VARCHAR](100) NOT NULL,
	[Town] [VARCHAR](100) NOT NULL,
	[Address] [VARCHAR](100) NOT NULL,
	[AccessTtl] [VARCHAR](100) NOT NULL,
	[Email] [VARCHAR](100) NOT NULL,
	[ModEmailTxt] [VARCHAR](100) NOT NULL,
	[PhoneTtl] [VARCHAR](100) NOT NULL,
	[MovilPhone] [VARCHAR](100) NOT NULL,
	[LandlinePhone] [VARCHAR](100) NOT NULL,
	[ForeignPhone] [VARCHAR](100) NOT NULL,
	[Preferential] [VARCHAR](100) NOT NULL,
	[WebTtl] [VARCHAR](100) NOT NULL,
	[WebDescTxt] [VARCHAR](300) NOT NULL,
	[WebUrl] [VARCHAR](100) NOT NULL,
	[AddWeb] [VARCHAR](100) NOT NULL,
	[OptionalTxt] [VARCHAR](100) NOT NULL,
	[SaveBtn] [VARCHAR](100) NOT NULL,
	[CancelBtn] [VARCHAR](100) NOT NULL,
 CONSTRAINT [PK_PersonalDataPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


------------------------------------------------------
-- 			Personal Data Page TABLE
------------------------------------------------------

CREATE TABLE [dbo].[Genders](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Name] [VARCHAR](100) NOT NULL,
	[Active] [BIT] NOT NULL,
 CONSTRAINT [PK_PersonalDataPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO