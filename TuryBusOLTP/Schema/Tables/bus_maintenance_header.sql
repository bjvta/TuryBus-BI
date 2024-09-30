CREATE TABLE [logistic].[bus_maintenance_header]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_logistic_bus_maintenance_header PRIMARY KEY,
	[maintenance_date] DATE NOT NULL,
	[maintenance_type] VARCHAR(255)      NOT NULL,
	[cost] DECIMAL(10,2) NOT NULL,
	[next_scheduled_maintenance] DATE NOT NULL,
	[mileage_at_maintenance] DECIMAL(10,2) NOT NULL,
	[repair_warrany] BIT,
	[repair_duration] TIME,
	[bus_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [logistic].[bus_maintenance_header] ADD CONSTRAINT FK_logistic_bus_maintenance_header FOREIGN KEY([bus_id]) REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO