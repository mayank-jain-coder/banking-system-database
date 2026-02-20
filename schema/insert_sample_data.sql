INSERT INTO customers (name, email, phone, address) VALUES
('Alice', 'alice@example.com', '1234567890', '123 Main St'),
('Bob', 'bob@example.com', '9876543210', '456 Market St');

INSERT INTO accounts (customer_id, account_type, balance) VALUES
(1, 'Savings', 5000.00),
(2, 'Checking', 2000.00);
