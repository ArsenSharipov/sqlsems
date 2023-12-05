DELIMITER //
CREATE FUNCTION num(n INT) RETURNS VARCHAR(200)
    DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(200) DEFAULT '';
    DECLARE a INT DEFAULT 1;
    WHILE a <= 10 DO
        IF a % 2 = 0 THEN
            SET result = CONCAT(result, a, ' ');
        END IF;
        SET a = a + 1;
    END WHILE;
    RETURN result;
END //
DELIMITER ;

SELECT num(10);