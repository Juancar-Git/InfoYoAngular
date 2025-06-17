------------------------------------------------------
-- 			Mi CV Page TABLEs
------------------------------------------------------
-- 

------------------------------------------------------
-- 			Mi Cv Page TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MiCvPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[ExperienceTitle] [VARCHAR](100) NOT NULL,
	[AddBtn] [VARCHAR](50) NOT NULL,
	[EditBtn] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_MiCvPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Mi Cv Sections TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MiCvSections](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[FilterKey] [VARCHAR](50) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[SubTitle] [VARCHAR](300),
	[Description] [VARCHAR](500),
	[AddEditBaseUrl] [VARCHAR](MAX),
	[DefaultTxt] [VARCHAR](150),
	[AddCardText] [VARCHAR](150),
	[AddCardBtn] [VARCHAR](100),
 CONSTRAINT [PK_MiCvSections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			Mi Cv Section Options TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MiCvSectionOptions](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[MiCvSectionsId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_MiCvSectionOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MiCvSectionOptions]  WITH CHECK ADD  CONSTRAINT [FK_MiCvSectionOptions_MiCvSections] FOREIGN KEY([MiCvSectionsId])
REFERENCES [dbo].[MiCvSections] ([Id])
GO

ALTER TABLE [dbo].[MiCvSectionOptions] CHECK CONSTRAINT [FK_MiCvSectionOptions_MiCvSections]
GO
