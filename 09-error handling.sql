USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS PRESENT_HANDLERS;

DELIMITER //

CREATE PROCEDURE PRESENT_HANDLERS()
 BEGIN
 
  DECLARE NO_ROW_FOUND INTEGER DEFAULT 0;
  DECLARE HAS_ERROR INTEGER DEFAULT 0;
  
  -- The following handler means that if an error occurs, set the value of the  has_error 
  -- variable to 1 and continue the execution
  -- DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET HAS_ERROR = 1;
  
  
  -- The following is another handler which means that in case an error occurs, rollback the previous 
  -- operation, issue an error message, and exit the current code block. If you declare it inside the 
  -- BEGIN END block of a stored procedure, it will terminate stored procedure immediately.
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SELECT 'AN ERROR HAS OCCURRED, OPERATION ROLLBACKED AND THE STORED PROCEDURE WAS TERMINATED';
  END;
  
  -- The following handler means that if there are no more rows to fetch, in case of a cursor or SELECT 
  -- INTO statement, set the value of the  no_row_found variable to 1 and continue execution  
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET NO_ROW_FOUND = 1;
  
  -- The following handler means that if a duplicate key error occurs, MySQL error 1062 is issued. 
  -- It issues an error message and continues execution.
  DECLARE CONTINUE HANDLER FOR 1062
    SELECT 'Error, duplicate key occurred'; 
   
 END//
 
DROP PROCEDURE IF EXISTS INSERT_ARTICLE_TAGS//

CREATE PROCEDURE INSERT_ARTICLE_TAGS(IN ARTICLE_ID INT, IN TAG_ID INT)
  BEGIN
   
   DECLARE CONTINUE HANDLER FOR 1062
   SELECT CONCAT('DUPLICATE KEYS (',ARTICLE_ID,',',TAG_ID,') FOUND') AS MSG;
   
   -- INSERT A NEW RECORD INTO ARTICLE_TAGS
   INSERT INTO ARTICLE_TAGS(ARTICLE_ID,TAG_ID)
   VALUES(ARTICLE_ID,TAG_ID);
   
   -- RETURN TAG COUNT FOR THE ARTICLE
   SELECT COUNT(*) FROM ARTICLE_TAGS;
  END//
  
DELIMITER;
  
CALL INSERT_ARTICLE_TAGS(1,1);
CALL INSERT_ARTICLE_TAGS(1,2);
CALL INSERT_ARTICLE_TAGS(1,3);

-- After that, we try to insert a duplicate key to check if the handler is really invoked.
CALL INSERT_ARTICLE_TAGS(1,3);

-- We got an error message. However, because we declared the handler as a CONTINUE handler, 
-- the stored procedure continued the execution. As the result, we got the tag count for the article as well.
-- If we change the CONTINUE in the handler declaration to EXIT , we will get an error message only.

