SELECT 
    STUDENT_NO AS "넘버", 
    STUDENT_NAME AS "학생", 
    'A' AS "소속"
FROM ACADEMY_A
UNION ALL
SELECT 
    STUDENT_NO AS "넘버", 
    STUDENT_NAME AS "학생", 
    'B' AS "소속"
FROM ACADEMY_B;

SELECT 
    STUDENT_NO AS "넘버", 
    STUDENT_NAME AS "학생", 
    'A 테이블' AS "출처",
    NULL AS "B 학생"
FROM ACADEMY_A

UNION ALL

SELECT 
    STUDENT_NO AS "넘버", 
    NULL AS "A 학생",
    'B 테이블' AS "출처",
    STUDENT_NAME AS "학생"
FROM ACADEMY_B;

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
