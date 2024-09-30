CREATE TABLE [dbo].[revision]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[AutobusId] INT FOREIGN KEY REFERENCES Autobus(Id),
    [FechaRevision] DATE,
    [Diagnostico] NVARCHAR(500),
    [Costo] DECIMAL(10,2) -- Costo de la revisión
)
