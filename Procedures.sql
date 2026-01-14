-- Deposit procedure
DELIMITER //
CREATE PROCEDURE sp_deposit(IN acc_id INT, IN amt DECIMAL(10,2))
BEGIN
    UPDATE accounts
    SET balance = balance + amt
    WHERE account_id = acc_id;
    
    INSERT INTO transactions(account_id, type, amount, date)
    VALUES (acc_id, 'Deposit', amt, NOW());
END //
DELIMITER ;

-- Withdraw procedure
DELIMITER //
CREATE PROCEDURE sp_withdraw(IN acc_id INT, IN amt DECIMAL(10,2))
BEGIN
    DECLARE curr_balance DECIMAL(10,2);

    SELECT balance INTO curr_balance FROM accounts WHERE account_id = acc_id;

    IF curr_balance >= amt THEN
        UPDATE accounts
        SET balance = balance - amt
        WHERE account_id = acc_id;
        
        INSERT INTO transactions(account_id, type, amount, date)
        VALUES (acc_id, 'Withdraw', amt, NOW());
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient balance!';
    END IF;
END //
DELIMITER ;

-- Transfer procedure
DELIMITER //
CREATE PROCEDURE sp_transfer(IN from_acc INT, IN to_acc INT, IN amt DECIMAL(10,2))
BEGIN
    CALL sp_withdraw(from_acc, amt);
    CALL sp_deposit(to_acc, amt);
END //
DELIMITER ;
