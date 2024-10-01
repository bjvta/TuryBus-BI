CREATE TABLE [tourist].[route_stop]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_route_stop PRIMARY KEY,
	[stop_name] VARCHAR(255)      NOT NULL,
	[stop_description] VARCHAR(255)      NOT NULL,
	[distance_km] DECIMAL(10,2) NOT NULL,
	[duration_hours] DECIMAL(10,2) NOT NULL,
	[estimated_arrival_time] DATETIME NOT NULL,
	[location_id] INT,
	[tourist_route_id] INT,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[route_stop] ADD CONSTRAINT FK_route_stop_tourist_route_location_id FOREIGN KEY([location_id]) REFERENCES [tourist].[location] ([id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [tourist].[route_stop] ADD CONSTRAINT FK_route_stop_tourist_route_id FOREIGN KEY([tourist_route_id]) REFERENCES [tourist].[tourist_route] ([id])
ON UPDATE NO ACTION	
ON DELETE NO ACTION
GO