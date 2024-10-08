USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Reparacion]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reparacion](
	[ReparacionID] [int] IDENTITY(1,1) NOT NULL,
	[RevisionID] [int] NULL,
	[CodigoReparacion] [nvarchar](50) NULL,
	[TiempoEmpleado] [int] NULL,
	[Comentario] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReparacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([RevisionID])
REFERENCES [dbo].[Revision] ([RevisionID])
GO
