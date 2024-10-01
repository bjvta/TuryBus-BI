PRINT 'Populating tourist_route table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[tourist_route] ON;  

INSERT INTO [tourist].[tourist_route] (route_name, description, distance_km, duration_hours, difficulty_level, transport_mode, available_guides, languages_available, route_type, origin_id, destination_id)
VALUES
('San Francisco City Tour', 'Explore the highlights of San Francisco.', 15.0, 6, 'Easy', 'Bus', 1, 'English, Spanish', 'Sightseeing', 1, 2),
('Los Angeles Adventure', 'Experience the excitement of LA.', 20.0, 8, 'Moderate', 'Bus', 1, 'English', 'Adventure', 2, 3),
('New York Historical Tour', 'Discover the rich history of NYC.', 25.0, 5, 'Easy', 'Walking', 1, 'English, Spanish', 'Cultural', 3, 4),
('London Highlights', 'Visit the iconic sites of London.', 12.0, 4, 'Easy', 'Bus', 1, 'English', 'Sightseeing', 4, 5),
('Tokyo City Exploration', 'Dive into the vibrant culture of Tokyo.', 18.0, 7, 'Moderate', 'Subway', 1, 'Japanese, English', 'Cultural', 5, 6);

SET IDENTITY_INSERT [tourist].[tourist_route] OFF;
