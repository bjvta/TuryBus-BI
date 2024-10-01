PRINT 'Populating customer table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [tourist].[customer] ON;  

INSERT INTO [tourist].[customer] (name, last_name, address, dni, cellphone, birthdate)
VALUES
('Michael', 'Smith', '123 River Rd', '10101010', '555-1234', '1990-05-15'),
('Sophia', 'Johnson', '456 Lake Dr', '20202020', '555-5678', '1985-08-25'),
('James', 'Williams', '789 Hill St', '30303030', '555-8765', '1992-11-30'),
('Emma', 'Jones', '321 Forest Ave', '40404040', '555-4321', '1988-01-20'),
('Liam', 'Garcia', '654 Valley Blvd', '50505050', '555-9876', '1995-02-12');

SET IDENTITY_INSERT [tourist].[customer] OFF;
