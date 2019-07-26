USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS DECLAREVARIABLES;

-- This is the syntax to declare a variable
-- DECLARE variable_name datatype(size) DEFAULT default_value;

-- A variable whose name begins with the @ sign is a session variable. 
-- It is available and accessible until the session ends.
SET @COUNTER = 'INITIAL VALUE';

DELIMITER //

CREATE PROCEDURE DECLAREVARIABLES()
  BEGIN
    -- Example:
    DECLARE total_products INT DEFAULT 0;
    
    -- It can be done this way too
    DECLARE x, y INT DEFAULT 0;
    
    
    -- Once you declared a variable, you can start using it. To assign a variable another value, 
    -- you use the SET statement, for example:
    SET total_products = 10;
    
    -- Besides the SET statement, you can use the SELECT INTO statement to assign the result of a query, 
    -- which returns a scalar value, to a variable. See the following example: 
    SELECT 
       COUNT(*) INTO total_products
    FROM 
       products;
    
    SELECT total_products; 
    
    -- Since @COUNTER is a session variable 
    -- It can be used in here
    SELECT @COUNTER;
    
    
    -- Let's change it and see how it will be after 
    -- the procedure executes
    SET @COUNTER = 'CHANGED';
    
  END //
 

DELIMITER ;

CALL DECLAREVARIABLES();

-- It displays CHANGED
SELECT @COUNTER;
