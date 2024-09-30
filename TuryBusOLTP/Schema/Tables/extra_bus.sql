CREATE TABLE [logistic].[extra_bus]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_logistic_extra_bus PRIMARY KEY,
	[field] VARCHAR(255)      NOT NULL,
	[value] VARCHAR(255)      NOT NULL,
	[rowversion] [timestamp]         NOT NULL,
    [bus_id] INT NOT NULL

)
GO
ALTER TABLE [logistic].[extra_bus] ADD CONSTRAINT FK_extra_bus_bus FOREIGN KEY([bus_id]) REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO