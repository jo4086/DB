CREATE TABLE EMP (
    NO   NUMBER,
    NAME VARCHAR2(20),
    AGE  NUMBER
);
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);
-- 예제3. 주문 테이블
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);

CREATE TABLE CATEGORIES(
	CATEGORY_ID NUMBER PRIMARY KEY,
	CATEGORY_NAME varchar2(100) NOT NULL
);

CREATE TABLE LOCATION(
	LOCATION_ID NUMBER PRIMARY KEY,
	ADDRESS varchar2(255) NOT NULL,
	POSTAL_CODE varchar2(20),
	CITY varchar2(50)
);

ALTER TABLE emp ADD SALARY NUMBER;
ALTER TABLE emp MODIFY SALARY NUMBER NOT NULL;
COMMENT ON COLUMN emp.NO IS 'NO';
COMMENT ON COLUMN emp.NAME IS 'NAME';
COMMENT ON COLUMN emp.AGR IS 'AGR';
COMMENT ON COLUMN emp.SALARY IS 'SALARY';

ALTER TABLE ORDERS ADD CUSTOMER_NAME varchar2(50) NOT NULL;
ALTER TABLE ORDERS MODIFY SALESMAN_ID varchar(50);
ALTER TABLE ORDERS RENAME COLUMN SALESMAN_ID TO SALESMAN_NAME;
ALTER TABLE ORDERS MODIFY ORDER_DATE NULL;

COMMENT ON COLUMN ORDERS.ORDER_ID IS 'ORDER_ID';
COMMENT ON COLUMN ORDERS.SALESMAN_NAME IS 'SALESMAN_NAME';
COMMENT ON COLUMN ORDERS.ORDER_DATE IS 'ORDER_DATE';
COMMENT ON COLUMN ORDERS.CUSTOMER_NAME IS 'CUSTOMER_NAME';

DROP TABLE EMP;
DROP TABLE CUSTOMER;
DROP TABLE ORDERS;
DROP TABLE LOCATION;
DROP TABLE CATEGORIES ;

CREATE TABLE EMP (
    NO   NUMBER,
    NAME VARCHAR2(20),
    AGE  NUMBER
);
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);
-- 예제3. 주문 테이블
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);