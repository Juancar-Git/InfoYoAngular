------------------------------------------------------
-- 			My CV Page TABLEs
------------------------------------------------------
-- 

------------------------------------------------------
-- 			My Cv Page TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MyCvPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[ExperienceTitle] [VARCHAR](100) NOT NULL,
	[AddBtn] [VARCHAR](50) NOT NULL,
	[EditBtn] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_MyCvPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			My Cv Sections TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MyCvSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[FilterKey] [VARCHAR](50) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[SubTitle] [VARCHAR](300),
	[Description] [VARCHAR](500),
	[AddEditBaseUrl] [VARCHAR](MAX),
	[DefaultTxt] [VARCHAR](150),
	[AddCardText] [VARCHAR](150),
	[AddCardBtn] [VARCHAR](100),
 CONSTRAINT [PK_MyCvSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_MyCvSect_FilterKey ON [dbo].[MyCvSect](FilterKey);

------------------------------------------------------
-- 			My Cv Section Options TABLE
------------------------------------------------------

CREATE TABLE [dbo].[MyCvSectOptions](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[MiCvSectionsId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_MyCvSectOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [dbo].[MyCvSectOptions]  WITH CHECK ADD  CONSTRAINT [FK_MyCvSectOptions_MyCvSect] FOREIGN KEY([MyCvSectId])
REFERENCES [dbo].[MyCvSect] ([Id])
GO

ALTER TABLE [dbo].[MyCvSectOptions] CHECK CONSTRAINT [FK_MyCvSectOptions_MyCvSect]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_MyCvSectOptions_MyCvSectId ON [dbo].[MyCvSectOptions](MyCvSectId);