CREATE TABLE [dbo].[autobus]
(
	[Id] INT NOT NULL PRIMARY KEY,
	Matricula VARCHAR(10),
    Modelo NVARCHAR(50),
    Fabricante NVARCHAR(50),
    NumeroPlazas INT,
    CaracteristicasBasicas NVARCHAR(500)
)
