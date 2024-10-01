/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:r .\clean.data.sql
:r .\location.data.sql
:r .\customer.data.sql
:r .\driver.data.sql
:r .\guide.data.sql
:r .\bus.data.sql
:r .\tourist_route.data.sql
:r .\daily_service.data.sql
:r .\route_stop.data.sql
:r .\route_activity.data.sql
:r .\tourist_guide.data.sql
:r .\booking.data.sql
:r .\extra_service.data.sql
:r .\bus_maintenance_header.data.sql
:r .\bus_maintenance_detail.data.sql
/*
:r .\extra_bus.data.sql
:r .\tourist_operation_cost.data.sql
:r .\tourist_route_transport.data.sql
*/