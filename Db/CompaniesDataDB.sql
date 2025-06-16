------------------------------------------------------
-- 			Companies Data TABLEs
------------------------------------------------------

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- Datos necesario para crear una empresa
-- Voy a recopilar datos necesarios para estó, en principio desarrollaré la web enfocada al usuario cliente.
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


------------------------------------------------------
-- 			Companies TABLE
------------------------------------------------------
CREATE TABLE [dbo].[Companies](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](150) NOT NULL,
	[RegisteredCompanyName] [varchar](300) NOT NULL,
	[UrlInternalCompany] [varchar](MAX) NOT NULL,
	[MiniIconImgPath] [varchar](500) NOT NULL,
	[MiniImgPath] [varchar](500) NOT NULL,
	[MiniText] [varchar](150) NOT NULL,
	[CompanyBackgroundImgPath] [varchar](50) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

------------------------------------------------------
-- 			CompanyJobOffers TABLE
------------------------------------------------------
CREATE TABLE [dbo].[CompanyJobOffers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](300) NOT NULL,
	[Description] [varchar](MAX) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_CompanyJobOffers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyJobOffers]  WITH CHECK ADD  CONSTRAINT [FK_CompanyJobOffers_Companies] FOREIGN KEY([generalPageId])
REFERENCES [dbo].[Companies] ([id])
GO

ALTER TABLE [dbo].[CompanyJobOffers] CHECK CONSTRAINT [FK_CompanyJobOffers_Companies]
GO
