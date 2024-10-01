CREATE TABLE [dbo].[DimTouristRoute]
(
	[tourist_route_sk] [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_Dimtourist_route_sk PRIMARY KEY,
	[tourist_route_id] [int] NOT NULL,
    route_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    distance_km DECIMAL(10, 2),
    duration_hours DECIMAL(10, 2),
    difficulty_level VARCHAR(255),
    transport_mode VARCHAR(255)
)
