CREATE TABLE [staging].[service]
(
	[service_id] [int] NOT NULL,
    service_name VARCHAR(255) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    seasonality VARCHAR(255),
    max_group_size INT,
    min_group_size INT,
    children_allowed BIT,
    service_type VARCHAR(255),
    price DECIMAL(10, 2)
)
