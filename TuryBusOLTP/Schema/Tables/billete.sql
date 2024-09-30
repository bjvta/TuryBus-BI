CREATE TABLE [dbo].[billete]
(
	[Id] INT NOT NULL PRIMARY KEY,
    [TuristaID] INT FOREIGN KEY REFERENCES turista(ID),
    [ServicioID] INT FOREIGN KEY REFERENCES servicio_diario(ID),
    [Fecha] DATE,
    [HoraLlegadaPrevista] TIME
)
