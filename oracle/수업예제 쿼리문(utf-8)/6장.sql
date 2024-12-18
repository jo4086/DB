--------DDL---------
SELECT * FROM emp;
TRUNCATE TABLE emp; --테이블 데이터를 전부 삭제해줌
DELETE FROM emp;

--------권한(DCL)---------
CREATE USER person1 IDENTIFIED BY test1234;
GRANT CONNECT, RESOURCE, DBA TO person1;
ALTER USER person1 IDENTIFIED BY test6789; --비밀번호 변경
DROP USER person1; --계정삭제


------트랜젝션(커밋, 롤백)------

CREATE TABLE PAYMENT ( --결제
	NO NUMBER PRIMARY KEY,
	NAME VARCHAR2(20), --결제자이름
	PAY NUMBER --결제금액
);

CREATE TABLE STOCK (--재고
	NO NUMBER PRIMARY KEY,
	STOCK_NAME VARCHAR2(100), --상품명
	STOCK_COUNT NUMBER --재고개수
);

SELECT * FROM STOCK;
SELECT * FROM PAYMENT;
INSERT INTO STOCK VALUES(1, '티셔츠', 1); --재고가 1개인 티셔츠 먼저 넣어줌

--결제 상황 실행
INSERT INTO PAYMENT VALUES(1, '승찬', 30000); --결제 
UPDATE STOCK SET STOCK_COUNT=0 WHERE NO=1; --재고차감
COMMIT; --데이터베이스에 완벽하게 반영(트랜잭션 처리 후 커밋 처리)

INSERT INTO PAYMENT VALUES(2, '상운', 30000);
--COMMIT; --★커밋 후 롤백실행시 취소가 되지 않는다.
ROLLBACK; --데이터베이스에 반영 취소
UPDATE STOCK SET STOCK_COUNT=-1 WHERE NO=1;



------제약조건(check)--------

CREATE TABLE SAMPLE (
	NO NUMBER PRIMARY KEY,
	NAME varchar2(20),
	AGE NUMBER
);

INSERT INTO SAMPLE VALUES(1, '양지은', 10);
INSERT INTO SAMPLE VALUES(2, '박우진', 10);
INSERT INTO SAMPLE VALUES(3, '김태은', 10);

ALTER TABLE SAMPLE MODIFY AGE NUMBER CHECK(AGE IN(10, 11)); --10살 11살만 AGE의 값으로 올수 있음
INSERT INTO SAMPLE VALUES(4, '정지우', 12); --에러발생



-------인덱스--------
TRUNCATE TABLE EMP;

INSERT INTO EMP VALUES (1, '둘리', 10); 
INSERT INTO EMP VALUES (2, '고길동', 10); 
INSERT INTO EMP VALUES (3, '또치', 10); 

CREATE INDEX EMP_IDX01 ON EMP(NAME); --NAME컬럼에 인덱스를 건다
CREATE INDEX EMP_IDX02 ON EMP(NO, NAME); --NO과 NAME컬럼에 인덱스를 건다
DROP INDEX EMP_IDX02;

CREATE UNIQUE INDEX EMP_UK ON EMP(AGE); --에러: 해당 테이블의 유일한 값이여야 함
CREATE UNIQUE INDEX EMP_UK ON EMP(NO);


---------데이터 사전----------

SELECT * FROM DBA_TABLES; --DBA 권한으로 보는 테이블
SELECT * FROM DBA_INDEXES; --DBA 권한으로 보는 INDEX
SELECT * FROM DBA_VIEWS; --DBA 권한으로 보는 VIEW

--ALL(자기 자신 계정 + 다른 계정들)
SELECT * FROM ALL_TABLES; --ALL 권한으로 보는 테이블
SELECT * FROM ALL_INDEXES; --ALL 권한으로 보는 INDEX
SELECT * FROM ALL_VIEWS; --ALL 권한으로 보는 VIEW

--USER(자기 자신 계정)
SELECT * FROM USER_TABLES; --USER 권한으로 보는 테이블
SELECT * FROM USER_INDEXES; --USER 권한으로 보는 INDEX
SELECT * FROM USER_VIEWS; --USER 권한으로 보는 VIEW


--------프로시저----------

CREATE OR REPLACE PROCEDURE EX_PROC
(
   in_type IN VARCHAR2,
   in_name IN VARCHAR2
)
IS
	price NUMBER := 10000;
BEGIN
	INSERT INTO GIFT
	VALUES (11, in_type, in_name, price);
	COMMIT;
END EX_PROC;


SELECT * FROM GIFT;

CALL EX_PROC('가전제품','TV');












