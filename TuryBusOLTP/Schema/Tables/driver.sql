CREATE TABLE [human_resource].[driver]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_hhrr_driver PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[last_name] VARCHAR(255)      NOT NULL,
	[address] VARCHAR(255)      NOT NULL,
	[dni] VARCHAR(255)      NOT NULL,
	[license_number] VARCHAR(255)      NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)