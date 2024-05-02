USE [C:\USERS\HP\DESKTOP\SUBJECTS\YEAR 3\PROG7311\POE\TASK 2\WEBSTOCKMANGEMENT\APP_DATA\PROTODATABASE.MDF]
/******************************************************************/
CREATE TABLE EMPLOYEE(
EMPLOYEE_ID CHAR(6),
FIRST_NAME VARCHAR(255),
SURNAME VARCHAR(255),
CONSTRAINT PK_EMPLOYEE PRIMARY KEY(EMPLOYEE_ID)
);
/******************************************************************/
INSERT INTO EMPLOYEE VALUES
('emp101', 'Bruce','Kent'),
('emp102', 'Clark','Wayne'),
('emp103', 'Chris','Parker')
/******************************************************************/
CREATE  TABLE FARMERS(
FARMER_ID CHAR(6),
FIRST_NAME VARCHAR(255),
SURNAME VARCHAR(255),
COMPANY VARCHAR(255),
CONSTRAINT PK_FARMERS PRIMARY KEY(FARMER_ID)
);
/******************************************************************/
INSERT INTO FARMERS VALUES
('frm101', 'Steven', 'Marks', 'Steve Farm'),
('frm102', 'Jessica', 'Andrews', 'JA Fields'),
('frm103', 'Wayne', 'Dryer', 'Wayne Farm'),
('frm104', 'Xolani', 'Samson', 'Xoson Farm')
/******************************************************************/
CREATE TABLE USERS(
USER_ID INT IDENTITY(1100,1),
FIRST_NAME VARCHAR(255),
SURNAME VARCHAR(255),
EMPLOYEE_ID CHAR(6),
FARMER_ID CHAR(6),
USER_ROLES VARCHAR(255),
PasswordHash BINARY(64) NOT NULL,
EMAIL VARCHAR(255)NOT NULL,
CONSTRAINT PK_USERS PRIMARY KEY(USER_ID),
CONSTRAINT FK_EMPLOYEE1 FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID),
CONSTRAINT FK_FARMERS2 FOREIGN KEY (FARMER_ID) REFERENCES FARMERS(FARMER_ID),
);


/******************************************************************/
INSERT INTO USERS VALUES
('Steven', 'Marks', NULL,'frm101', 'FARMER',convert(binary, '123'),'sm@mail.com'),
( 'Jessica', 'Andrews', NULL,'frm102', 'FARMER',convert(binary, '123'),'ja@mail.com'),
( 'Wayne', 'Dryer',NULL,'frm103', 'FARMER',convert(binary, '123'),'wd@mail.com'),
('Xolani', 'Samson',NULL,'frm104', 'FARMER',convert(binary, '123'),'xs@mail.com'),
('Bruce','Kent','emp101', NULL,'EMPLOYEE', convert(binary, '123'),'bk@mail.com'),
('Clark','Wayne','emp102', NULL,'EMPLOYEE', convert(binary, '123'),'cw@mail.com'),
('Chris','Parker','emp103', NULL,'EMPLOYEE', convert(binary, '123'),'cp@mail.com')
/******************************************************************/
CREATE TABLE PRODUCTS(
PRODUCT_NUMBER INT IDENTITY(510,1),
PRODUCT_NAME VARCHAR(255),
PRODUCT_TYPE VARCHAR(255),
CONSTRAINT PK_PRODUCTS PRIMARY KEY(PRODUCT_NUMBER)
);
/******************************************************************/
INSERT INTO PRODUCTS VALUES
('Carrots', 'VEG'),
('Orange', 'FRUIT'),
('Pumpkin', 'VEG'),
('Apple', 'FRUIT'),
('Beef', 'LIVESTOCK')
/******************************************************************/
CREATE TABLE FARMER_PRODUCTS(
PRODUCT_NUMBER INT IDENTITY(510,1),
FARMER_ID CHAR(6),
PRODUCT_NAME VARCHAR(255),
PRODUCT_TYPE VARCHAR(255),
PROD_DATE DATE,
QUANTIY INT,
CONSTRAINT PK_FARMER_PRODUCTS PRIMARY KEY(PRODUCT_NUMBER, FARMER_ID),
CONSTRAINT FK_FARMERS1 FOREIGN KEY (FARMER_ID) REFERENCES FARMERS(FARMER_ID),
CONSTRAINT FK_PRODUCTS2 FOREIGN KEY (PRODUCT_NUMBER) REFERENCES PRODUCTS(PRODUCT_NUMBER)
);
/******************************************************************/
INSERT INTO FARMER_PRODUCTS VALUES
('frm101',  'Carrots', 'VEG', '15 May 2022',100),
('frm102', 'Orange', 'FRUIT', '21 June 2021',150),
('frm102', 'Pumpkin', 'VEG', '15 January 2022',200),
('frm103', 'Apple', 'FRUIT', '25 December 2021',500),
('frm104', 'Beef', 'LIVESTOCK', '10 June 2021',300)

