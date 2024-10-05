CREATE PROCEDURE [dbo].[GetDailyServiceChangesByRowVersion]
(
   @startRow BIGINT 
   ,@endRow  BIGINT 
)
AS
BEGIN
	SELECT service_id=dse.id
			,dse.start_time
			,dse.end_time
			,dse.seasonality
			,price_per_person=dse.price
			,dse.max_group_size
			,dse.min_group_size
			,dse.children
			,dse.service_type
			,tro.route_name
			,tro.description
			,tro.distance_km
			,tro.duration_hours
			,tro.difficulty_level
			,tro.transport_mode
			,tro.available_guides
			,tro.languages_available
			,tro.route_type
			,orig_lat=los.lat
			,orig_lng=los.lng
			,orig_place=los.place
			,orig_description=los.description
			,dest_lat=loe.lat
			,dest_lng=loe.lng
			,dest_place=loe.place
			,des_description=loe.description
	FROM [tourist].[daily_service]	dse
	INNER JOIN [tourist].[tourist_route]	tro ON (dse.tourist_route_id = tro.id)
	LEFT JOIN [tourist].[location]			los ON (tro.origin_id = los.id)
	LEFT JOIN [tourist].[location]			loe ON (tro.destination_id = loe.id)
	WHERE (dse.[rowversion] > CONVERT(ROWVERSION,@startRow) 
		AND dse.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (tro.[rowversion] > CONVERT(ROWVERSION,@startRow)
		AND tro.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (los.[rowversion] > CONVERT(ROWVERSION,@startRow)
		AND los.[rowversion] <= CONVERT(ROWVERSION,@endRow))
	OR (loe.[rowversion] > CONVERT(ROWVERSION,@startRow)
		AND loe.[rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
