PRINT 'Populating tourist_guide table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[tourist_guide] ON;  

INSERT INTO [tourist].[tourist_guide] (tourist_route_id, guide_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

SET IDENTITY_INSERT [tourist].[tourist_guide] OFF;
