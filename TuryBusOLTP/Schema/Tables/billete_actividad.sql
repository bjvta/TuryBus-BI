CREATE TABLE [dbo].[billete_actividad]
(
	BilleteID INT FOREIGN KEY REFERENCES Billete(Id),
    ActividadID INT FOREIGN KEY REFERENCES actividad_turistica(Id),
    PRIMARY KEY (BilleteID, ActividadID)
)
