PRINT 'Populating bus table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [logistic].[bus] ON;  

INSERT INTO [logistic].[bus] (id, model, license_plate, make, year_of_manufacture, capacity, fuel_type, current_mileage, status, gps_enabled)
VALUES
(1, 'Sprinter', 'ABC123', 'Mercedes', 2018, 20, 'Diesel', 50000.00, 'Active', 1),
(2, 'Transit', 'DEF456', 'Ford', 2020, 15, 'Petrol', 30000.00, 'Active', 0),
(3, 'Coach', 'GHI789', 'Volvo', 2019, 50, 'Diesel', 40000.00, 'Inactive', 1),
(4, 'Mini Bus', 'JKL012', 'Toyota', 2021, 12, 'Diesel', 15000.00, 'Active', 1),
(5, 'Luxury Coach', 'MNO345', 'Setra', 2022, 30, 'Diesel', 10000.00, 'Active', 1);

SET IDENTITY_INSERT [logistic].[bus] OFF;
