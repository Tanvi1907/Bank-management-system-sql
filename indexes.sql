CREATE INDEX idx_account_id ON transactions(account_id);
CREATE INDEX idx_customer_id ON accounts(customer_id);
CREATE INDEX idx_transaction_date ON transactions(date);
