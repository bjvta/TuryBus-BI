CREATE TABLE [tourist].[route_activity]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_route_activities PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[description] VARCHAR(255)      NOT NULL,
	[route_stop_id] INT      NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[route_activity] ADD CONSTRAINT FK_route_activity_route_stop_id FOREIGN KEY([route_stop_id]) REFERENCES [tourist].[route_stop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO