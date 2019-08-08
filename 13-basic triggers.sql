USE CLASSICMODELS;

-- A SQL trigger is a set of  SQL statements stored in the database catalog. A SQL trigger is executed or fired whenever 
-- an event associated with a table occurs e.g.,  insert, update or delete.
-- 
-- SQL triggers provide an alternative way to check the integrity of data.
-- SQL triggers can catch errors in business logic in the database layer.
-- SQL triggers provide an alternative way to run scheduled tasks. By using SQL triggers, 
--   you don’t have to wait to run the scheduled tasks because the triggers are invoked 
--   automatically before or after a change is made to the data in the tables.
-- SQL triggers are very useful to audit the changes of data in tables.


-- There are some statements that use the INSERT statement behind the scenes such as REPLACE statement or 
-- LOAD DATA statement. 
-- If you use these statements, the corresponding triggers associated with the table are invoked.

-- You should name the triggers using the following naming convention:
-- 
-- (BEFORE | AFTER)_tableName_(INSERT| UPDATE | DELETE)
-- 
-- For example, before_order_update is a trigger invoked before a row in the order table is updated.


DROP TABLE IF EXISTS EMPLOYEES_AUDIT;

CREATE TABLE EMPLOYEES_AUDIT (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    EMPLOYEENUMBER INT NOT NULL,
    LASTNAME VARCHAR(50) NOT NULL,
    CHANGEDAT DATETIME DEFAULT NULL,
    ACTION VARCHAR(50) DEFAULT NULL
);


DROP TRIGGER IF EXISTS BEFORE_EMPLOYEE_UPDATE;

DELIMITER //
CREATE TRIGGER BEFORE_EMPLOYEE_UPDATE BEFORE UPDATE ON EMPLOYEES    
  FOR EACH ROW 
  BEGIN
  
      INSERT INTO EMPLOYEES_AUDIT
      SET ACTION = 'UPDATE',
       EMPLOYEENUMBER = OLD.EMPLOYEENUMBER,
          LASTNAME = OLD.LASTNAME,
          CHANGEDAT = NOW(); 
  END//

DELIMITER ;

-- OLD refers to the row before it is updated and NEW refers to the row after it is updated.

UPDATE EMPLOYEES 
SET 
    LASTNAME = 'PHAN'
WHERE
    EMPLOYEENUMBER = 1056;
    
   
SELECT 
    *
FROM
    EMPLOYEES_AUDIT;














