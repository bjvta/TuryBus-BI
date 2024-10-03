CREATE TABLE [staging].[customer]
(
	[customer_id] [int] NOT NULL,
    [name] VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    [address] VARCHAR(255),
    dni VARCHAR(255),
    cellphone VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL
)
