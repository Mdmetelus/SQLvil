-- New Database creation commands.
CREATE DATABASE dataVault;

USE dataVault;

CREATE TABLE users (
    id INTEGER,
    userName VARCHAR(255),
    address VARCHAR(255),
    zip CHAR(10),
    phoneNum CHAR(15),
    accountNum CHAR(14)
);