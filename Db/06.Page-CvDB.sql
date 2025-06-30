------------------------------------------------------
-- 			My CV Page TABLEs
------------------------------------------------------
-- 

------------------------------------------------------
-- 			My Cv Page TABLE
------------------------------------------------------

CREATE TABLE [web].[WMyCvPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[ExperienceTitle] [VARCHAR](100) NOT NULL,
	[AddBtn] [VARCHAR](50) NOT NULL,
	[EditBtn] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WMyCvPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			My Cv Sections TABLE
------------------------------------------------------

CREATE TABLE [web].[WMyCvSect](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[FilterKey] [VARCHAR](50) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[SubTitle] [VARCHAR](300),
	[Description] [VARCHAR](500),
	[AddEditBaseUrl] [VARCHAR](MAX),
	[DefaultTxt] [VARCHAR](150),
	[AddCardText] [VARCHAR](150),
	[AddCardBtn] [VARCHAR](100),
 CONSTRAINT [PK_WMyCvSect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_WMyCvSect_FilterKey ON [web].[WMyCvSect](FilterKey);

------------------------------------------------------
-- 			My Cv Section Options TABLE
------------------------------------------------------

CREATE TABLE [web].[WMyCvSectOption](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[Title] [VARCHAR](100) NOT NULL,
	[WMyCvSectId] [BIGINT] NOT NULL,
 CONSTRAINT [PK_WMyCvSectOption] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Foreign Keys
ALTER TABLE [web].[WMyCvSectOption]  WITH CHECK ADD  CONSTRAINT [FK_WMyCvSectOption_WMyCvSect] FOREIGN KEY([WMyCvSectId])
REFERENCES [web].[WMyCvSect] ([Id])
GO

ALTER TABLE [web].[WMyCvSectOption] CHECK CONSTRAINT [FK_WMyCvSectOption_WMyCvSect]
GO


-- Index 
CREATE NONCLUSTERED INDEX IX_MyCvSectOption_MyCvSectId ON [web].[WMyCvSectOption](WMyCvSectId);