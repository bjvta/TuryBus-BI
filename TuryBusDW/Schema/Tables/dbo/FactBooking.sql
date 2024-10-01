CREATE TABLE [dbo].[FactBooking]
(
    booking_date_id INT NOT NULL,
    customer_id INT NOT NULL,
    daily_service_id INT NOT NULL,
    payment_status_id INT NOT NULL,
    number_of_people INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES DimCustomer(customer_sk),
    FOREIGN KEY (daily_service_id) REFERENCES DimService(service_sk),
    FOREIGN KEY (payment_status_id) REFERENCES DimPaymentStatus(payment_status_sk),
    FOREIGN KEY (booking_date_id) REFERENCES DimDate([DateKey])
)
