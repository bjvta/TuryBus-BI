USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Conductor]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conductor](
	[DNI] [varchar](10) NOT NULL,
	[ApellidosNombre] [nvarchar](100) NULL,
	[Telefono] [nvarchar](15) NULL,
	[Direccion] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
