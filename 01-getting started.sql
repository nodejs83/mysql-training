USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS GETALLPRODUCTS;


-- The first command is DELIMITER // , which is not related to the stored procedure syntax. 
-- The DELIMITER statement changes the standard delimiter which is a semicolon ( ; ) to another. 
-- In this case, the delimiter is changed from the semicolon( ; ) to double-slashes //. 
-- Why do we have to change the delimiter? Because we want to pass the stored procedure to 
-- the server as a whole rather than letting mysql tool interpret each statement at a time.  

DELIMITER //

CREATE PROCEDURE GETALLPRODUCTS()
  BEGIN
   SELECT *  FROM PRODUCTS;
   
  -- Following the END keyword, we use the delimiter //  to indicate the end of the stored procedure.  
  END //
 
-- The last command ( DELIMITER; ) changes the delimiter back to the semicolon (;) 
DELIMITER ;


-- To call a stored procedure, you use the following SQL command:
CALL GETALLPRODUCTS();