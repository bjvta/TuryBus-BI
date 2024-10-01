﻿PRINT 'Populating location table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[location] ON;  

INSERT INTO [tourist].[location] (lat, lng, place, description)
VALUES
(37.7749, -122.4194, 'San Francisco', 'Famous for the Golden Gate Bridge.'),
(34.0522, -118.2437, 'Los Angeles', 'Known for Hollywood and beautiful beaches.'),
(40.7128, -74.0060, 'New York City', 'The city that never sleeps.'),
(51.5074, -0.1278, 'London', 'Rich in history and culture.'),
(35.6895, 139.6917, 'Tokyo', 'A bustling metropolis with traditional and modern attractions.');

SET IDENTITY_INSERT [tourist].[location] OFF;
