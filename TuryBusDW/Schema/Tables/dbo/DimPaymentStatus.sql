CREATE TABLE [dbo].[DimPaymentStatus]
(
	[payment_status_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimPaymentStatus PRIMARY KEY,
	[payment_status_id] [int] NOT NULL,
    payment_status VARCHAR(255) NOT NULL
)
