﻿CREATE TABLE [staging].[service]
(
	[service_sk] [int] NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    seasonality VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    max_group_size INT NOT NULL,
    min_group_size INT NOT NULL,
    children_allowed BIT NOT NULL,
    service_type VARCHAR(255) NOT NULL,
    route_name VARCHAR(255) NOT NULL,
    [description] VARCHAR(255) NOT NULL,
    distance_km DECIMAL(10,2) NOT NULL,
    duration_hours DECIMAL(10,2) NOT NULL,
    difficulty_level VARCHAR(255) NOT NULL,
    transport_mode VARCHAR(255) NOT NULL,
    available_guides BIT NOT NULL,
    languages_availables TEXT NOT NULL,
    route_type VARCHAR(255) NOT NULL,
    orig_lat DECIMAL(9,6) NOT NULL,
    orig_lng DECIMAL(9,6) NOT NULL,
    orig_place VARCHAR(255) NOT NULL,
    orig_description VARCHAR(255) NOT NULL,
    dest_lat DECIMAL(9,6) NOT NULL,
    dest_lng DECIMAL(9,6) NOT NULL,
    dest_place VARCHAR(255) NOT NULL,
    dest_description VARCHAR(255) NOT NULL
)
