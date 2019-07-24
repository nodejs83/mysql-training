USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS BUILD_EMAIL_LIST;

DELIMITER //

-- MySQL cursor is read-only, non-scrollable and asensitive.
-- 
-- Read-only: you cannot update data in the underlying table through the cursor.
-- 
-- Non-scrollable: you can only fetch rows in the order determined by the SELECT statement. 
-- You cannot fetch rows in the reversed order. In addition, you cannot skip rows or jump to 
-- a specific row in the result set.
-- 
-- Asensitive: there are two kinds of cursors: asensitive cursor and insensitive cursor. 
-- An asensitive cursor points to the actual data, whereas an insensitive cursor uses a temporary copy 
-- of the data. An asensitive cursor performs faster than an insensitive cursor because it does not have 
-- to make a temporary copy of data. However, any change that made to the data from other connections will 
-- affect the data that is being used by an asensitive cursor, therefore, it is safer if you do not update 
-- the data that is being used by an asensitive cursor. MySQL cursor is asensitive.

CREATE PROCEDURE BUILD_EMAIL_LIST(INOUT EMAIL_LIST VARCHAR(4000), V_JOB_TITLE VARCHAR(50))
 BEGIN
   DECLARE V_FINISHED INTEGER DEFAULT 0;
   DECLARE V_EMAIL VARCHAR(100) DEFAULT "";
   
   -- DECLARE CURSOR FOR EMPLOYEE EMAIL
   DECLARE EMAIL_CURSOR CURSOR FOR 
      SELECT EMAIL FROM EMPLOYEES WHERE JOBTITLE like CONCAT('%', V_JOB_TITLE, '%');
      
--    When working with MySQL cursor, you must also declare a NOT FOUND handler to handle the situation 
--    when the cursor could not find any row. Because each time you call the FETCH statement, the cursor 
--    attempts to read the next row in the result set. When the cursor reaches the end of the result set, 
--    it will not be able to get the data, and a condition is raised. The handler is used to handle this condition.
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET V_FINISHED = 1;      

   OPEN EMAIL_CURSOR;
   
     GET_EMAIL: LOOP
     
       FETCH EMAIL_CURSOR INTO V_EMAIL;
       
       IF V_FINISHED = 1 THEN 
        LEAVE GET_EMAIL;
       END IF;
       
       -- BUILD EMAIL LIST
       SET EMAIL_LIST = CONCAT(V_EMAIL,";",EMAIL_LIST);
     
     END LOOP GET_EMAIL;
   
   CLOSE EMAIL_CURSOR;
 END//

DELIMITER ;


SET @EMAIL_LIST = "";
CALL BUILD_EMAIL_LIST(@EMAIL_LIST, 'sa');
SELECT @EMAIL_LIST;

