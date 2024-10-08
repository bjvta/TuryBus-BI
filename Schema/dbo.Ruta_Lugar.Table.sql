USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Ruta_Lugar]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta_Lugar](
	[RutaID] [int] NOT NULL,
	[LugarID] [int] NOT NULL,
	[HoraPrevistaLlegada] [time](7) NULL,
	[TiempoParada] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RutaID] ASC,
	[LugarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ruta_Lugar]  WITH CHECK ADD FOREIGN KEY([LugarID])
REFERENCES [dbo].[Lugar] ([LugarID])
GO
ALTER TABLE [dbo].[Ruta_Lugar]  WITH CHECK ADD FOREIGN KEY([RutaID])
REFERENCES [dbo].[Ruta] ([RutaID])
GO
