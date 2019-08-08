USE CLASSICMODELS;

-- MySQL 5.7.2+ lifts this limitation and allows you to create multiple triggers for the same event and action time in a table. 
-- The triggers will activate sequentially when the event occurs.

-- The syntax for creating the first trigger remains the same. 
-- In case you have multiple triggers for the same event in a table, MySQL will invoke the triggers in the order that they were created. 
-- To change the order of triggers, you need to specify FOLLOWS or PRECEDES after the FOR EACH ROW clause.
-- 
-- The FOLLOWS   option allows the new trigger to activate after the existing trigger.
-- The PRECEDES  option allows the new trigger to activate before the existing trigger.


-- We will use the products table in the sample database for the demonstration. Suppose, whenever we change the price of a product 
-- (column MSRP ), we want to log the old price in a separate table named price_logs .


DROP TABLE IF EXISTS PRICE_LOGS;

CREATE TABLE PRICE_LOGS (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  PRODUCT_CODE VARCHAR(15) NOT NULL,
  PRICE DOUBLE NOT NULL,
  UPDATED_AT TIMESTAMP NOT NULL DEFAULT 
             CURRENT_TIMESTAMP 
             ON UPDATE CURRENT_TIMESTAMP,
  
  PRIMARY KEY (ID),
  
  KEY PRODUCT_CODE (PRODUCT_CODE),
  
  CONSTRAINT PRICE_LOGS_IBFK_1 FOREIGN KEY (PRODUCT_CODE) 
  REFERENCES PRODUCTS (PRODUCTCODE) 
  ON DELETE CASCADE 
  ON UPDATE CASCADE
);


DROP TRIGGER IF EXISTS BEFORE_PRODUCTS_UPDATE;

DELIMITER //
 
CREATE TRIGGER BEFORE_PRODUCTS_UPDATE 
   BEFORE UPDATE ON PRODUCTS 
   FOR EACH ROW 
  BEGIN
       INSERT INTO PRICE_LOGS(PRODUCT_CODE,PRICE)
       VALUES(OLD.PRODUCTCODE,OLD.MSRP);
  END//
 
DELIMITER ;

UPDATE PRODUCTS
SET MSRP = 95.1
WHERE PRODUCTCODE = 'S10_1678';

SELECT * FROM PRICE_LOGS;

-- Suppose we want to see not only the old price and when it was changed but also who changed it. 
-- We can add additional columns to the price_logs table. However, for the purpose of multiple triggers 
-- demonstration, we will create a new table to store the data of users who made the changes. 
-- The name of the new table is user_change_logs with the following structure

DROP TABLE IF EXISTS USER_CHANGE_LOGS;

CREATE TABLE USER_CHANGE_LOGS (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  PRODUCT_CODE VARCHAR(15) DEFAULT NULL,
  UPDATED_AT TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
  ON UPDATE CURRENT_TIMESTAMP,
 
  UPDATED_BY VARCHAR(30) NOT NULL,
 
  PRIMARY KEY (ID),
 
  KEY PRODUCT_CODE (PRODUCT_CODE),
 
  CONSTRAINT USER_CHANGE_LOGS_IBFK_1 FOREIGN KEY (PRODUCT_CODE) 
  REFERENCES PRODUCTS (PRODUCTCODE) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TRIGGER IF EXISTS BEFORE_PRODUCTS_UPDATE_2;

DELIMITER //

CREATE TRIGGER BEFORE_PRODUCTS_UPDATE_2 
   BEFORE UPDATE ON PRODUCTS 
   FOR EACH ROW FOLLOWS BEFORE_PRODUCTS_UPDATE
  BEGIN
     INSERT INTO USER_CHANGE_LOGS(PRODUCT_CODE,UPDATED_BY)
     VALUES(OLD.PRODUCTCODE,USER());
  END//
 
DELIMITER ;

UPDATE PRODUCTS
SET MSRP = 95.3
WHERE PRODUCTCODE = 'S10_1678';

SELECT * FROM PRICE_LOGS;
SELECT * FROM USER_CHANGE_LOGS;

















