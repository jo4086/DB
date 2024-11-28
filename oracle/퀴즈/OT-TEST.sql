-- 5 EMPLOYEES 테이블에서 입사일자가 1995년 1월 1일 이후에 입사한 사원의 정보를
	-- 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라
SELECT EMPLOYEE_ID AS "사원 번호" ,FIRST_NAME|| ' ' ||LAST_NAME AS "성명", SALARY AS "급여", TO_CHAR(HIRE_DATE, 'YYY-MM-DD') AS "입사일", DEPARTMENT_ID AS "부서 번호"
FROM EMPLOYEES;
--WHERE EXTRACT(HIRE_DATE >= TO_DATE('1995-01-01', 'YYYY-MM-DD'));

SELECT
	T1.EMPLOYEE_ID AS "사원 번호" ,
	T1.FIRST_NAME|| ' ' ||T1.LAST_NAME AS "성명",
	T2.JOB_TITLE AS "TITLE",
	T1.JOB_ID AS "담당업무",
	T1.SALARY AS "급여",
	TO_CHAR(T1.HIRE_DATE, 'YYY-MM-DD') AS "입사일",
	T1.DEPARTMENT_ID AS "부서 번호"
FROM
EMPLOYEES T1,
JOBS T2;

SELECT
T2.JOB_TITLE AS "업무",
T1.JOB_ID AS "담당업무",
T1.SALARY AS "월급"
--( SALARY> 10000) AS "월급"
FROM EMPLOYEES T1, JOBS T2
WHERE T1.SALARY>10000 AND NOT INSTR(T1.JOB_ID,'SA')>0;

HAVING 



`INSERT INTO employees VALUES
        ( 144
        , 'Peter'
        , 'Vargas'
        , 'PVARGAS'
        , '650.121.2004'
        , TO_DATE('09-JUL-1998', 'dd-MM-yyyy')
        , 'ST_CLERK'
        , 2500
        , NULL
        , 124
        , 50
        );
`

`INSERT INTO employees VALUES
        ( 201
        , 'Michael'
        , 'Hartstein'
        , 'MHARTSTE'
        , '515.123.5555'
        , TO_DATE('17-FEB-1996', 'dd-MM-yyyy')
        , 'MK_MAN'
        , 13000
        , NULL
        , 100
        , 20
        );
`

`INSERT INTO employees VALUES
        ( 107
        , 'Diana'
        , 'Lorentz'
        , 'DLORENTZ'
        , '590.423.5567'
        , TO_DATE('07-FEB-1999', 'dd-MM-yyyy')
        , 'IT_PROG'
        , 4200
        , NULL
        , 103
        , 60
        );

`