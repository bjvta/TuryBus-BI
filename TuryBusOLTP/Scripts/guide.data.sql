PRINT 'Populating guide table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [human_resource].[guide] ON;  

INSERT INTO [human_resource].[guide] (name, last_name, website, description, languages)
VALUES
('Emma', 'White', 'emmawhite.com', 'Expert in local history', 'English, Spanish'),
('Liam', 'Green', 'liamgreen.com', 'Nature and wildlife specialist', 'English, French'),
('Olivia', 'Black', 'oliviablack.com', 'Cultural tours expert', 'English, Italian'),
('Noah', 'Blue', 'noahblue.com', 'Adventure tours guide', 'English, German'),
('Ava', 'Red', 'avared.com', 'Culinary tour specialist', 'English, Mandarin');

SET IDENTITY_INSERT [human_resource].[guide] OFF;
	