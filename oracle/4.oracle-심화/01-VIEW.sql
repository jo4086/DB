-- VIEW
-- 기본 테이블로부터 유도된 가상 테이블
-- 물리적으로 존재하지 않지만 테이블로 있는 것처럼 간주된다(뷰는 논리 테이블)

-- 장점
-- 1. 논리적 독립성: 테이블의 구조가 변경되더라도 뷰를 활용하는 프로그램을 수정할 필요가 없음
-- 2. 사용자 데이터 관리 용이: 다수 테이블에 있는 다양한 데이터에 대해 단순한 쿼리문 사용 가능
-- 3. 데이터 보안 용이: 중요한 보안 데이터가 있는 테이블은 접근하지 못하도록 하고 뷰에서 접근

-- 단점
-- 1. 인덱스 사용 불가
-- 2. 뷰 구조 변경 불가: 뷰는 삭제후 재생성을 통해서 뷰의 구조 변경이 가능함 
-- 3. 데이터 변경 제약 존재: 뷰로 조회된 데이터에 대한 삽입, 변경, 삭제에 약간의 제약이 있음

-- 에러예시
	-- INSERT INTO ACADEMY_SUDENT_NAME VALUES('김하서'); –에러 발생
	-- 무결성 제약조건 중 개체 무결성 위배(기본키는 UNIQUE, NOT NULL)

-- 문법
-- CREATE OR REPLACE VIEW 뷰이름 AS 
-- 생성할 테이블 쿼리문 ;  

CREATE OR REPLACE VIEW ACADEMY_ALL AS 
SELECT * FROM ACADEMY_A;

CREATE OR REPLACE VIEW ACADEMY_STUDENT_NAME AS 
SELECT STUDENT_NAME FROM ACADEMY_A;

CREATE OR REPLACE VIEW ACADEMY_JOIN AS 
SELECT T1.STUDENT_NO, T1.STUDENT_NAME 
FROM ACADEMY_A T1, ACADEMY_B T2
WHERE T1.STUDENT_NO = T2.STUDENT_NO;

-- VIEW 조회
SELECT * FROM ACADEMY_ALL;
SELECT STUDENT_NO, STUDENT_NAME FROM ACADEMY_ALL;

SELECT * FROM ACADEMY_JOIN;
SELECT STUDENT_NO, STUDENT_NAME FROM ACADEMY_JOIN;

SELECT * FROM ACADEMY_STUDENT_NAME;
SELECT STUDENT_NAME FROM ACADEMY_STUDENT_NAME;

-- VIEW 삭제
-- DROP VIEW VIEW 이름;
DROP VIEW ACADEMY_ALL;
DROP VIEW ACADEMY_JOIN;
DROP VIEW ACADEMY_STUDENT_NAME;


