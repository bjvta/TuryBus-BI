CREATE TABLE [tourist].[tourist_guide]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_tourist_guide PRIMARY KEY,
	[tourist_route_id] INT NOT NULL,
	[guide_id] INT NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [tourist].[tourist_guide] ADD CONSTRAINT FK_tourist_guide_route_id FOREIGN KEY([tourist_route_id]) REFERENCES [tourist].[tourist_route] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_guide] ADD CONSTRAINT FK_tourist_guide_guide_id FOREIGN KEY([guide_id]) REFERENCES [human_resource].[guide] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO