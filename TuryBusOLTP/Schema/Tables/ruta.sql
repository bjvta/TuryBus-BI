CREATE TABLE [dbo].[ruta]
(
	[Id] INT NOT NULL PRIMARY KEY,
    [Nombre] NVARCHAR(100),
    [Importe] DECIMAL(10,2), -- Costo al cliente
    [CostoTransporte] DECIMAL(10,2), -- Costo de operación de la ruta
    [Duracion] TIME
)
