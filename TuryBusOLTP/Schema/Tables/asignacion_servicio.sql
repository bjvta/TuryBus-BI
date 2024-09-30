CREATE TABLE [dbo].[asignacion_servicio]
(
	[ServicioID] INT FOREIGN KEY REFERENCES servicio_diario(ID),
    [DNI_Conductor] INT FOREIGN KEY REFERENCES Conductor(Id),
    [MatriculaAutobus] INT FOREIGN KEY REFERENCES Autobus(Id),
    PRIMARY KEY (ServicioID, DNI_Conductor, MatriculaAutobus)
)
