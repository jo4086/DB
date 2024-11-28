-- 서브쿼리 (포함 부분집합)
-- SELECT절 : 스칼라 서브쿼리
-- FROM절 : 인라인 뷰
-- WHERE절, HAVING 절 : 중첩 서브쿼리

WITH A_ROWS AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY STUDENT_NO) AS RN, 
        STUDENT_NO AS "A 넘버", 
        STUDENT_NAME AS "A 학생"
    FROM ACADEMY_A
),
B_ROWS AS (
    SELECT 
        ROW_NUMBER() OVER (ORDER BY STUDENT_NO) AS RN, 
        STUDENT_NO AS "B 넘버", 
        STUDENT_NAME AS "B 학생"
    FROM ACADEMY_B
)
SELECT 
    A_ROWS."A 넘버", 
    A_ROWS."A 학생", 
    B_ROWS."B 넘버", 
    B_ROWS."B 학생"
FROM A_ROWS
FULL OUTER JOIN B_ROWS
ON A_ROWS.RN = B_ROWS.RN;


-- 행이 2개 이상일 때 다중 행 서브쿼리
-- 다중 퀄럼 서브쿼리

SELECT  * FROM ACADEMY_A;
SELECT T1.STUDENT_NO AS "A 넘버", T2.STUDENT_NO AS "B 넘버", T1.STUDENT_NAME AS "A 학생", T2.STUDENT_NAME AS "B 학생"
FROM ACADEMY_A T1, ACADEMY_B T2;

-- 스칼라 서브쿼리
SELECT T1.STUDENT_NO,
       (SELECT T2.STUDENT_NAME
        FROM ACADEMY_B T2
        WHERE T2.STUDENT_NO = T1.STUDENT_NO) AS NAME 
FROM ACADEMY_A T1;

-- 인라인뷰
-- 인라인 뷰 COLUMN
SELECT T1.STUDENT_NO, T2.STUDENT_NAME
FROM ACADEMY_A T1,
       (SELECT STUDENT_NO, STUDENT_NAME
        FROM ACADEMY_B) T2
WHERE T1.STUDENT_NO = T2.STUDENT_NO; 

-- 인라인뷰 SELECT * 
SELECT T1.STUDENT_NO, T2.STUDENT_NAME
FROM ACADEMY_A T1,
	(SELECT *
	 FROM ACADEMY_B) T2
WHERE T1.STUDENT_NO = T2.STUDENT_NO;

-- 인라인뷰 코드 COLUMN
SELECT STUDENT_NO, STUDENT_NAME
FROM ACADEMY_B;
-- 인라인뷰 코드 SELECT * 
SELECT *
FROM ACADEMY_B;

--
--

-- 비연관 서브쿼리
SELECT * 
FROM ACADEMY_A
WHERE STUDENT_NAME = (SELECT STUDENT_NAME
						FROM ACADEMY_B
						WHERE STUDENT_NO = 1003);

-- 연관 서브쿼리
SELECT STUDENT_NO
FROM ACADEMY_A T1
WHERE STUDENT_NAME = (SELECT T2.STUDENT_NAME
						FROM ACADEMY_B T2
						WHERE T2.STUDENT_NO = T1.STUDENT_NO);

-- 단일행 서브쿼리
					
-- 서브쿼리가 1건 이하의 데이터를 반환
-- 단일행 비교 연산자와 같이 사용(=, <, >, >=, <=)

		-- 예제1. A학원과 B학원 테이블 단일행으로 조회하기
SELECT * 
FROM ACADEMY_A
WHERE STUDENT_NAME = (SELECT STUDENT_NAME 
                      FROM ACADEMY_B 
                      WHERE STUDENT_NO = 1003);

-- 다중행 서브쿼리(Multi Row Subquery)
	-- 서브쿼리가 여러건의 데이터를 반환
	-- 다중행 비교 연산자와 같이 사용(IN)

		-- 예제1. A학원과 B학원 테이블 다중행으로 조회하기

		-- 잘못된 문법
SELECT * 
FROM ACADEMY_A
WHERE STUDENT_NAME = (SELECT STUDENT_NAME 
                      FROM ACADEMY_B 
                      WHERE STUDENT_NO = 1003 OR STUDENT_NO = 1004);
		-- 올바른 문법.. 연관서브쿼리가 아닌데 여러행을 반환할 경우 in을 사용한다    
SELECT * 
FROM ACADEMY_A
WHERE STUDENT_NAME IN (SELECT STUDENT_NAME 
                      FROM ACADEMY_B 
                      WHERE STUDENT_NO = 1003 OR STUDENT_NO = 1004);
    	-- (공통쿼리)                 
SELECT STUDENT_NAME 
FROM ACADEMY_B 
WHERE STUDENT_NO = 1003 OR STUDENT_NO = 1004;

-- 다중 컬럼 서브쿼리(Multi Row Subquery)
	-- 서브쿼리가 여러컬럼의 데이터를 반환
	-- 다중행 비교 연산자와 같이 사용(IN)

		-- 예제1. A학원과 B학원 테이블 다중 컬럼으로 조회하기
SELECT * 
FROM ACADEMY_A
WHERE (STUDENT_NAME, STUDENT_NO) IN (SELECT STUDENT_NAME, STUDENT_NO 
                                     FROM ACADEMY_B 
                                     WHERE STUDENT_NO = 1003 OR STUDENT_NO = 1004);


SELECT T2.STUDENT_NAME
FROM ACADEMY_B T2, ACADEMY_a T1
WHERE T2.STUDENT_NO = T1.STUDENT_NO;

