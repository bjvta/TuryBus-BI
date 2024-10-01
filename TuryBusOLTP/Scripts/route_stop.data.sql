PRINT 'Populating route_stop table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[route_stop] ON;  

INSERT INTO [tourist].[route_stop] (id, stop_name, stop_description, distance_km, duration_hours, estimated_arrival_time, location_id, tourist_route_id)
VALUES
(1, 'Golden Gate Bridge', 'Iconic bridge in San Francisco', 5.0, 1.5, '2024-01-10 10:30:00', 1, 1),
(2, 'Hollywood Sign', 'Famous landmark in Los Angeles', 10.0, 2.0, '2024-02-15 11:00:00', 2, 2),
(3, 'Statue of Liberty', 'Historical symbol in New York', 12.0, 2.5, '2024-03-20 10:00:00', 3, 3),
(4, 'London Eye', 'Giant Ferris wheel on the South Bank', 4.0, 1.0, '2024-04-25 15:00:00', 4, 4),
(5, 'Shibuya Crossing', 'Famous busy intersection in Tokyo', 3.0, 1.0, '2024-05-30 14:00:00', 5, 5);

SET IDENTITY_INSERT [tourist].[route_stop] OFF;
