
CREATE PROCEDURE [dbo].[DW_MergeFactBooking]
AS
BEGIN
	UPDATE fb
	SET [date_id] = sb.[date_id]
      ,[customer_id] = sb.[customer_id]
      ,[booking_id] = sb.[booking_id]
      ,[booking_status] = sb.[booking_status]
      ,[payment_status] = sb.[payment_status]
      ,[daily_service_id] = sb.[daily_service_id]
      ,[price] = sb.[price]
      ,[currency] = sb.[currency]
      ,[special_request] = sb.[special_request]
      ,[booking_number] = sb.[booking_number]
      ,[number_of_people] = sb.[number_of_people]
	FROM [dbo].[FactBooking]	fb
	INNER JOIN [staging].[booking] sb ON (fb.[booking_id] = sb.[booking_id])
END
GO