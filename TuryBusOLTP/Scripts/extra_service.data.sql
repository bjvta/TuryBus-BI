PRINT 'Populating extra_service table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[extra_service] ON;  

INSERT INTO [tourist].[extra_service] (id, name, description, daily_service_id)
VALUES
(1, 'Photography Package', 'Professional photoshoot during the tour', 1),
(2, 'Meal Upgrade', 'Gourmet meal option for lunch', 2),
(3, 'Souvenir Package', 'Includes local handicrafts', 3),
(4, 'Wine Tasting', 'Enjoy local wines during the experience', 4),
(5, 'Private Guide', 'One-on-one tour guide for personalized experience', 5);

SET IDENTITY_INSERT [tourist].[extra_service] OFF;
