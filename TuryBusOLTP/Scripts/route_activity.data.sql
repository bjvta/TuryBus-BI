PRINT 'Populating route_activity table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[route_activity] ON;  

INSERT INTO [tourist].[route_activity] (name, description, route_stop_id)
VALUES
('Golden Gate Bridge Visit', 'Experience the iconic bridge up close', 1),
('Hollywood Sign Hike', 'Hiking to the famous sign with stunning views', 2),
('Statue of Liberty Tour', 'Visit the symbol of freedom', 3),
('London Eye Ride', 'Enjoy panoramic views of the city', 4),
('Shibuya Crossing Experience', 'Witness the famous scramble crossing', 5);

SET IDENTITY_INSERT [tourist].[route_activity] OFF;
