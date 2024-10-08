USE [TuryBusOLTP]
GO
/****** Object:  Table [dbo].[Revision]    Script Date: 9/28/2024 3:31:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Revision](
	[RevisionID] [int] IDENTITY(1,1) NOT NULL,
	[MatriculaAutobus] [varchar](10) NULL,
	[FechaRevision] [date] NULL,
	[Diagnostico] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[RevisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Revision]  WITH CHECK ADD FOREIGN KEY([MatriculaAutobus])
REFERENCES [dbo].[Autobus] ([Matricula])
GO
