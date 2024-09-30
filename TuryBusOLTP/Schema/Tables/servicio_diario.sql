CREATE TABLE [dbo].[servicio_diario]
(
	[Id] INT NOT NULL PRIMARY KEY,
    [RutaID] INT FOREIGN KEY REFERENCES Ruta(ID),
    [HoraSalida] TIME,
    [DiasProgramados] NVARCHAR(50)
)
