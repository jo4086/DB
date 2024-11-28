-- 집합연산자 (UNION(+ ALL), INTERSECT, MINUS)
-- UNION ALL: 중복데이터 포함O 테이블들의 합집합 결과 출력
SELECT * FROM ACADEMY_A
UNION ALL
SELECT * FROM ACADEMY_B;

SELECT STUDENT_NAME FROM ACADEMY_A
UNION ALL
SELECT STUDENT_NAME FROM ACADEMY_B;

-- UNION : 중복데이터 포함X 테이블들의 합집합 결과 출력
SELECT * FROM ACADEMY_A
UNION
SELECT * FROM ACADEMY_B;

SELECT STUDENT_NO FROM ACADEMY_A
UNION
SELECT STUDENT_NO FROM ACADEMY_B;

-- INTERSECT : 교집합 (A ∩ B)
SELECT *
FROM ACADEMY_A
INTERSECT
SELECT *
FROM ACADEMY_B;

-- MINUS : 차집합 (A-B)
SELECT * 
FROM ACADEMY_A
MINUS
SELECT * 
FROM ACADEMY_B
