PRINT 'Populating booking table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [financial].[booking] ON;  

INSERT INTO [financial].[booking] (booking_date, price, currency, payment_status, special_request, booking_status, booking_number, number_of_people, daily_service_id, customer_id)
VALUES
('2024-01-15 10:00:00', 150.00, 'USD', 'Paid', 'Window seat', 'Confirmed', 'BKG001', 2, 1, 1),
('2024-02-20 14:30:00', 200.00, 'EUR', 'Pending', 'Vegetarian meal', 'Pending', 'BKG002', 3, 2, 2),
('2024-03-05 09:15:00', 120.00, 'GBP', 'Paid', 'Late check-in', 'Confirmed', 'BKG003', 1, 3, 3),
('2024-04-10 11:45:00', 250.00, 'USD', 'Paid', '', 'Cancelled', 'BKG004', 5, 4, 4),
('2024-05-25 15:00:00', 300.00, 'AUD', 'Pending', 'Extra pillows', 'Pending', 'BKG005', 4, 5, 5);

SET IDENTITY_INSERT [financial].[booking] OFF;


