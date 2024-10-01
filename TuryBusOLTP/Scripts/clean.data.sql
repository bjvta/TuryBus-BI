-- Step 1: Delete from route_stop first
DELETE FROM tourist.route_stop;
GO

-- Step 2: Delete from tourist_route_transport
DELETE FROM tourist.tourist_route_transport;
GO

-- Step 3: Now, delete from tourist_route
DELETE FROM tourist.tourist_route WHERE origin_id IS NOT NULL OR destination_id IS NOT NULL;
GO

-- Step 4: Continue with other deletions as needed
DELETE FROM tourist.extra_service;
GO

DELETE FROM tourist.tourist_guide;
GO

DELETE FROM tourist.route_activity;
GO

DELETE FROM tourist.daily_service;
GO

DELETE FROM tourist.location;
GO

-- Step 5: Now, delete from financial tables
DELETE FROM financial.tourist_operation_cost;
GO

DELETE FROM financial.booking;
GO

-- Step 6: Delete from logistic tables
DELETE FROM logistic.extra_bus;
GO

DELETE FROM logistic.bus_maintenance_detail;
GO

DELETE FROM logistic.bus_maintenance_header;
GO

DELETE FROM logistic.bus;
GO

-- Step 7: Delete from human resource tables
DELETE FROM human_resource.guide;
GO

DELETE FROM human_resource.driver;
GO

-- Step 8: Finally, delete from tourist customer table
DELETE FROM tourist.customer;
GO