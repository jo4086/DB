--OT

SELECT * FROM EMP;

--SELECT DEPTNO, COUNT(DEPTNO), TRUNC(AVG(SAL),3), SUM(SAL), MIN(SAL), MAX(SAL)
SELECT DEPTNO, COUNT(DEPTNO), AVG(SAL), SUM(SAL), MIN(SAL), MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

-- 1
SELECT EMPNO, ENAME, SAL
FROM EMP;

-- 2
SELECT EMPNO AS "사원번호", ENAME AS "사원명", SAL AS "월급", SAL*12 AS "연봉"
FROM EMP;

-- 3employees 테이블에서 모든 종업원의 급여를 $300증가 시키기 위해서 덧셈 연산자를 사용하고
-- 결과에 이름과 SALARY, SALARY+300를 출력 합니다.
SELECT FIRST_NAME ||' ' ||LAST_NAME AS "이름", SALARY, SALARY +300
FROM EMPLOYEES;

-- 4EMPLOYEES 테이블에서 이름(last_name + first_name)과 연봉을
--"KING: 1 Year salary = 60000" 형식으로 출력하여라. 
SELECT FIRST_NAME || ' ' ||  LAST_NAME AS "성 이름",RPAD(LAST_NAME, 8, ' ')  ||' 1 Year salary = ' || TO_CHAR(SALARY*12, '999,999') || ' 달러' AS "연봉"
FROM EMPLOYEES;

-- 5 EMPLOYEES 테이블에서 입사일자가 1995년 1월 1일 이후에 입사한 사원의 정보를
	-- 사원번호, 성명, 담당업무, 급여, 입사일자, 부서번호를 출력하라
SELECT
	EMPLOYEE_ID AS "사원 번호" ,
	FIRST_NAME|| ' ' ||LAST_NAME AS "성명",
	JOB_ID AS "담당업무",
	SALARY AS "급여",
	TO_CHAR(HIRE_DATE, 'YYY-MM-DD') AS "입사일",
	DEPARTMENT_ID AS "부서 번호"
FROM EMPLOYEES;
--WHERE EXTRACT(HIRE_DATE >= TO_DATE('1995-01-01', 'YYYY-MM-DD'));

-- 6. EMPLOYEES 테이블에서 급여가 3000에서 5000사이의 정보를 성명, 담당업무, 급여, 부서번호를 출력하라.
SELECT
	FIRST_NAME || ' ' || LAST_NAME AS "성함",
	JOB_ID AS "담당업무",
	SALARY AS "급여",
	DEPARTMENT_ID AS "부서번호"
FROM EMPLOYEES
WHERE SALARY >= 3000 AND 5000 >= SALARY
ORDER BY SALARY ASC;

-- 7. EMPLOYEES 테이블에서 사원번호가 144, 176, 200 인 사원의 정보를 사원번호, 성명, 담당업무, 급여, 입사일자를 출력
SELECT
	EMPLOYEE_ID AS "사원번호",
	FIRST_NAME || '' || LAST_NAME AS "성함" ,
	JOB_ID AS "담당엄무", 
	SALARY AS  "급여", 
	TO_CHAR(HIRE_DATE, 'YYYY-MM-DD') AS "입사일"
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (144, 176, 200);

--문제8.emp 테이블 에서 업무가 SALESMAN 또는 MANAGER이면서
--급여가 1600, 2975, 2850이 아닌 모든 사원의 이름, 업무 및 급여를 표시하시오.
SELECT 
FIRST_NAME || ' ' || LAST_NAME AS "성함", 
JOB_ID AS "업무", 
SALARY AS "급여"
FROM EMPLOYEES
WHERE SALARY NOT IN (1600, 2975, 2850)
ORDER BY SALARY ASC;

--문제9.EMPLOYEES 테이블에서 부서별로
--인원수, 평균 급여, 최저급여, 최고급여, 급여의 합을 구하여 출력하라.
SELECT DEPARTMENT_ID AS "부서번호"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
ORDER BY DEPARTMENT_ID;

SELECT * FROM EMPLOYEES;

--문제 10. EMPLOYEES 테이블에서 부서 인원이 4명보다 많은 부서의
--부서번호, 인원수, 급여의 합을 구하여 출력하여라(GROUP BY, HAVING)

SELECT
DEPARTMENT_ID AS "부서번호",
COUNT(DEPARTMENT_ID) AS "인원수",
SUM(SALARY) AS "급여합"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(DEPARTMENT_ID) > 4
ORDER BY DEPARTMENT_ID;

--문제 11. EMPLOYEES 테이블에서 전체 월급이 10000을 초과하는 각 업무에 대해서
--업무와 월급여 합계를 출력하라.
--단 job_id가 'SA '로 시작하는 직원은 제외하고 월 급여 합계로 정렬(내림차순) 하라. 

SELECT
	JOB_ID AS "담당업무",
	SUM(SALARY) AS "월급 합"
FROM EMPLOYEES
WHERE
	SALARY>10000 AND
	NOT INSTR(JOB_ID,'SA')>0
GROUP BY JOB_ID
ORDER BY SUM(SALARY) DESC;

--문제12. emp테이블에서 사원이름 중 A가 포함된 사원이름을 구하고
--그 이름 중 앞에서 3자만 추출하여 출력
SELECT SUBSTR(ENAME,1,3) AS "A 사원"
FROM EMP
WHERE ENAME LIKE 'A%';
	
--문제13. 모든 사원의 이름, 부서번호, 부서이름을 표시하시오. (emp, dept)
SELECT 






