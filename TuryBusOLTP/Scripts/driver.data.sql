PRINT 'Populating driver table';
SET NOCOUNT ON;

SET IDENTITY_INSERT [human_resource].[driver] ON;  

INSERT INTO [human_resource].[driver] (id, name, last_name, address, dni, license_number)
VALUES
(1, 'John', 'Doe', '123 Elm St', '12345678', 'DL123456'),
(2, 'Jane', 'Smith', '456 Oak St', '87654321', 'DL987654'),
(3, 'Alice', 'Johnson', '789 Pine St', '11223344', 'DL112233'),
(4, 'Bob', 'Brown', '321 Maple St', '44332211', 'DL443322'),
(5, 'Charlie', 'Davis', '654 Birch St', '55667788', 'DL556677');

SET IDENTITY_INSERT [human_resource].[driver] OFF;
	