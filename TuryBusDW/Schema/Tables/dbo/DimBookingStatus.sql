CREATE TABLE [dbo].[DimBookingStatus]
(
	[booking_status_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT pk_booking_status_sk PRIMARY KEY,
	[booking_status_id] INT NOT NULL,
	booking_status VARCHAR(255) NOT NULL
)
