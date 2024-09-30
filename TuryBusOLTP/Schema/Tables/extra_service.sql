CREATE TABLE [tourist].[extra_service]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_extra_service PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[description] VARCHAR(255)      NOT NULL,
    [daily_service_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[extra_service] ADD CONSTRAINT FK_extra_service_tourist_route_id FOREIGN KEY([daily_service_id]) REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO