INSERT INTO CUSTOMER(id, name, address)
VALUES(1,'둘리','인천');

INSERT INTO CUSTOMER(id, name, address)
VALUES(2,'둘리','');
--
----불안정한 데이터
INSERT INTO CUSTOMER(id, name) VALUES(3,'또치');
--
----컬럼명을 쓰고 싶지 않을때
INSERT INTO CUSTOMER VALUES(4,'둘리','');
INSERT INTO CUSTOMER VALUES(5,'홍길동','NULL');
--
---- PRIMARY KEY 컬럼 값이이 중복될 때
--INSERT INTO CUSTOMER(id, name) VALUES(3,'홍길동');
--
----NOT NULL 컬럼에 빈값으로 데이터 추가하기
--INSERT INTO CUSTOMER(id) VALUES(6)

SELECT  * FROM CUSTOMER;

INSERT INTO ORDERS(ORDER_ID,SALESMAN_ID,ORDER_DATE)
VALUES(1001,2002,sysdate);

INSERT INTO ORDERS(ORDER_ID,SALESMAN_ID,ORDER_DATE)
values(1002,2002,'2022-08-27');

INSERT INTO ORDERS(ORDER_ID,SALESMAN_ID,ORDER_DATE)
values(1006,2002,'2022-08-27 11:11:11');

--특정 포맷으로 날짜 데이터 추기
INSERT INTO ORDERS
--values(1004,2002,to_date('2022-08-27','YYYY-MM-DD'));

INSERT INTO ORDERS
--values(1005,2002,to_date('2022-08-27 10:10:10','YYYY-MM-DD HH24:MI;SS'));



SELECT  * FROM ORDERS;

-- 날짜 포맷 연습
SELECT sysdate FROM dual;
SELECT TO_CHAR(sysdate, 'YYYYMMDD') FROM dual; 
SELECT TO_CHAR(sysdate, 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(sysdate, 'YYYY/MM/DD') FROM dual;
--
--SELECT TO_CHAR(sysdate, 'YYMMDD DAY') FROM dual;
--
--SELECT TO_CHAR(sysdate, 'YY/MM/DD HH:MI:SS') FROM dual;
--SELECT TO_CHAR(sysdate, 'YY/MM/DD HH24:MI:SS') FROM dual;
--
--
--SELECT TO_CHAR(sysdate, 'YY/MM/DD AM HH:MI:SS') FROM dual;
--SELECT TO_CHAR(sysdate, 'YY/MM/DD PM HH24:MI:SS') FROM dual;


--2. update: 테이블의 데이터를 수정
SELECT * FROM CUSTOMER;
UPDATE CUSTOMER SET ADDRESS = '서울' WHERE id = 2;
UPDATE CUSTOMER SET NAME = '훈이', ADDRESS = '저주도' WHERE id = 3;

SELECT  * FROM ORDERS;

UPDATE ORDERS SET ORDER_DATE = SYSDATE WHERE ORDER_ID = 1002;

--3. delete: 특정 레코드를 삭제
SELECT * FROM CUSTOMER;
DELETE FROM CUSTOMER WHERE ID = 3;
DELETE FROM CUSTOMER WHERE NAME = '둘리';

-- 테이블 전체 데이터 삭제 .. WHERE 없이 삭제하면 데이터 모두 삭제
DELETE FROM CUSTOMER