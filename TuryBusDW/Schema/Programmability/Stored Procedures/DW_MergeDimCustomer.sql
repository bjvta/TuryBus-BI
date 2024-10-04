CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN

	UPDATE dc
	SET [name] = sc.[name]
	   ,[last_name]  = sc.[last_name]
	   ,[address]     = sc.[address]
	   ,[dni]     = sc.[dni]
	   ,[cellphone]    = sc.[cellphone]
	   ,[birthdate]      = sc.[birthdate]
	FROM [dbo].[DimCustomer]        dc
	INNER JOIN [staging].[customer] sc ON (dc.[customer_sk]=sc.[customer_sk])
END
GO