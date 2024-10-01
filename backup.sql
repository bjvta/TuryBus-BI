USE [master]
GO
/****** Object:  Database [TuryBusOLTP]    Script Date: 9/30/2024 11:36:14 PM ******/
CREATE DATABASE [TuryBusOLTP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TuryBusOLTP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TuryBusOLTP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TuryBusOLTP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TuryBusOLTP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TuryBusOLTP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TuryBusOLTP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TuryBusOLTP] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [TuryBusOLTP] SET ANSI_NULLS ON 
GO
ALTER DATABASE [TuryBusOLTP] SET ANSI_PADDING ON 
GO
ALTER DATABASE [TuryBusOLTP] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [TuryBusOLTP] SET ARITHABORT ON 
GO
ALTER DATABASE [TuryBusOLTP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TuryBusOLTP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [TuryBusOLTP] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [TuryBusOLTP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [TuryBusOLTP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TuryBusOLTP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TuryBusOLTP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET RECOVERY FULL 
GO
ALTER DATABASE [TuryBusOLTP] SET  MULTI_USER 
GO
ALTER DATABASE [TuryBusOLTP] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [TuryBusOLTP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TuryBusOLTP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TuryBusOLTP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TuryBusOLTP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TuryBusOLTP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TuryBusOLTP', N'ON'
GO
ALTER DATABASE [TuryBusOLTP] SET QUERY_STORE = OFF
GO
USE [TuryBusOLTP]
GO
/****** Object:  Schema [financial]    Script Date: 9/30/2024 11:36:15 PM ******/
CREATE SCHEMA [financial]
GO
/****** Object:  Schema [human_resource]    Script Date: 9/30/2024 11:36:15 PM ******/
CREATE SCHEMA [human_resource]
GO
/****** Object:  Schema [logistic]    Script Date: 9/30/2024 11:36:15 PM ******/
CREATE SCHEMA [logistic]
GO
/****** Object:  Schema [tourist]    Script Date: 9/30/2024 11:36:15 PM ******/
CREATE SCHEMA [tourist]
GO
/****** Object:  Table [financial].[booking]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [financial].[booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[booking_date] [datetime] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[currency] [varchar](255) NOT NULL,
	[payment_status] [varchar](255) NOT NULL,
	[special_request] [varchar](255) NOT NULL,
	[booking_status] [varchar](255) NOT NULL,
	[booking_number] [varchar](255) NOT NULL,
	[number_of_people] [int] NOT NULL,
	[daily_service_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_financial_booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [financial].[tourist_operation_cost]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [financial].[tourist_operation_cost](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cost_type] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[currency] [varchar](255) NOT NULL,
	[date_incurred] [datetime] NOT NULL,
	[supplier] [varchar](255) NOT NULL,
	[payment_method] [varchar](255) NOT NULL,
	[invoice_number] [varchar](255) NOT NULL,
	[notes] [varchar](255) NOT NULL,
	[payment_status] [varchar](255) NOT NULL,
	[daily_service_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_tourist_operation_cost] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [human_resource].[driver]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [human_resource].[driver](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[address] [varchar](255) NOT NULL,
	[dni] [varchar](255) NOT NULL,
	[license_number] [varchar](255) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_hhrr_driver] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [human_resource].[guide]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [human_resource].[guide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[website] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[languages] [varchar](255) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_hhrr_guide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [logistic].[bus]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logistic].[bus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](255) NOT NULL,
	[license_plate] [varchar](255) NOT NULL,
	[make] [varchar](255) NOT NULL,
	[year_of_manufacture] [int] NOT NULL,
	[capacity] [int] NOT NULL,
	[fuel_type] [varchar](255) NULL,
	[current_mileage] [decimal](10, 2) NULL,
	[status] [varchar](255) NULL,
	[gps_enabled] [bit] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_logistic_bus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [logistic].[bus_maintenance_detail]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logistic].[bus_maintenance_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[task_description] [varchar](255) NOT NULL,
	[part_replaced] [varchar](255) NOT NULL,
	[labor_hours] [decimal](10, 2) NOT NULL,
	[part_cost] [decimal](10, 2) NOT NULL,
	[task_cost] [decimal](10, 2) NOT NULL,
	[bus_maintenance_header_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_logistic_bus_maintenance_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [logistic].[bus_maintenance_header]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logistic].[bus_maintenance_header](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[maintenance_date] [date] NOT NULL,
	[maintenance_type] [varchar](255) NOT NULL,
	[cost] [decimal](10, 2) NOT NULL,
	[next_scheduled_maintenance] [date] NOT NULL,
	[mileage_at_maintenance] [decimal](10, 2) NOT NULL,
	[repair_warrany] [bit] NULL,
	[repair_duration] [time](7) NULL,
	[bus_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_logistic_bus_maintenance_header] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [logistic].[extra_bus]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logistic].[extra_bus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[field] [varchar](255) NOT NULL,
	[value] [varchar](255) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	[bus_id] [int] NOT NULL,
 CONSTRAINT [pk_logistic_extra_bus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[customer]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[address] [varchar](255) NOT NULL,
	[dni] [varchar](255) NOT NULL,
	[cellphone] [varchar](255) NULL,
	[birthdate] [date] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[daily_service]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[daily_service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[seasonality] [varchar](255) NOT NULL,
	[max_group_size] [int] NOT NULL,
	[min_group_size] [int] NOT NULL,
	[children] [bit] NULL,
	[service_type] [varchar](255) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[tourist_route_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_daily_service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[extra_service]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[extra_service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[daily_service_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_extra_service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[location]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lat] [decimal](9, 6) NULL,
	[lng] [decimal](9, 6) NULL,
	[place] [varchar](255) NOT NULL,
	[description] [varchar](255) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[route_activity]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[route_activity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[route_stop_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_route_activities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[route_stop]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[route_stop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stop_name] [varchar](255) NOT NULL,
	[stop_description] [varchar](255) NOT NULL,
	[distance_km] [decimal](10, 2) NOT NULL,
	[duration_hours] [decimal](10, 2) NOT NULL,
	[estimated_arrival_time] [datetime] NOT NULL,
	[location_id] [int] NULL,
	[tourist_route_id] [int] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_route_stop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[tourist_guide]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[tourist_guide](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tourist_route_id] [int] NOT NULL,
	[guide_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_tourist_guide] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [tourist].[tourist_route]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[tourist_route](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[route_name] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[distance_km] [decimal](10, 2) NOT NULL,
	[duration_hours] [decimal](10, 2) NOT NULL,
	[difficulty_level] [varchar](255) NOT NULL,
	[transport_mode] [varchar](255) NOT NULL,
	[available_guides] [bit] NULL,
	[languages_available] [text] NULL,
	[route_type] [varchar](255) NULL,
	[origin_id] [int] NULL,
	[destination_id] [int] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_tourist_route] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [tourist].[tourist_route_transport]    Script Date: 9/30/2024 11:36:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tourist].[tourist_route_transport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[daily_service_id] [int] NOT NULL,
	[driver_id] [int] NOT NULL,
	[bus_id] [int] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_tourist_route_transport] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [financial].[booking]  WITH NOCHECK ADD  CONSTRAINT [FK_booking_customer_id] FOREIGN KEY([customer_id])
REFERENCES [tourist].[customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [financial].[booking] CHECK CONSTRAINT [FK_booking_customer_id]
GO
ALTER TABLE [financial].[booking]  WITH NOCHECK ADD  CONSTRAINT [FK_booking_daily_service_id] FOREIGN KEY([daily_service_id])
REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [financial].[booking] CHECK CONSTRAINT [FK_booking_daily_service_id]
GO
ALTER TABLE [financial].[tourist_operation_cost]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_operation_cost_daily_service_id] FOREIGN KEY([daily_service_id])
REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [financial].[tourist_operation_cost] CHECK CONSTRAINT [FK_tourist_operation_cost_daily_service_id]
GO
ALTER TABLE [logistic].[bus_maintenance_detail]  WITH NOCHECK ADD  CONSTRAINT [FK_logistic_bus_maintenance_detail] FOREIGN KEY([bus_maintenance_header_id])
REFERENCES [logistic].[bus_maintenance_header] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [logistic].[bus_maintenance_detail] CHECK CONSTRAINT [FK_logistic_bus_maintenance_detail]
GO
ALTER TABLE [logistic].[bus_maintenance_header]  WITH NOCHECK ADD  CONSTRAINT [FK_logistic_bus_maintenance_header] FOREIGN KEY([bus_id])
REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [logistic].[bus_maintenance_header] CHECK CONSTRAINT [FK_logistic_bus_maintenance_header]
GO
ALTER TABLE [logistic].[extra_bus]  WITH NOCHECK ADD  CONSTRAINT [FK_extra_bus_bus] FOREIGN KEY([bus_id])
REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [logistic].[extra_bus] CHECK CONSTRAINT [FK_extra_bus_bus]
GO
ALTER TABLE [tourist].[daily_service]  WITH NOCHECK ADD  CONSTRAINT [FK_daily_service_tourist_route_id] FOREIGN KEY([tourist_route_id])
REFERENCES [tourist].[tourist_route] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[daily_service] CHECK CONSTRAINT [FK_daily_service_tourist_route_id]
GO
ALTER TABLE [tourist].[extra_service]  WITH NOCHECK ADD  CONSTRAINT [FK_extra_service_tourist_route_id] FOREIGN KEY([daily_service_id])
REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[extra_service] CHECK CONSTRAINT [FK_extra_service_tourist_route_id]
GO
ALTER TABLE [tourist].[route_activity]  WITH NOCHECK ADD  CONSTRAINT [FK_route_activity_route_stop_id] FOREIGN KEY([route_stop_id])
REFERENCES [tourist].[route_stop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[route_activity] CHECK CONSTRAINT [FK_route_activity_route_stop_id]
GO
ALTER TABLE [tourist].[route_stop]  WITH CHECK ADD  CONSTRAINT [FK_route_stop_tourist_route_id] FOREIGN KEY([tourist_route_id])
REFERENCES [tourist].[tourist_route] ([id])
GO
ALTER TABLE [tourist].[route_stop] CHECK CONSTRAINT [FK_route_stop_tourist_route_id]
GO
ALTER TABLE [tourist].[route_stop]  WITH NOCHECK ADD  CONSTRAINT [FK_route_stop_tourist_route_location_id] FOREIGN KEY([location_id])
REFERENCES [tourist].[location] ([id])
GO
ALTER TABLE [tourist].[route_stop] CHECK CONSTRAINT [FK_route_stop_tourist_route_location_id]
GO
ALTER TABLE [tourist].[tourist_guide]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_guide_guide_id] FOREIGN KEY([guide_id])
REFERENCES [human_resource].[guide] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_guide] CHECK CONSTRAINT [FK_tourist_guide_guide_id]
GO
ALTER TABLE [tourist].[tourist_guide]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_guide_route_id] FOREIGN KEY([tourist_route_id])
REFERENCES [tourist].[tourist_route] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_guide] CHECK CONSTRAINT [FK_tourist_guide_route_id]
GO
ALTER TABLE [tourist].[tourist_route]  WITH CHECK ADD  CONSTRAINT [FK_tourist_route_location_destination] FOREIGN KEY([destination_id])
REFERENCES [tourist].[location] ([id])
GO
ALTER TABLE [tourist].[tourist_route] CHECK CONSTRAINT [FK_tourist_route_location_destination]
GO
ALTER TABLE [tourist].[tourist_route]  WITH CHECK ADD  CONSTRAINT [FK_tourist_route_location_origin] FOREIGN KEY([origin_id])
REFERENCES [tourist].[location] ([id])
GO
ALTER TABLE [tourist].[tourist_route] CHECK CONSTRAINT [FK_tourist_route_location_origin]
GO
ALTER TABLE [tourist].[tourist_route_transport]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_route_transport_bus_id] FOREIGN KEY([bus_id])
REFERENCES [logistic].[bus] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_route_transport] CHECK CONSTRAINT [FK_tourist_route_transport_bus_id]
GO
ALTER TABLE [tourist].[tourist_route_transport]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_route_transport_daily_service_id] FOREIGN KEY([daily_service_id])
REFERENCES [tourist].[daily_service] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_route_transport] CHECK CONSTRAINT [FK_tourist_route_transport_daily_service_id]
GO
ALTER TABLE [tourist].[tourist_route_transport]  WITH NOCHECK ADD  CONSTRAINT [FK_tourist_route_transport_driver_id] FOREIGN KEY([driver_id])
REFERENCES [human_resource].[driver] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [tourist].[tourist_route_transport] CHECK CONSTRAINT [FK_tourist_route_transport_driver_id]
GO
USE [master]
GO
ALTER DATABASE [TuryBusOLTP] SET  READ_WRITE 
GO
