CREATE TABLE [dbo].[actividad_turistica]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Nombre] NVARCHAR(100),
    [Descripcion] NVARCHAR(500),
    [Costo] DECIMAL(10,2) -- Costo de la actividad turística
)
