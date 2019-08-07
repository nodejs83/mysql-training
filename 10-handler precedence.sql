USE CLASSICMODELS;

DROP PROCEDURE IF EXISTS INSERT_ARTICLE_TAGS_3;

DELIMITER //

-- In case there are multiple handlers that are eligible for handling an error, MySQL will call the most specific handler to handle the error first.
-- An error always maps to one MySQL error code because in MySQL it is the most specific. A SQLSTATE may map to many MySQL error codes, therefore, 
-- it is less specific. A SQLEXCPETION or an SQLWARNING is the shorthand for a class of SQLSTATES values so it is the most generic.
-- Based on the handler precedence’s rules,  MySQL error code handler, SQLSTATE handler and SQLEXCEPTION takes the first, second and third precedence

CREATE PROCEDURE INSERT_ARTICLE_TAGS_3(IN ARTICLE_ID INT, IN TAG_ID INT)
BEGIN
 
 DECLARE EXIT HANDLER FOR 1062 SELECT 'DUPLICATE KEYS ERROR ENCOUNTERED';
 DECLARE EXIT HANDLER FOR SQLEXCEPTION SELECT 'SQLEXCEPTION ENCOUNTERED';
 DECLARE EXIT HANDLER FOR SQLSTATE '23000' SELECT 'SQLSTATE 23000';
 
 -- INSERT A NEW RECORD INTO ARTICLE_TAGS
 INSERT INTO ARTICLE_TAGS(ARTICLE_ID,TAG_ID)
 VALUES(ARTICLE_ID,TAG_ID);
 
 -- RETURN TAG COUNT FOR THE ARTICLE
 SELECT COUNT(*) FROM ARTICLE_TAGS;
END//
  
DELIMITER;

-- We try to insert a duplicate key into the article_tags table by calling the stored procedure:

CALL INSERT_ARTICLE_TAGS_3(1,3);


  
DROP PROCEDURE IF EXISTS INIT_NAMED_ERROR;

-- What does the number 1051 really mean? Imagine you have a big stored procedure polluted with those numbers all over places; 
-- it will become a nightmare to maintain the code.
-- 
-- Fortunately, MySQL provides us with the DECLARE CONDITION statement that declares a named error condition, which associates with a condition

DELIMITER //

CREATE PROCEDURE INIT_NAMED_ERROR()
BEGIN

  DECLARE TABLE_NOT_FOUND CONDITION FOR 1146;
 
  DECLARE EXIT HANDLER FOR TABLE_NOT_FOUND 
  SELECT 'PLEASE CREATE TABLE ABC FIRST';
 
  SELECT * FROM ABC;
  
END//
  
DELIMITER;

CALL INIT_NAMED_ERROR();


