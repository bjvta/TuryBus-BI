CREATE TABLE [tourist].[tourist_route]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_tourist_route PRIMARY KEY,
	[route_name] VARCHAR(255)      NOT NULL,
	[description] VARCHAR(255)      NOT NULL,
	[distance_km] DECIMAL(10,2) NOT NULL,
	[duration_hours] DECIMAL(10,2) NOT NULL,
	[difficulty_level] VARCHAR(255) NOT NULL,
	[transport_mode] VARCHAR(255) NOT NULL,
	[available_guides] BIT,
	[languages_available] TEXT,
	[route_type] VARCHAR(255),
	[origin_id] INT,
	[destination_id] INT,
	[rowversion] [timestamp]         NOT NULL
)
GO

ALTER TABLE [tourist].[tourist_route] ADD CONSTRAINT FK_tourist_route_location_origin FOREIGN KEY([origin_id]) REFERENCES [tourist].[location] ([id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO
ALTER TABLE [tourist].[tourist_route] ADD CONSTRAINT FK_tourist_route_location_destination FOREIGN KEY([destination_id]) REFERENCES [tourist].[location] ([id])
ON UPDATE NO ACTION
ON DELETE NO ACTION
GO