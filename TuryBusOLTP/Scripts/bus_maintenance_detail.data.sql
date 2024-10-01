PRINT 'Populating bus_maintenance_detail table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [logistic].[bus_maintenance_detail] ON;  

INSERT INTO [logistic].[bus_maintenance_detail] (task_description, part_replaced, labor_hours, part_cost, task_cost, bus_maintenance_header_id)
VALUES
('Oil Change', 'Oil Filter', 2.00, 50.00, 100.00, 1),
('Tire Rotation', 'Tires', 1.50, 200.00, 300.00, 1),
('Brake Inspection', 'Brake Pads', 1.00, 150.00, 150.00, 2),
('Engine Tune-up', 'Spark Plugs', 3.00, 75.00, 225.00, 3),
('Transmission Check', 'Fluid', 2.50, 60.00, 150.00, 4);

SET IDENTITY_INSERT [logistic].[bus_maintenance_detail] OFF;
