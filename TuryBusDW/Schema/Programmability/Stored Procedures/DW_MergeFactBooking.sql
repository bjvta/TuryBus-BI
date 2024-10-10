
CREATE PROCEDURE [dbo].[DW_MergeFactBooking]
AS
BEGIN
	UPDATE dc
	SET [date_id] = sc.[date_id]
      ,[customer_id] = sc.[customer_id]
      ,[booking_id] = sc.[booking_id]
      ,[booking_status] = sc.[booking_number]
      ,[payment_status] = sc.[payment_status_id]
      ,[daily_service_id] = sc.[daily_service_id]
      ,[price] = sc.[price]
      ,[currency] = sc.[currency]
      ,[special_request] = sc.[special_request]
      ,[booking_number] = sc.[booking_number]
      ,[number_of_people] = sc.[number_of_people]
	FROM [dbo].[FactBooking]	dc
	INNER JOIN [staging].[booking] sc ON (dc.[booking_id] = sc.[booking_id])
END
GO