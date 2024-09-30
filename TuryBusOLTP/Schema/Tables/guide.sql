CREATE TABLE [human_resource].[guide]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_hhrr_guide PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[last_name] VARCHAR(255)      NOT NULL,
	[website] VARCHAR(255),
	[description] VARCHAR(255),
	[languages] VARCHAR(255),
	[rowversion] [timestamp]         NOT NULL
)