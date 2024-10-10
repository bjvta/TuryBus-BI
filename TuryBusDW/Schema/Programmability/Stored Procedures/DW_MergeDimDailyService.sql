CREATE PROCEDURE [dbo].[DW_MergeDimDailyService]
AS
BEGIN
	UPDATE dds
	SET [service_id]			= dds.[service_id]
		,[start_time]			= dds.[start_time]
		,[end_time]				= dds.[end_time]
		,[seasonality]			= dds.[seasonality]
		,[price]				= dds.[price]
		,[max_group_size]		= dds.[max_group_size]
		,[min_group_size]		= dds.[min_group_size]
		,[children_allowed]		= dds.[children_allowed]
		,[service_type]			= dds.[service_type]
		,[route_name]			= dds.[route_name]
		,[description]			= dds.[description]
		,[distance_km]			= dds.[distance_km]
		,[duration_hours]		= dds.[duration_hours]
		,[difficulty_level]		= dds.[difficulty_level]
		,[transport_mode]		= dds.[transport_mode]
		,[available_guides]		= dds.[available_guides]
		,[languages_availables]	= dds.[languages_availables]
		,[route_type]			= dds.[route_type]
		,[orig_lat]				= dds.[orig_lat]
		,[orig_lng]				= dds.[orig_lng]
		,[orig_place]			= dds.[orig_place]
		,[orig_description]		= dds.[orig_description]
		,[dest_lat]				= dds.[dest_lat]
		,[dest_lng]				= dds.[dest_lng]
		,[dest_place]			= dds.[dest_place]
		,[dest_description]		= dds.[dest_description]
	FROM [dbo].[DimDailyService]	dds
	INNER JOIN [staging].[service] sds ON (dds.[service_sk]=sds.[service_sk])
END
GO
