------------------------------------------------------
-- 			Company Page TABLEs
------------------------------------------------------
-- Sección Empleos. Hay dos formatos, con y sin filtros, el primero solo como logueado.

------------------------------------------------------
-- 			Jobs Page TABLE
------------------------------------------------------
CREATE TABLE [web].[WCompanyPage](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[HeadTitle] [VARCHAR](100) NOT NULL,
	[EmployeesText] [VARCHAR](100) NOT NULL,
	[OpinionsText] [VARCHAR](100) NOT NULL,
	[InfoTabTitle] [VARCHAR](100) NOT NULL,
	[InfoSectionTitle] [VARCHAR](100) NOT NULL,
	[InfoSeeMore] [VARCHAR](100) NOT NULL,
	[OffersTabTitle] [VARCHAR](100) NOT NULL,
	[OffersSectionTitle] [VARCHAR](100) NOT NULL,
	[NewLabel] [VARCHAR](50) NOT NULL,
	[PostAgainLabel] [VARCHAR](50) NOT NULL,
	[AgoTxt] [VARCHAR](50) NOT NULL,
	[NoDataSalaryTxt] [VARCHAR](50) NOT NULL,
	[OpinionsTabTitle] [VARCHAR](100) NOT NULL,
	[OpinionsSectionTitle] [VARCHAR](100) NOT NULL,
	[ComplaintBnt] [VARCHAR](50) NOT NULL,
	[PreviousBtn] [VARCHAR](50) NOT NULL,
	[NextBtn] [VARCHAR](50) NOT NULL,
 CONSTRAINT [PK_WCompanyPage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

