CREATE TABLE [tourist].[location]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_location PRIMARY KEY,
	[lat] DECIMAL(9,6),
	[lng] DECIMAL(9,6),
	[place] VARCHAR(255)      NOT NULL,
	[description] VARCHAR(255),
	[rowversion] [timestamp]         NOT NULL
)