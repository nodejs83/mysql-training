USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS DIVIDE;

DELIMITER //

-- The RESIGNAL  statement is similar to SIGNAL  statement in term of functionality and syntax, except that:
-- 
-- You must use the RESIGNAL  statement within an error or warning handler, otherwise, you will get an error 
-- message saying that “RESIGNAL when handler is not active”. Notice that you can use SIGNAL  statement anywhere 
-- inside a stored procedure.
-- 
-- You can omit all attributes of the RESIGNAL statement, even the SQLSTATE value.

-- The following stored procedure changes the error message before issuing it to the caller
 
CREATE PROCEDURE DIVIDE(IN NUMERATOR INT, IN DENOMINATOR INT, OUT RESULT DOUBLE)
BEGIN

 DECLARE DIVISION_BY_ZERO CONDITION FOR SQLSTATE '22012';
 
 DECLARE CONTINUE HANDLER FOR DIVISION_BY_ZERO 
 BEGIN
  RESIGNAL SET MESSAGE_TEXT = 'DIVISION BY ZERO / DENOMINATOR CANNOT BE ZERO';
 END;
 -- 
 IF DENOMINATOR = 0 THEN
  SIGNAL DIVISION_BY_ZERO;
 ELSE
  SET RESULT := NUMERATOR / DENOMINATOR;
 END IF;
END//

DELIMITER;

CALL DIVIDE(10,0,@RESULT);









