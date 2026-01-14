-- High balance customers
CREATE VIEW high_balance_customers AS
SELECT c.customer_id, c.name, a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
WHERE a.balance > 100000;

-- Monthly transaction summary
CREATE VIEW monthly_transactions AS
SELECT account_id, MONTH(date) as month, YEAR(date) as year, SUM(amount) as total_amount
FROM transactions
GROUP BY account_id, YEAR(date), MONTH(date);
