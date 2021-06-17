--Assignment 3 DDL and DML Queries
--Esra Rahman, Jamal Yusuf
--Q1I
INSERT INTO TEST_C
VALUES ('&CUSTOMER', '&LASTNAME', '&FIRSTNAME', '&ADDRESS', '&CITY', '&STATE', '&ZIP', '&REFERRED', '&REGION', '&EMAIL');

SELECT * FROM TEST_C;


--SELECT constraint_name, constraint_type, search_condition, r_constraint_name
--FROM user_constraints
--WHERE table_name = 'CUSTOMERS';

--SELECT * FROM SUPPLIES;
--delete from supplies
--where ingredient_id = 'S123';
--Q1 A
CREATE TABLE TEST_C
(Customer#  NUMBER(4),
LastName VARCHAR2(10),
FirstName VARCHAR2(10),
Address VARCHAR2(20),
City VARCHAR2(12),
State VARCHAR2(2),
Zip VARCHAR2(5),
Referred NUMBER(4),
Region CHAR(2),
Email VARCHAR2(30));

INSERT INTO TEST_C
VALUES (1001, 'MORALES', 'BONITA', 'P.O. BOX 651', 'EASTPOINT', 'FL', '32328', NULL, 'SE', 'bm225@sat.net');
INSERT INTO TEST_C
VALUES (1002, 'THOMPSON', 'RYAN', 'P.O. BOX 9835', 'SANTA MONICA', 'CA', '90404', NULL, 'W', NULL);
INSERT INTO TEST_C
VALUES (1003, 'SMITH', 'LEILA', 'P.O. BOX 66', 'TALLAHASSEE', 'FL', '32306', NULL, 'SE', NULL); 
INSERT INTO TEST_C 
VALUES (1004, 'PIERSON', 'THOMAS', '69821 SOUTH AVENUE', 'BOISE', 'ID', '83707', NULL, 'NW', 'tpier55@sat.net'); 
INSERT INTO TEST_C 
VALUES (1005, 'GIRARD', 'CINDY', 'P.O. BOX 851', 'SEATTLE', 'WA', '98115', NULL, 'NW', 'cing101@zep.net'); 
INSERT INTO TEST_C
VALUES (1006, 'CRUZ', 'MESHIA', '82 DIRT ROAD', 'ALBANY', 'NY', '12211', NULL, 'NE', 'cruztop@axe.com'); 
INSERT INTO TEST_C 
VALUES (1007, 'GIANA', 'TAMMY', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 1003, 'SW', 'treetop@zep.net'); 
INSERT INTO TEST_C 
VALUES (1008, 'JONES', 'KENNETH', 'P.O. BOX 137', 'CHEYENNE', 'WY', '82003', NULL, 'N', 'kenask@sat.net'); 
INSERT INTO TEST_C 
VALUES (1009, 'PEREZ', 'JORGE', 'P.O. BOX 8564', 'BURBANK', 'CA', '91510', 1003, 'W', 'jperez@canet.com'); 
INSERT INTO TEST_C 
VALUES (1010, 'LUCAS', 'JAKE', '114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', NULL, 'SE', NULL); 
INSERT INTO TEST_C
VALUES (1011, 'MCGOVERN', 'REESE', 'P.O. BOX 18', 'CHICAGO', 'IL', '60606', NULL, 'N', 'reesemc@sat.net');  
INSERT INTO TEST_C 
VALUES (1012, 'MCKENZIE', 'WILLIAM', 'P.O. BOX 971', 'BOSTON', 'MA', '02110', NULL, 'NE', 'will2244@axe.net'); 
INSERT INTO TEST_C 
VALUES (1013, 'NGUYEN', 'NICHOLAS', '357 WHITE EAGLE AVE.', 'CLERMONT', 'FL', '34711', 1006, 'SE', 'nguy33@sat.net'); 
INSERT INTO TEST_C
VALUES (1014, 'LEE', 'JASMINE', 'P.O. BOX 2947', 'CODY', 'WY', '82414', NULL, 'N', 'jaslee@sat.net'); 
INSERT INTO TEST_C 
VALUES (1015, 'SCHELL', 'STEVE', 'P.O. BOX 677', 'MIAMI', 'FL', '33111', NULL, 'SE', 'sschell3@sat.net'); 
INSERT INTO TEST_C
VALUES (1016, 'DAUM', 'MICHELL', '9851231 LONG ROAD', 'BURBANK', 'CA', '91508', 1010, 'W', NULL); 
INSERT INTO TEST_C 
VALUES (1017, 'NELSON', 'BECCA', 'P.O. BOX 563', 'KALMAZOO', 'MI', '49006', NULL, 'N', 'becca88@digs.com'); 
INSERT INTO TEST_C
VALUES (1018, 'MONTIASA', 'GREG', '1008 GRAND AVENUE', 'MACON', 'GA', '31206', NULL, 'SE', 'greg336@sat.net'); 
INSERT INTO TEST_C
VALUES (1019, 'SMITH', 'JENNIFER', 'P.O. BOX 1151', 'MORRISTOWN', 'NJ', '07962', 1003, 'NE', NULL); 
INSERT INTO TEST_C
VALUES (1020, 'FALAH', 'KENNETH', 'P.O. BOX 335', 'TRENTON', 'NJ', '08607', NULL, 'NE', 'Kfalah@sat.net'); 

