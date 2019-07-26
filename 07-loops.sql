USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS TEST_MYSQL_WHILE_LOOP;

DELIMITER //

CREATE PROCEDURE TEST_MYSQL_WHILE_LOOP()
 BEGIN
 
   DECLARE X  INT;
   DECLARE STR VARCHAR(255);
   
   -- WHILE SYNTAX
   SET X = 1;
   SET STR =  '';
   
   WHILE X  <= 5 DO
     SET  STR = CONCAT(STR,X,',');
     SET  X = X + 1; 
   END WHILE;
   SELECT STR;
   
    -- LOOP SYNTAX
   SET X = 1;
   SET STR =  '';
   
   LOOP_LABEL:  LOOP
   
     IF  X > 10 THEN 
      LEAVE  LOOP_LABEL;
     END  IF;
     
     SET  X = X + 1;
              
     IF  (X MOD 2) THEN
      -- equivalent to continue
      ITERATE  LOOP_LABEL;
     ELSE
      SET  STR = CONCAT(STR,X,',');
     END  IF;
    
   END LOOP;    
   SELECT STR; 
 
 END//

DELIMITER ;

CALL TEST_MYSQL_WHILE_LOOP();