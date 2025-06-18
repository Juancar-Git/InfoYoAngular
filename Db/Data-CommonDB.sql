------------------------------------------------------
-- 			Publicity TABLE
------------------------------------------------------
CREATE TABLE [dbo].[PublicityData](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PublicityBgImgPath] [varchar](MAX) NOT NULL,
	[LinkUrl] [varchar](50) NOT NULL,
	-- Completar mas adelante
	-- Completar mas adelante
 CONSTRAINT [PK_PublicityData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
