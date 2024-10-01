PRINT 'Populating extra_bus table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [logistic].[extra_bus] ON;  

INSERT INTO [logistic].[extra_bus] (id, field, value, bus_id)
VALUES
(1, 'Color', 'Blue', 1),
(2, 'WiFi', 'Yes', 2),
(3, 'Air Conditioning', 'Yes', 3),
(4, 'Reclining Seats', 'Yes', 4),
(5, 'Entertainment System', 'Yes', 5);

SET IDENTITY_INSERT [logistic].[extra_bus] OFF;
