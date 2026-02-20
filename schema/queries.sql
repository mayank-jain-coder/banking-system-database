INSERT INTO transactions(account_id, transaction_type, amount) VALUES
(1,'Deposit',500.00);
UPDATE accounts 
SET 
    balance = balance + 500
WHERE
    account_id = 1;

INSERT INTO transactions (account_id, transaction_type, amount) VALUES
(2,'Withdrawal',500.00);
UPDATE accounts 
SET 
    balance = balance - 500
WHERE
    account_id = 2;
    
INSERT INTO transactions (account_id, transaction_type, amount) VALUES
(1,'Transfer',500.00);
UPDATE accounts 
SET 
    balance = CASE
        WHEN account_id = 2 THEN balance + 500
        WHEN account_id = 1 THEN balance - 500
    END
WHERE
    account_id IN (1 , 2);
 
INSERT INTO transactions(account_id, transaction_type, amount) VALUES
(1,'Deposit',5000.00);

INSERT INTO loans(customer_id, loan_amount, interest_rate, start_date, end_date) VALUES
(1,5000.00,3.00,NOW(),'2027-02-10 23:59:59');
UPDATE accounts 
SET 
    balance = balance + 5000
WHERE
    account_id = 1;
    
SELECT 
    *
FROM
    accounts;    
DROP DATABASE banking;