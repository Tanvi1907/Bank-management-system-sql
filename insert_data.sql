INSERT INTO Customers (name, email, phone, address)
VALUES ('Amit Sharma', 'amit@gmail.com', '9876543210', 'Delhi'),
('Sumit Sharma','sumit@gmail.com', '9658452850','Goa'),
  ('Ravi Roy', 'ravi@gmail.com', '9325863210','Pune'),
  ('Kavi Shah', 'kavi@gmail.com', '9652736520','Delhi');

INSERT INTO Accounts (customer_id, account_type, balance)
VALUES (1, 'Savings', 50000),
(2, 'Current', 60000),
(3, 'Savings', 20000),
(4, 'Current', 30000);
