CREATE TABLE [logistic].[bus]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_logistic_bus PRIMARY KEY,
	[model] VARCHAR(255)      NOT NULL,
	[license_plate] VARCHAR(255)      NOT NULL,
	[make] VARCHAR(255) NOT NULL,
    [year_of_manufacture] INT NOT NULL,
    [capacity] INT NOT NULL,
	[fuel_type] VARCHAR(255),
	[current_mileage] DECIMAL(10, 2),
    [status] VARCHAR(255),
    [gps_enabled] BIT,
	[rowversion] [timestamp]         NOT NULL
)