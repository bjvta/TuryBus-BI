CREATE TABLE [dbo].[ruta_lugar]
(
	[RutaID] INT FOREIGN KEY REFERENCES Ruta(ID),
    [LugarID] INT FOREIGN KEY REFERENCES Lugar(ID),
    [HoraPrevistaLlegada] TIME,
    [TiempoParada] INT NULL,
    PRIMARY KEY (RutaID, LugarID)
)
