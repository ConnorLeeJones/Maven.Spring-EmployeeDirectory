DROP TABLE PERSON;

CREATE TABLE PERSON (
  ID NUMBER(10,0) NOT NULL AUTO_INCREMENT,
  FIRST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
  LAST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
  MOBILE VARCHAR2(20) NOT NULL DEFAULT '',
  BIRTHDAY DATE DEFAULT NULL,
  PRIMARY KEY (ID));

DROP TABLE HOME;

CREATE TABLE HOME (
  ID NUMBER(10,0) NOT NULL AUTO_INCREMENT,
  ADDRESS VARCHAR2(255) not null default '',
  HOMENUMBER varchar2(255) NOT NULL DEFAULT '',
  PRIMARY KEY (ID)
);


DROP TABLE CAR;

CREATE TABLE CAR (
  ID NUMBER(10,0) NOT NULL AUTO_INCREMENT,
  MAKE VARCHAR2(255) not null default '',
  MODEL varchar2(255) NOT NULL DEFAULT '',
  YEAR VARCHAR2(5) NOT NULL DEFAULT '01907',
  PRIMARY KEY (ID)
);

DROP SEQUENCE hibernate_sequence;

CREATE SEQUENCE hibernate_sequence;


CREATE TABLE EMPLOYEE (
    EMPLOYEE_NUMBER INT NOT NULL AUTO_INCREMENT,
    FIRST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
    LAST_NAME VARCHAR2(255) NOT NULL DEFAULT '',
    TITLE VARCHAR2(20) NOT NULL DEFAULT '',
    PHONE_NUMBER VARCHAR2(20) DEFAULT NULL,
    EMAIL VARCHAR2(20) DEFAULT NULL,
    HIRE_DATE DATE DEFAULT NULL,
    DEPARTMENT_NUMBER INT DEFAULT NULL,
    PRIMARY KEY (EMPLOYEE_NUMBER));

INSERT INTO EMPLOYEE (FIRST_NAME, LAST_NAME, TITLE, PHONE_NUMBER, EMAIL, HIRE_DATE, DEPARTMENT_NUMBER)
VALUES ( 'Connor', 'Jones', 'Student', '(302)-111-1111', 'test', null, 1  )
