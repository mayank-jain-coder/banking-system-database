CREATE DATABASE banking;
USE banking;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    account_type VARCHAR(20) CHECK (account_type IN ('Saving' , 'Checking')),
    balance DECIMAL(12 , 2 ) DEFAULT 0,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    transaction_type VARCHAR(20) CHECK (transaction_type IN ('Withdrawal' , 'Deposit', 'Transfer')),
    amount DECIMAL(12 , 2 ) NOT NULL,
    tansaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id)
        REFERENCES accounts (account_id)
);

CREATE TABLE loans (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    loan_amount DECIMAL(12 , 2 ) NOT NULL,
    interest_rate DECIMAL(5 , 2 ),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);