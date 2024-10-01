CREATE TABLE [tourist].[daily_service]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_daily_service PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[start_time] DATETIME      NOT NULL,
	[end_time] DATETIME      NOT NULL,
	[seasonality] VARCHAR(255)      NOT NULL,
	[max_group_size] INT      NOT NULL,
	[min_group_size] INT      NOT NULL,
	[children] BIT,
    [service_type] VARCHAR(255)      NOT NULL,
    [price] DECIMAL(10,2)      NOT NULL,
    [tourist_route_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[daily_service] ADD CONSTRAINT FK_daily_service_tourist_route_id FOREIGN KEY([tourist_route_id]) REFERENCES [tourist].[tourist_route] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO