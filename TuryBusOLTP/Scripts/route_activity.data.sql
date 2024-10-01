PRINT 'Populating route_activity table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[route_activity] ON;  

INSERT INTO [tourist].[route_activity] (id, name, description, route_stop_id)
VALUES
(1, 'Golden Gate Bridge Visit', 'Experience the iconic bridge up close', 1),
(2, 'Hollywood Sign Hike', 'Hiking to the famous sign with stunning views', 2),
(3, 'Statue of Liberty Tour', 'Visit the symbol of freedom', 3),
(4, 'London Eye Ride', 'Enjoy panoramic views of the city', 4),
(5, 'Shibuya Crossing Experience', 'Witness the famous scramble crossing', 5);

SET IDENTITY_INSERT [tourist].[route_activity] OFF;
