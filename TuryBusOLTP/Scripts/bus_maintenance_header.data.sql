PRINT 'Populating bus_maintenance_header table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [logistic].[bus_maintenance_header] ON;  

INSERT INTO [logistic].[bus_maintenance_header] (maintenance_date, maintenance_type, cost, next_scheduled_maintenance, mileage_at_maintenance, repair_warrany, repair_duration, bus_id)
VALUES
('2024-01-12', 'Routine', 500.00, '2024-06-12', 50000.00, 1, 'PT1H30M', 1),
('2024-02-15', 'Safety', 300.00, '2024-07-15', 30000.00, 0, 'PT2H', 2),
('2024-03-18', 'Repair', 450.00, '2024-08-18', 40000.00, 0, 'PT3H', 3),
('2024-04-20', 'Routine', 600.00, '2024-09-20', 15000.00, 1, 'PT1H', 4),
('2024-05-22', 'Inspection', 200.00, '2024-10-22', 10000.00, 1, 'PT2H', 5);

SET IDENTITY_INSERT [logistic].[bus_maintenance_header] OFF;
