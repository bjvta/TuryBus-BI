USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Autobus]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autobus](
	[Matricula] [varchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NULL,
	[Fabricante] [nvarchar](50) NULL,
	[NumeroPlazas] [int] NULL,
	[CaracteristicasBasicas] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
