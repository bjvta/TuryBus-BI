PRINT 'Populating tourist_route_transport table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[tourist_route_transport] ON;  

INSERT INTO [tourist].[tourist_route_transport] (id, daily_service_id, driver_id, bus_id)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

SET IDENTITY_INSERT [tourist].[tourist_route_transport] OFF;
