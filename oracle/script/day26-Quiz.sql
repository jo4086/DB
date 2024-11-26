--DROP TABLE CUSTOMER;
CREATE TABLE CUSTOMER (
    ID      NUMBER PRIMARY KEY,
    NAME    VARCHAR2(20) NOT NULL,
    ADDRESS VARCHAR2(100)
);
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(1, '둘리', '인천');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(2, '둘리', '서울');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(3, '홍길동','서울');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(4, '또치', '제주도');
INSERT INTO CUSTOMER(ID, NAME, ADDRESS) VALUES(5, '도우너', '');
DROP TABLE ORDERS;
CREATE TABLE ORDERS (
    ORDER_ID    NUMBER PRIMARY KEY,
    SALESMAN_ID NUMBER,
    ORDER_DATE  DATE NOT NULL
);
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1001, 2002, '2022-01-01');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1002, 2002, '2022-01-02');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1003, 2002, '2022-01-03');
INSERT INTO ORDERS(ORDER_ID, SALESMAN_ID, ORDER_DATE) VALUES(1004, 2002, '2022-01-04');
DROP TABLE BOOK;
CREATE TABLE BOOK (
    BOOK_NO NUMBER PRIMARY KEY, --도서번호
    TITLE VARCHAR2(100) NOT NULL, --제목
    PUBLISHER VARCHAR2(100), --출판사
    PRICE NUMBER --가격
);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (1, '역사1', '상상마당', 10000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (2, '역사2', '상상마당', 11000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (3, '스프링웹프로젝트', '한빛미디어', 50000);
INSERT INTO BOOK (BOOK_NO, TITLE, PUBLISHER, PRICE) VALUES (4, '자바프로그래밍', '생능출판', 25000);
 DROP TABLE CONTACTS;
 CREATE TABLE CONTACTS 
  (
    CONTACT_NO NUMBER PRIMARY KEY,
    FIRST_NAME  VARCHAR2( 255 ) NOT NULL,
    LAST_NAME   VARCHAR2( 255 ) NOT NULL,
    EMAIL       VARCHAR2( 255 ) NOT NULL,
    PHONE       VARCHAR2( 20 )         
  );
INSERT INTO CONTACTS VALUES (1,'이','서연','flor.stone@gmail.com','010-3171-2341');
INSERT INTO CONTACTS VALUES (2,'이','시우','lavera.emerson@gmail.com','010-3171-4111');
INSERT INTO CONTACTS VALUES (3,'김','지호','shyla.ortiz@gmail.com','010-3171-4126');
INSERT INTO CONTACTS VALUES (4,'김','윤서','jeni.levy@gmail.com','010-8121-2341');
INSERT INTO CONTACTS VALUES (5,'최','수아','fern.head@gmail.com', NULL);
DROP TABLE GIFT;
CREATE TABLE GIFT (
    NO    NUMBER,
    TYPE  VARCHAR2(20),
    NAME  VARCHAR2(20),
    PRICE NUMBER
);
INSERT INTO GIFT VALUES(1,'식품','참치세트',100000);
INSERT INTO GIFT VALUES(2,'생활용품','샴푸세트',200000);
INSERT INTO GIFT VALUES(3,'생활용품','세차용품세트',300000);
INSERT INTO GIFT VALUES(4,'생활용품','주방용품세트',400000);
INSERT INTO GIFT VALUES(5,'운동장비','산악용자전거',500000);
INSERT INTO GIFT VALUES(6,'가전제품','LCD모니터',600000);
INSERT INTO GIFT VALUES(7,'가전제품','노트북',700000);
INSERT INTO GIFT VALUES(8,'가전제품','벽걸이TV',800000);
INSERT INTO GIFT VALUES(9,'가전제품','드럼세탁기',900000);
INSERT INTO GIFT VALUES(10,'가전제품','양쪽문냉장고',1000000);