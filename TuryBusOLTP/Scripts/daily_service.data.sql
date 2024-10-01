PRINT 'Populating daily_service table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[daily_service] ON;  

INSERT INTO [tourist].[daily_service] (id, name, start_time, end_time, seasonality, max_group_size, min_group_size, children, service_type, price, tourist_route_id)
VALUES
(1, 'City Tour', '2024-01-10 09:00:00', '2024-01-10 17:00:00', 'Year-round', 20, 5, 1, 'Sightseeing', 100.00, 1),
(2, 'Nature Walk', '2024-02-15 08:00:00', '2024-02-15 15:00:00', 'Spring', 15, 3, 1, 'Adventure', 80.00, 2),
(3, 'Cultural Experience', '2024-03-20 10:00:00', '2024-03-20 16:00:00', 'Year-round', 25, 5, 1, 'Cultural', 120.00, 3),
(4, 'Beach Day', '2024-04-25 09:30:00', '2024-04-25 18:00:00', 'Summer', 30, 10, 1, 'Leisure', 90.00, 4),
(5, 'Culinary Tour', '2024-05-30 11:00:00', '2024-05-30 14:00:00', 'Year-round', 12, 2, 1, 'Food', 75.00, 5);

SET IDENTITY_INSERT [tourist].[daily_service] OFF;