--Q1B
SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'TEST_C';

DESC TEST_C;

--Q1C
CREATE TABLE TEST_O
(Order# NUMBER(4), 
Customer# NUMBER(4), 
OrderDate DATE NOT NULL, 
ShipDate DATE, 
ShipStreet VARCHAR2(18), 
ShipCity VARCHAR2(15), 
ShipState VARCHAR2(2), 
ShipZip VARCHAR2(5),
ShipCost NUMBER(4,2));

INSERT INTO TEST_O
VALUES (1000,1005,'31-MAR-09','02-APR-09','1201 ORANGE AVE', 'SEATTLE', 'WA', '98114' , 2.00); 
INSERT INTO TEST_O
VALUES (1001,1010,'31-MAR-09','01-APR-09', '114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', 3.00); 
INSERT INTO TEST_O
VALUES (1002,1011,'31-MAR-09','01-APR-09','58 TILA CIRCLE', 'CHICAGO', 'IL', '60605', 3.00); 
INSERT INTO TEST_O
VALUES (1003,1001,'01-APR-09','01-APR-09','958 MAGNOLIA LANE', 'EASTPOINT', 'FL', '32328', 4.00); 
INSERT INTO TEST_O
VALUES (1004,1020,'01-APR-09','05-APR-09','561 ROUNDABOUT WAY', 'TRENTON', 'NJ', '08601', NULL); 
INSERT INTO TEST_O
VALUES (1005,1018,'01-APR-09','02-APR-09', '1008 GRAND AVENUE', 'MACON', 'GA', '31206', 2.00); 
INSERT INTO TEST_O
VALUES (1006,1003,'01-APR-09','02-APR-09','558A CAPITOL HWY.', 'TALLAHASSEE', 'FL', '32307', 2.00); 
INSERT INTO TEST_O
VALUES (1007,1007,'02-APR-09','04-APR-09', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 7.00); 
INSERT INTO TEST_O
VALUES (1008,1004,'02-APR-09','03-APR-09', '69821 SOUTH AVENUE', 'BOISE', 'ID', '83707', 3.00); 
INSERT INTO TEST_O 
VALUES (1009,1005,'03-APR-09','05-APR-09','9 LIGHTENING RD.', 'SEATTLE', 'WA', '98110', NULL); 
INSERT INTO TEST_O 
VALUES (1010,1019,'03-APR-09','04-APR-09','384 WRONG WAY HOME', 'MORRISTOWN', 'NJ', '07960', 2.00); 
INSERT INTO TEST_O
VALUES (1011,1010,'03-APR-09','05-APR-09', '102 WEST LAFAYETTE', 'ATLANTA', 'GA', '30311', 2.00); 
INSERT INTO TEST_O
VALUES (1012,1017,'03-APR-09',NULL,'1295 WINDY AVENUE', 'KALMAZOO', 'MI', '49002', 6.00); 
INSERT INTO TEST_O
VALUES (1013,1014,'03-APR-09','04-APR-09','7618 MOUNTAIN RD.', 'CODY', 'WY', '82414', 2.00); 
INSERT INTO TEST_O 
VALUES (1014,1007,'04-APR-09','05-APR-09', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 3.00); 
INSERT INTO TEST_O
VALUES (1015,1020,'04-APR-09',NULL,'557 GLITTER ST.', 'TRENTON', 'NJ', '08606', 2.00); 
INSERT INTO TEST_O 
VALUES (1016,1003,'04-APR-09',NULL,'9901 SEMINOLE WAY', 'TALLAHASSEE', 'FL', '32307', 2.00); 
INSERT INTO TEST_O
VALUES (1017,1015,'04-APR-09','05-APR-09','887 HOT ASPHALT ST', 'MIAMI', 'FL', '33112', 3.00); 
INSERT INTO TEST_O 
VALUES (1018,1001,'05-APR-09',NULL,'95812 HIGHWAY 98', 'EASTPOINT', 'FL', '32328', NULL); 
INSERT INTO TEST_O
VALUES (1019,1018,'05-APR-09',NULL, '1008 GRAND AVENUE', 'MACON', 'GA', '31206', 2.00); 
INSERT INTO TEST_O
VALUES (1020,1008,'05-APR-09',NULL,'195 JAMISON LANE', 'CHEYENNE', 'WY', '82003', 2.00); 

