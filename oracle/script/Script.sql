--내가 실행시킬 쿼리문에 커서가 있는 상태에서 ctrl + enter로 실행
select * from nls_database_parameters where parameter = 'NLS_CHARACTERSET';
--직원 테이블

CREATE TABLE emp (
	NO NUMBER,
	NAME VARCHAR2(20),
	AGR NUMBER
);
CREATE TABLE customer(
	--PRIMARY KEY : 테이블의 데이터를 구분하기 위한 컬럼(열)에 지정, 컬럼의 값은 중복X, 컬럼의 값은 not null
	id NUMBER PRIMARY KEY, -- 최대 38자리까지 지정 가능(소수점 포함)
	name varchar(20) NOT NULL, --컬럼의 값에 NULL을 넣을 수 없음
	address varchar2(100) -- 한글 최대 33자
);

CREATE TABLE orders(
	order_id NUMBER PRIMARY KEY,  -- 최대 38자리까지 지정 가능(소수점 포함)
	salemon_id NUMBER,
	order_data DATE NOT NULL --컬럼의 값에 NULL을 넣을 수 없음
);

--ALTER : 생성한 테이블의 컬럼 수정, 삭제, 추가

-- customer 테이블에 성별 컬럼 추가
ALTER TABLE CUSTOMER ADD gender varchar2(9);

-- 컬럼 이름 바꾸기
ALTER TABLE CUSTOMER  RENAME COLUMN gender TO gen;
ALTER TABLE CUSTOMER  RENAME COLUMN gen TO gender;

-- 컬럼 크기 바꾸기, default : 디폴트값 none
ALTER TABLE CUSTOMER  MODIFY gender varchar2(100);
ALTER TABLE CUSTOMER  MODIFY gender varchar2(100) NOT NULL;
ALTER TABLE CUSTOMER  MODIFY gender varchar2(100) DEFAULT 'NONE' NULL;

-- 컬럼 자료형, 제약조건 바꾸기
ALTER TABLE CUSTOMER  MODIFY gender NUMBER NOT NULL;
ALTER TABLE CUSTOMER  MODIFY gender NUMBER NULL;

-- 컬럼에 설명 달기
COMMENT ON COLUMN customer.GENDER  IS '성별';

-- 컬럼 삭제
ALTER TABLE CUSTOMER  DROP COLUMN name;
ALTER TABLE CUSTOMER  DROP COLUMN ADDRESS;
ALTER TABLE CUSTOMER  DROP COLUMN gender;
--ALTER TABLE CUSTOMER  DROP COLUMN id;

-- 테이블 삭제
DROP TABLE emp;
DROP TABLE CUSTOMER;
DROP TABLE ORDERS;