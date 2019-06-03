-- New Database creation commands.
CREATE DATABASE dataVault;

USE dataVault;

CREATE TABLE users (
    id INTEGER,
    userName VARCHAR(255),
    address VARCHAR(255),
    zip CHAR(10),
    phoneNum CHAR(15),
    accountNum CHAR(14),
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    gender CHAR(1)
);

CREATE TABLE purchaces (
    id INTEGER,
    purchaseNum VARCHAR(255),
    item VARCHAR(255),
    purchaseCost, -- NOT AN INT, IT SHOULD BE BASED ON A MONETARY AMOUNT.
    purchaseLocation VARCHAR(255),
    customerNum, -- accountNum (foreign key, connect to the users table )
    purchaseTime -- ?
);