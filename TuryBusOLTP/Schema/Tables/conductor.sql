CREATE TABLE [dbo].[conductor]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[DNI] VARCHAR(10) PRIMARY KEY,
    [ApellidosNombre] NVARCHAR(100),
    [Telefono] NVARCHAR(15),
    [Direccion] NVARCHAR(200)
)
