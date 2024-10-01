PRINT 'Populating tourist_operation_cost table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [financial].[tourist_operation_cost] ON;  

INSERT INTO [financial].[tourist_operation_cost] (id, cost_type, description, amount, currency, date_incurred, supplier, payment_method, invoice_number, notes, payment_status, daily_service_id)
VALUES
(1, 'Transport', 'Bus rental for tour', 500.00, 'USD', '2024-01-10', 'Bus Co.', 'Credit Card', 'INV001', 'N/A', 'Paid', 1),
(2, 'Accommodation', 'Hotel booking for guides', 800.00, 'USD', '2024-02-05', 'Hotel ABC', 'Bank Transfer', 'INV002', 'N/A', 'Paid', 2),
(3, 'Meals', 'Lunch for tourists', 300.00, 'EUR', '2024-03-15', 'Café XYZ', 'Cash', 'INV003', 'N/A', 'Pending', 3),
(4, 'Tickets', 'Entry fees for attractions', 400.00, 'GBP', '2024-04-20', 'Ticket Seller', 'Debit Card', 'INV004', 'N/A', 'Paid', 4),
(5, 'Fuel', 'Diesel for buses', 200.00, 'AUD', '2024-05-10', 'Fuel Station', 'Credit Card', 'INV005', 'N/A', 'Pending', 5);

SET IDENTITY_INSERT [financial].[tourist_operation_cost] OFF;
