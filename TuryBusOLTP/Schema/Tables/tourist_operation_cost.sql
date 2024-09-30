CREATE TABLE [financial].[tourist_operation_cost]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_tourist_tourist_operation_cost PRIMARY KEY,
	[cost_type] VARCHAR(255)      NOT NULL,
	[description] VARCHAR(255)      NOT NULL,
    [amount] DECIMAL(10,2)      NOT NULL,
    [currency] VARCHAR(255)      NOT NULL,
    [date_incurred] DATETIME      NOT NULL,
    [supplier] VARCHAR(255)      NOT NULL,
    [payment_method] VARCHAR(255)      NOT NULL,
    [invoice_number] VARCHAR(255)      NOT NULL,
    [notes] VARCHAR(255)      NOT NULL,
    [payment_status] VARCHAR(255)      NOT NULL,
    [daily_service_id] INT      NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [financial].[tourist_operation_cost] ADD CONSTRAINT FK_tourist_operation_cost_daily_service_id FOREIGN KEY([daily_service_id]) REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO