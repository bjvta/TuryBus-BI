CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT [customer_id]
		  ,[name]
		  ,[last_name]
		  ,[address]
		  ,[dni]
		  ,[cellphone]
		  ,[birthdate]
	  FROM [tourist].[customers]
	  WHERE [rowversion] > CONVERT(ROWVERSION,@startRow) 
	  AND [rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO