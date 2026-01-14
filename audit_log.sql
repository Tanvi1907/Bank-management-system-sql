CREATE TABLE audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    operation VARCHAR(50),
    amount DECIMAL(10,2),
    date DATETIME,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
