CREATE TABLE BOOK(
	book_ko NUMBER PRIMARY KEY,
	title varchar2(100),
	publisher varchar2(100),
	price NUMBER
);


ALTER TABLE BOOK RENAME COLUMN book_ko TO book_no;

--INSERT INTO BOOK(book_no,title,publisher,price)
--VALUES(1,'역사1','상상마당',30000);
--INSERT INTO BOOK(book_no,title,publisher,price)
--VALUES(2,'역사2','상상마당',30000);
--INSERT INTO BOOK(book_no,title,publisher,price)
--VALUES(3,'스프링웹프로젝트','한빛미디어',50000);
--INSERT INTO BOOK(book_no,title,publisher,price)
--VALUES(4,'자바개발도서','생능출판',NULL);

--INSERT INTO BOOK(book_no,title,publisher,price)
--VALUES(1,'역사1','상상마당',30000),
--	(2,'역사2','상상마당',30000),
--	(3,'스프링웹프로젝트','한빛미디어',50000),
INTO emp (NO,name,age) values(NULL,NULL,null)
--	(4,'자바개발도서','생능출판',NULL);
--	
INSERT ALL
	INTO BOOK (BOOK_NO,TITLE,PUBLISHER,PRICE) VALUES(1,'역사1','상상마당',30000)
	INTO BOOK (BOOK_NO,TITLE,PUBLISHER,PRICE) VALUES(2,'역사2','상상마당',30000)
	INTO BOOK (BOOK_NO,TITLE,PUBLISHER,PRICE) VALUES(3,'스프링웹프로젝트','한빛미디어',50000)
	INTO BOOK (BOOK_NO,TITLE,PUBLISHER,PRICE) VALUES(4,'자바개발도서','생능출판',NULL)
SELECT 1 FROM dual;


SELECT * FROM BOOK;

CREATE TABLE emp (
	NO NUMBER,
	NAME VARCHAR2(20),
	AGR NUMBER
);

SELECT * FROM emp;

INSERT ALL
	INTO emp (NO,NAME,AGR) values(NULL,NULL,null)
	INTO emp (NO,name,agr) values(1,NULL,null)
	INTO emp (NO,name,agr) values(NULL,'물리',10)
	INTO emp (NO,name,agr) values(1,'물리',10)
	INTO emp (NO,name,agr) values(1,'물리',10)
SELECT 1 FROM dual;

CREATE TABLE EMAIL(
	contact_no NUMBER PRIMARY KEY,
	first_name varchar2(20),
	LASt_name varchar2(50),
	email varchar2(50),
	phone varchar2(20)
);

SELECT * FROM email;
--ALTER TABLE EMAIL MODIFY phone varchar2(20);
--ALTER TABLE EMAIL MODIFY phone number;
--ALTER TABLE email MODIFY phone varchar(50);

INSERT ALL
	INTO EMAIL (contact_no,first_name,LASt_name,email,phone) VALUES (1,'이','서연','flor.stone@gmail.com','010-3171-2341')
	INTO EMAIL (contact_no,first_name,LASt_name,email,phone) VALUES (2,'이','시우','lavera.emerson@gmail.com','010-3171-4111')
	INTO EMAIL (contact_no,first_name,LASt_name,email,phone) VALUES (3,'김','지호','shyla.ortiz@gmail.com','010-3171-4626')
	INTO EMAIL (contact_no,first_name,LASt_name,email,phone) VALUES (4,'김','윤서','jeni.levy@gmail.com','010-8121-2341')
	INTO EMAIL (contact_no,first_name,LASt_name,email,phone) VALUES (5,'최','수아','fern.head@gmail.com',null)
SELECT 1 FROM dual;
DELETE FROM email;