------------------------------------------------------
-- 			Publicity TABLE
------------------------------------------------------
CREATE TABLE [org].[OPublicityData](
	[Id] [BIGINT] IDENTITY(1,1) NOT NULL,
	[PublicityBgImgPath] [VARCHAR](MAX) NOT NULL,
	[LinkUrl] [VARCHAR](50) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_OPublicityData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
