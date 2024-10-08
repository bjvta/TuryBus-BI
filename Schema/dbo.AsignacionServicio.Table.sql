USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[AsignacionServicio]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignacionServicio](
	[ServicioID] [int] NOT NULL,
	[DNI_Conductor] [varchar](10) NOT NULL,
	[MatriculaAutobus] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServicioID] ASC,
	[DNI_Conductor] ASC,
	[MatriculaAutobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsignacionServicio]  WITH CHECK ADD FOREIGN KEY([DNI_Conductor])
REFERENCES [dbo].[Conductor] ([DNI])
GO
ALTER TABLE [dbo].[AsignacionServicio]  WITH CHECK ADD FOREIGN KEY([MatriculaAutobus])
REFERENCES [dbo].[Autobus] ([Matricula])
GO
ALTER TABLE [dbo].[AsignacionServicio]  WITH CHECK ADD FOREIGN KEY([ServicioID])
REFERENCES [dbo].[ServicioDiario] ([ServicioID])
GO
