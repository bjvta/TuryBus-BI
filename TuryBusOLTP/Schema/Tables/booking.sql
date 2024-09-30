CREATE TABLE [financial].[booking]
(
	[id] INT IDENTITY(1,1) NOT NULL CONSTRAINT pk_financial_booking PRIMARY KEY,
    [booking_date] DATETIME      NOT NULL,
    [price] DECIMAL(10,2)      NOT NULL,
    [currency] VARCHAR(255)      NOT NULL,
    [payment_status] VARCHAR(255)      NOT NULL,
    [special_request] VARCHAR(255)      NOT NULL,
    [booking_status] VARCHAR(255)      NOT NULL,
    [booking_number] VARCHAR(255)      NOT NULL,
    [number_of_people] INT NOT NULL,

    [daily_service_id] INT      NOT NULL,
    [customer_id] INT      NOT NULL,
	[rowversion] [timestamp]         NOT NULL
)
GO
ALTER TABLE [financial].[booking] ADD CONSTRAINT FK_booking_daily_service_id FOREIGN KEY([daily_service_id]) REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [financial].[booking] ADD CONSTRAINT FK_booking_customer_id FOREIGN KEY([customer_id]) REFERENCES [tourist].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
