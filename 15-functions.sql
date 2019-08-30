USE CLASSICMODELS;

-- A stored function is a special kind stored program that returns a single value. You use stored functions to 
-- encapsulate common formulas or business rules that are reusable among SQL statements or stored programs

DROP FUNCTION IF EXISTS CUSTOMERLEVEL;

DELIMITER //

-- When you create a function, by default is NOT DETERMINISTIC, which means that for each execution could the code will 
-- be executed again. In the other hand, DETERMINISTIC will check if the parameters are the same and if is that condition 
-- comes true, will return the same result as before without executing again the code
 
CREATE FUNCTION CUSTOMERLEVEL(P_CREDITLIMIT DOUBLE) RETURNS VARCHAR(10)
    DETERMINISTIC
BEGIN
    DECLARE LVL VARCHAR(10);
 
    IF P_CREDITLIMIT > 50000 THEN
        SET LVL = 'PLATINUM';
    ELSEIF (P_CREDITLIMIT <= 50000 AND P_CREDITLIMIT >= 10000) THEN
        SET LVL = 'GOLD';
    ELSEIF P_CREDITLIMIT < 10000 THEN
        SET LVL = 'SILVER';
    END IF;
 
 RETURN (LVL);
END//

DROP PROCEDURE IF EXISTS GETCUSTOMERLEVEL//

CREATE PROCEDURE GETCUSTOMERLEVEL(IN  P_CUSTOMERNUMBER INT(11),
                                  OUT P_CUSTOMERLEVEL  VARCHAR(10))
    
BEGIN
    DECLARE CREDITLIM DOUBLE;
 
    SELECT CREDITLIMIT INTO CREDITLIM
    FROM CUSTOMERS
    WHERE CUSTOMERNUMBER = P_CUSTOMERNUMBER;
 
    -- here we're using the CUSTOMERLEVEL function
    SELECT CUSTOMERLEVEL(CREDITLIM) 
    INTO P_CUSTOMERLEVEL;
END//

DELIMITER;

CALL GETCUSTOMERLEVEL(121, @P_CUSTOMERLEVEL);

SELECT @P_CUSTOMERLEVEL;


















