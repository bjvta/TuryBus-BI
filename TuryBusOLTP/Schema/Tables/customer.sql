CREATE TABLE [tourist].[customer]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_customer PRIMARY KEY,
	[name] VARCHAR(255)      NOT NULL,
	[last_name] VARCHAR(255)      NOT NULL,
    [address] VARCHAR(255)      NOT NULL,
    [dni] VARCHAR(255)      NOT NULL,
    [cellphone] VARCHAR(255),
    [birthdate] DATE,
	[rowversion] [timestamp]         NOT NULL
)