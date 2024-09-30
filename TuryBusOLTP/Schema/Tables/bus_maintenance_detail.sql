CREATE TABLE [logistic].[bus_maintenance_detail]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_logistic_bus_maintenance_detail PRIMARY KEY,
	[task_description] VARCHAR(255)      NOT NULL,
	[part_replaced] VARCHAR(255)      NOT NULL,
	[labor_hours] DECIMAL(10,2)      NOT NULL,
	[part_cost] DECIMAL(10,2)      NOT NULL,
	[task_cost] DECIMAL(10,2)      NOT NULL,
	[bus_maintenance_header_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [logistic].[bus_maintenance_detail] ADD CONSTRAINT FK_logistic_bus_maintenance_detail FOREIGN KEY([bus_maintenance_header_id]) REFERENCES [logistic].[bus_maintenance_header] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO