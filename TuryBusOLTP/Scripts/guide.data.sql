PRINT 'Populating guide table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [human_resource].[guide] ON;  

INSERT INTO [human_resource].[guide] (id, name, last_name, website, description, languages)
VALUES
(1, 'Emma', 'White', 'emmawhite.com', 'Expert in local history', 'English, Spanish'),
(2, 'Liam', 'Green', 'liamgreen.com', 'Nature and wildlife specialist', 'English, French'),
(3, 'Olivia', 'Black', 'oliviablack.com', 'Cultural tours expert', 'English, Italian'),
(4, 'Noah', 'Blue', 'noahblue.com', 'Adventure tours guide', 'English, German'),
(5, 'Ava', 'Red', 'avared.com', 'Culinary tour specialist', 'English, Mandarin');

SET IDENTITY_INSERT [human_resource].[guide] OFF;
	