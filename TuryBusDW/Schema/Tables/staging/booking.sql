CREATE TABLE [staging].[booking]
(
	booking_date_id INT NOT NULL,
    customer_id INT NOT NULL,
    daily_service_id INT NOT NULL,
    payment_status_id INT NOT NULL,
    number_of_people INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    currency VARCHAR(255) NOT NULL,
)
