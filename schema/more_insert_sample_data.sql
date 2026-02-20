-- Insert sample customers
INSERT INTO customers (name, email, phone, address) VALUES
('Alice', 'alice@example.com', '1234567890', '123 Main St'),
('Bob', 'bob@example.com', '9876543210', '456 Market St'),
('Charlie', 'charlie@example.com', '5555555555', '789 Park Ave');

-- Insert sample accounts
INSERT INTO accounts (customer_id, account_type, balance) VALUES
(1, 'Savings', 5000.00),
(2, 'Checking', 2000.00),
(3, 'Savings', 10000.00);

-- Insert sample transaction
INSERT INTO transactions (account_id, transaction_type, amount) VALUES
(1, 'Deposit', 1000.00),
(2, 'Withdrawal', 500.00),
(3, 'Deposit', 2000.00);

INSERT INTO loans (customer_id, loan_amount, interest_rate, start_date, end_date) VALUES
(1, 10000.00, 5.5, '2025-01-01', '2026-01-01'),
(2, 5000.00, 6.0, '2025-02-01', '2026-02-01');