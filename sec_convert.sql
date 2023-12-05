DELIMITER //
CREATE FUNCTION sec_convert(seconds INT) RETURNS VARCHAR(200)
    DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
	SET days = seconds/86400;
    SET seconds = seconds%86400;
    SET hours = seconds/3600;
    SET seconds = seconds%3600;
    SET minutes = seconds/60;
    SET seconds = seconds/60;
    RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds')	;
END //
DELIMITER ;

SELECT sec_convert(123456);