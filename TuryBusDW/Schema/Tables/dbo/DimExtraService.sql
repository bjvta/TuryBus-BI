CREATE TABLE [dbo].[DimExtraService]
(
	[extra_service_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimExtraService PRIMARY KEY,
	[extra_service_id] [int] NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255)
)