--Q1D
SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'TEST_O';

--Q1E   
ALTER TABLE TEST_C
ADD CONSTRAINT test_c_customer#_pk PRIMARY KEY(customer#);

ALTER TABLE TEST_C
MODIFY (LASTNAME CONSTRAINT test_c_lastname_nn NOT NULL);
ALTER TABLE TEST_C
MODIFY (FIRSTNAME CONSTRAINT test_c_firstname_nn NOT NULL);

SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'TEST_C';

--Q1F
ALTER TABLE TEST_O
ADD CONSTRAINT test_o_order#_pk PRIMARY KEY(order#);
ALTER TABLE TEST_O
ADD CONSTRAINT test_o_customer#_fk FOREIGN KEY (customer#)
    REFERENCES test_c(customer#);

SELECT customer# FROM TEST_C;
SELECT order# FROM TEST_O;

--Q1G
SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'TEST_C';

SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'TEST_O';

SELECT * FROM user_cons_columns
WHERE table_name = 'TEST_C';

SELECT * FROM user_cons_columns
WHERE table_name = 'TEST_O';

--Q1H
--UPDATE TEST_C
--SET LASTNAME = '&LASTNAME', FIRSTNAME = '&FIRSTNAME', ADDRESS = '&ADDRESS', CITY = '&CITY',
--STATE = '&STATE', ZIP = '&ZIP', REFERRED = '&REFERRED', REGION = '&REGION', EMAIL = '&EMAIL'
--WHERE CUSTOMER# = '&CUSTOMER';
INSERT INTO TEST_C
VALUES ('&CUSTOMER', '&LASTNAME', '&FIRSTNAME', '&ADDRESS', '&CITY', '&STATE', '&ZIP', '&REFERRED', '&REGION', '&EMAIL');
SELECT * FROM TEST_C;


--Q1J
UPDATE TEST_C
SET ADDRESS = '&ADDRESS', CITY = '&CITY',
STATE = '&STATE', ZIP = '&ZIP'
WHERE CUSTOMER# = '&CUSTOMER';

--Q1K
DELETE FROM TEST_O
WHERE CUSTOMER# = '1003';

DELETE FROM TEST_C
WHERE CUSTOMER# = '1003';

--Q2A
SELECT * FROM TEST_O;
INSERT INTO TEST_O 
VALUES (1020, 1010, '14-JAN-2020', NULL, NULL, NULL, NULL, NULL, NULL);

--Q2B
SELECT * FROM TEST_O;
INSERT INTO TEST_O
VALUES (1021, 1024, '14-JAN-2020', NULL, NULL, NULL, NULL, NULL, NULL);

--Q2C
INSERT INTO TEST_O
VALUES (1021, 1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--Q2D
INSERT INTO TEST_C
VALUES (1025, 'NARINE', NULL, '123 SEASAME ST', 'NEW YORK', 'NY', NULL, NULL, 'N', NULL); 

ALTER TABLE TEST_C
MODIFY (LASTNAME CONSTRAINT test_c_lastname_nn NOT NULL);
ALTER TABLE TEST_C
MODIFY (FIRSTNAME CONSTRAINT test_c_firstname_nn NOT NULL);

--Q3A
CREATE TABLE Goods
(Product_id CHAR(3)NOT NULL,
Product_name VARCHAR2(20)UNIQUE,
Price NUMBER(4,2)DEFAULT 1, 
on_hand NUMBER(3)DEFAULT 0, 
    CONSTRAINT goods_price_ck CHECK (price > 0),
    CONSTRAINT goods_on_hand_ck CHECK (on_hand > 0),
    CONSTRAINT goods_product_id_pk PRIMARY KEY(product_id));
    
DESC GOODS

CREATE TABLE Supplies
(Ingredient_id Char(4),
On_hand NUMBER(3),
Unit_measurement CHAR(7) DEFAULT 'Litres',
Cost NUMBER(4,2) DEFAULT 1,
Description VARCHAR2(15) UNIQUE,
  CONSTRAINT supplies_ingredient_id_pk PRIMARY KEY(ingredient_id),
  CONSTRAINT supplies_on_hand_ck 
                CHECK (on_hand BETWEEN 1 AND 500 ),
  CONSTRAINT supplies_cost_ck
                CHECK ( cost > 0));

DESC SUPPLIES                

CREATE TABLE Ingredients
(Ingredient_id CHAR(4),
Product_id CHAR(3),
Amount Number(3,2) DEFAULT 1,
  CONSTRAINT ingredients_pk PRIMARY KEY (product_id, ingredient_id),
  CONSTRAINT ingredients_product_id_fk FOREIGN KEY (product_id)
                REFERENCES goods (product_id),
  CONSTRAINT ingredients_ingredient_id_fk FOREIGN KEY(ingredient_id)
                REFERENCES supplies(ingredient_id),
  CONSTRAINT ingredients_amount_ck 
                CHECK (amount > 0 ));
                
DESC INGREDIENTS

--Q3B

INSERT INTO supplies
VALUES ('S123', 150, 'GRAMS', 50.25,'SUGAR');

INSERT INTO supplies
(INGREDIENT_ID, ON_HAND, UNIT_MEASUREMENT, COST, DESCRIPTION)
VALUES('S262', 351, 'GRAMS', 80.62, 'SALT');

INSERT INTO supplies
VALUES ('M256', 450, 'LITRES', 70.99, 'MILK');

INSERT INTO supplies
(INGREDIENT_ID, ON_HAND, UNIT_MEASUREMENT, COST, DESCRIPTION)
VALUES ('F452', 199, 'GRAMS', 67.97, 'FLOUR');

INSERT INTO supplies
VALUES ('O523', 500, 'OUNCES', 98.97, 'OIL');

INSERT INTO GOODS
VALUES ('S56', 'SUGARCAKE', 25.60, 120);

INSERT INTO GOODS
(PRODUCT_ID, PRODUCT_NAME, PRICE, ON_HAND)
VALUES ('S54', 'CAKE', 22.98, 378);

INSERT INTO GOODS
VALUES ('S90', 'BREAD', 9.20, 622);

INSERT INTO GOODS
(PRODUCT_ID, PRODUCT_NAME, PRICE, ON_HAND)
VALUES ('F12', 'CUPCAKE', 22.98, 124);

INSERT INTO GOODS
VALUES ('O05', 'COOKIES', 3.58, 852);

INSERT INTO INGREDIENTS
VALUES('S123', 'S56', 1.89);

INSERT INTO INGREDIENTS(ingredient_id, product_id, amount)
VALUES('S262', 'S54', 6.89);

INSERT INTO INGREDIENTS
VALUES('M256', 'S90', 8.34);

INSERT INTO INGREDIENTS(ingredient_id, product_id, amount)
VALUES('F452', 'F12', 9.83);

INSERT INTO INGREDIENTS
VALUES('O523', 'O05', 2.32);

--Q3C

SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'SUPPLIES';

SELECT constraint_name, constraint_type, search_condition, r_constraint_name
FROM user_constraints
WHERE table_name = 'INGREDIENTS';

--Q3D

SELECT * FROM user_cons_columns
WHERE table_name = 'SUPPLIES';

SELECT * FROM user_cons_columns
WHERE table_name = 'INGREDIENTS';

--Q4A
INSERT INTO INGREDIENTS
VALUES('F452', 'F12', 2.51);

--Q4B
INSERT INTO SUPPLIES
VALUES('S262', 351, 'GRAIN', 22.22, 'SALT');

--Q4C
INSERT INTO INGREDIENTS (ingredient_id, product_id, amount)
VALUES('S262', 'J24', 9.99); 

--Q4D
INSERT INTO SUPPLIES
VALUES ('S123', 100, 'OUNCES', 0.00, 'EXTRACT');

--Q4E
INSERT INTO SUPPLIES
VALUES (S262, 988);

 