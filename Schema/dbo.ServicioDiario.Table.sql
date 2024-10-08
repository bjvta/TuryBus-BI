USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[ServicioDiario]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioDiario](
	[ServicioID] [int] IDENTITY(1,1) NOT NULL,
	[RutaID] [int] NULL,
	[HoraSalida] [time](7) NULL,
	[DiasProgramados] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServicioDiario]  WITH CHECK ADD FOREIGN KEY([RutaID])
REFERENCES [dbo].[Ruta] ([RutaID])
GO
