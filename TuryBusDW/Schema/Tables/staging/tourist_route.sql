CREATE TABLE [staging].[tourist_route]
(
	[tourist_route_id] [int] NOT NULL,
    route_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    distance_km DECIMAL(10, 2),
    duration_hours DECIMAL(10, 2),
    difficulty_level VARCHAR(255),
    transport_mode VARCHAR(255)
)
