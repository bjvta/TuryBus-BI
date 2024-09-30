CREATE TABLE [tourist].[tourist_route_transport]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_route_transport PRIMARY KEY,
    [daily_service_id] INT NOT NULL,
    [driver_id] INT NOT NULL,
    [bus_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[tourist_route_transport] ADD CONSTRAINT FK_tourist_route_transport_daily_service_id FOREIGN KEY([daily_service_id]) REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_route_transport] ADD CONSTRAINT FK_tourist_route_transport_driver_id FOREIGN KEY([driver_id]) REFERENCES [human_resource].[driver] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_route_transport] ADD CONSTRAINT FK_tourist_route_transport_bus_id FOREIGN KEY([bus_id]) REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO