USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Billete]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billete](
	[BilleteID] [int] IDENTITY(1,1) NOT NULL,
	[DNI_Pasajero] [varchar](10) NULL,
	[ServicioID] [int] NULL,
	[Fecha] [date] NULL,
	[HoraLlegadaPrevista] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[BilleteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Billete]  WITH CHECK ADD FOREIGN KEY([DNI_Pasajero])
REFERENCES [dbo].[Pasajero] ([DNI])
GO
ALTER TABLE [dbo].[Billete]  WITH CHECK ADD FOREIGN KEY([ServicioID])
REFERENCES [dbo].[ServicioDiario] ([ServicioID])
GO
