CREATE TABLE [dbo].[FactBooking]
(
    date_id INT NOT NULL,
    customer_id INT NOT NULL,
    booking_id INT NOT NULL,
    booking_status INT NOT NULL,
    payment_status INT NOT NULL,
    daily_service_id INT NOT NULL,
    price DECIMAL(10, 2),
    currency VARCHAR(255),
    special_request VARCHAR(255),
    booking_number VARCHAR(255),
    number_of_people INTEGER NOT NULL
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_sk),
    FOREIGN KEY (daily_service_id) REFERENCES DimDailyService(service_sk),
    FOREIGN KEY (date_id) REFERENCES DimDate([DateKey])
)
