CREATE TABLE [dbo].[DimCustomer]
(
    [customer_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT pk_customer_sk PRIMARY KEY,
	[customer_id] [int] NOT NULL,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    dni VARCHAR(255),
    cellphone VARCHAR(255),
    birthdate DATE
)
