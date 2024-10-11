CREATE TABLE [dbo].[FactBooking]
(
    date_id INT NOT NULL,
    customer_id INT NOT NULL,
    booking_id INT NOT NULL,
    booking_status VARCHAR(255) NOT NULL,
    payment_status VARCHAR(255) NOT NULL,
    daily_service_id INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    special_request VARCHAR(255),
    booking_number VARCHAR(255),
    number_of_people INTEGER NOT NULL
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_sk),
    FOREIGN KEY (daily_service_id) REFERENCES DimDailyService(service_sk),
    FOREIGN KEY (date_id) REFERENCES DimDate([DateKey])
)
