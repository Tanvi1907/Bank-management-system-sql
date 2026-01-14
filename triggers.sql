-- Trigger to prevent negative balance
DELIMITER //
CREATE TRIGGER trg_after_withdraw
AFTER UPDATE ON accounts
FOR EACH ROW
BEGIN
    IF NEW.balance < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Balance cannot be negative!';
    END IF;
END //
DELIMITER ;

-- Trigger to log transaction automatically
DELIMITER //
CREATE TRIGGER trg_transaction_log
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    INSERT INTO audit_log(account_id, operation, amount, date)
    VALUES (NEW.account_id, NEW.type, NEW.amount, NOW());
END //
DELIMITER ;
