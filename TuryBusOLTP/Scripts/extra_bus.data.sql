PRINT 'Populating extra_bus table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [logistic].[extra_bus] ON;  

INSERT INTO [logistic].[extra_bus] (field, value, bus_id)
VALUES
('Color', 'Blue', 1),
('WiFi', 'Yes', 2),
('Air Conditioning', 'Yes', 3),
('Reclining Seats', 'Yes', 4),
('Entertainment System', 'Yes', 5);

SET IDENTITY_INSERT [logistic].[extra_bus] OFF;
