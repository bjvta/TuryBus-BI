CREATE PROCEDURE [dbo].[GetBookingChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT booking_id=b.id
		  ,daily_service_id=ds.id
		  ,date_id = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,b.[booking_date]))
						  + CASE 
								WHEN DATEPART(MONTH,b.[booking_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,b.[booking_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,b.[booking_date]))
							END
						  + CASE 
								WHEN DATEPART(DAY,b.[booking_date]) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,b.[booking_date]))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,b.[booking_date]))
							END))
		  ,b.[customer_id]
		  ,b.booking_status
		  ,b.payment_status
		  ,b.price
		  ,b.currency
		  ,special_request=ISNULL(b.special_request, 'No')
		  ,b.booking_number
		  ,b.number_of_people
	FROM [financial].[booking]            b
	INNER JOIN [tourist].[daily_service] ds ON (ds.id = b.daily_service_id)
	WHERE (b.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND b.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (ds.[rowversion] > CONVERT(ROWVERSION,@startRow) 
			AND ds.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO