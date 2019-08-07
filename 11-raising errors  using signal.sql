USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS ADDORDERITEM;

DELIMITER //

-- You use the SIGNAL statement to return an error or warning condition to the caller from a stored program e.g., stored procedure, stored function, 
-- trigger or event. The SIGNAL  statement provides you with control over which information for returning such as value and messageSQLSTATE

CREATE PROCEDURE ADDORDERITEM(IN ORDERNO INT,        
                              IN PRODUCTCODE VARCHAR(45),
                              IN QTY INT, 
                              IN PRICE DOUBLE, 
                              IN LINENO INT )
BEGIN
   DECLARE C INT;
   
   SELECT COUNT(ORDERNUMBER) INTO C
   FROM ORDERS 
   WHERE ORDERNUMBER = ORDERNO;
   
   -- CHECK IF ORDERNUMBER EXISTS
   IF(C != 1) THEN 
     SIGNAL SQLSTATE '45000'
     SET MESSAGE_TEXT = 'ORDER NO NOT FOUND IN ORDERS TABLE';
   END IF;
   
   -- MORE CODE BELOW
   -- ...
END//

DELIMITER;

-- Notice that 45000 is a generic SQLSTATE value that illustrates an unhandled user-defined exception.
-- 
-- If we call the stored procedure  AddOrderItem() and pass a nonexistent order number, we will get an error message.

CALL AddOrderItem(10,'S10_1678',1,95.7,1);










