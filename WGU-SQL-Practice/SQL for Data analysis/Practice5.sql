-- CREATING THE DATABASE
-- ANSI SQL standards define a command to create a database schema:

CREATE SCHEMA AUTHORIZATION {creator};

-- if the creator is MAX, the following command is used:

CREATE SCHEMA AUTHORIZATION MAX;


-- Creating Table Structures:

CREATE TABLE newtablename (
colomn1 data type [contraint] [,
colomn2 data type [constraint] ] [,
PRIMANRY KEY (column1 [,colomn2]) ] [,
FOREIGN KEY (colomn1 [,colomn2]) REFERENCES tablename]
CONSTRAINT constraint ] );

-- Creating Table Structures:

CREATE TABLE VENDOR (
V_CODE INTEGER NOT NULL UNIQUE,
V_NAME VARCHAR(35) NOT NULL,
V_CONTACT VARCHAR(25) NOT NULL,
V_AREACODE CHAR(3) NOT NULL,
V_PHONE CHAR(8) NOT NULL,
V_STATE CHAR(2) NOT NULL,
V_ORDER CHAR(1) NOT NULL,
PRIMANRY KEY (V_CODE));

