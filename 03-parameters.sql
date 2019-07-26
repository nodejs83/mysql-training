USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS GETOFFICEBYCOUNTRY;

DELIMITER //

-- IN – is the default mode. When you define an IN parameter in a stored procedure
-- In addition, the value of an IN parameter is protected. It means that even the value 
-- of the IN parameter is changed inside the stored procedure, its original value is retained 
-- after the stored procedure ends. In other words, the stored procedure only works on the copy 
-- of the IN parameter

CREATE PROCEDURE GETOFFICEBYCOUNTRY(IN COUNTRYNAME VARCHAR(255))
  BEGIN
  
    SELECT * FROM OFFICES WHERE COUNTRY = COUNTRYNAME;
     
  END //
 

DELIMITER ;

CALL GETOFFICEBYCOUNTRY('USA');


DROP PROCEDURE IF EXISTS COUNTORDERBYSTATUS;

DELIMITER //

-- OUT – the value of an OUT parameter can be changed inside the stored procedure and its new 
-- value is passed back to the calling program. NOTICE THAT THE STORED PROCEDURE CANNOT ACCESS 
-- THE INITIAL VALUE OF THE OUT PARAMETER WHEN IT STARTS.

CREATE PROCEDURE COUNTORDERBYSTATUS(IN ORDERSTATUS VARCHAR(25), OUT TOTAL INT)           
  BEGIN
  
   SELECT COUNT(ORDERNUMBER) INTO TOTAL FROM ORDERS
   WHERE STATUS = ORDERSTATUS;
   
  END//

DELIMITER ;

-- To get the number of shipped orders, we call the CountOrderByStatus  stored procedure and pass 
-- the order status as Shipped, and also pass an argument ( @total ) to get the return value

CALL COUNTORDERBYSTATUS('SHIPPED',@TOTAL);
SELECT @TOTAL AS  TOTAL_SHIPPED;



-- INOUT – an INOUT  parameter is a combination of IN  and OUT  parameters. It means that the calling 
-- program may pass the argument, and the stored procedure can modify the INOUT parameter, and pass 
-- the new value back to the calling program.

DROP PROCEDURE IF EXISTS SET_COUNTER;

DELIMITER //

CREATE PROCEDURE SET_COUNTER(INOUT COUNT INT(4),IN INC INT(4))
  BEGIN
  
   SET COUNT = COUNT + INC;
   
  END//
  
DELIMITER ;

SET @COUNTER = 1;
CALL SET_COUNTER(@COUNTER,1); -- 2
CALL SET_COUNTER(@COUNTER,1); -- 3
CALL SET_COUNTER(@COUNTER,5); -- 8
SELECT @COUNTER; -- 8

