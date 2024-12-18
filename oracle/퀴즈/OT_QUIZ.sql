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

select * from emp;
select ename, job, sal from emp
where (job = 'SALESMAN' OR job = 'MANAGER') AND sal not in('1600','2975','2850'); 

--문제9.EMPLOYEES 테이블에서 부서별로
--인원수, 평균 급여, 최저급여, 최고급여, 급여의 합을 구하여 출력하라.
SELECT
	DEPARTMENT_ID AS "부서번호",
	COUNT(DEPARTMENT_ID) AS "인원수",
	ROUND(AVG(SALARY),0) AS "평균",
	MIN(SALARY) AS "최저",
	MAX(SALARY) AS "최고",
	SUM(SALARY) AS "급여합"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

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

-- (실패) 개인월급이 1만을 초과하고 합하는것으로 문제를 품
SELECT
	JOB_ID AS "담당업무",
	SUM(SALARY) AS "월급 합"
FROM EMPLOYEES
WHERE
	SALARY>10000 AND
	NOT INSTR(JOB_ID,'SA')>0
GROUP BY JOB_ID
ORDER BY SUM(SALARY) DESC;

	-- 월급합이 1만 초과하는 조건으로 수정
	-- 및 중간에 SA로 시작하는 조건을 새로 정의
SELECT JOB_ID
FROM EMPLOYEES
	WHERE NOT INSTR(JOB_ID, 'SA') > 0;
--  WHERE NOT(INSTR(JOB_ID, 'SA') = 1)
--  WHERE SUBSTR(JOB_ID, 1, 2) != 'SA'
--  WHERE JOB_ID NOT LIKE 'SA%'
GROUP BY JOB_ID
HAVING SUM(SALARY) > 10000
ORDER BY SUM(SALARY) DESC;


--문제12. emp테이블에서 사원이름 중 A가 포함된 사원이름을 구하고
--그 이름 중 앞에서 3자만 추출하여 출력
	--첫 글자가 A로 시작하는 사원
SELECT SUBSTR(ENAME,1,3) AS "A 사원"
	FROM EMP
	WHERE ENAME
	LIKE 'A%';

	--이름중 A가 하나라도 포함된 사원
SELECT SUBSTR(ENAME,1,3) AS "A 사원"
	FROM EMP
	WHERE ENAME
	LIKE '%A%';
	
--문제13. 모든 사원의 이름, 부서번호, 부서이름을 표시하시오. (emp, dept)
-- 1번째 방법
SELECT ENAME AS "성함", T1.DEPTNO AS "부서번호", DNAME AS "부서명"
FROM DEPT T1, EMP T2
WHERE T1.DEPTNO = T2.DEPTNO;

-- 2번째 방법
SELECT ENAME AS "성함", DEPTNO AS "부서번호", DNAME AS "부서명"
FROM DEPT T1
NATURAL JOIN EMP T2;

--문제14. 업무가 MANAGER인 사원의 정보를
--이름, 업무, 부서명, 근무지 순으로 출력하시오. ( emp, dept)

SELECT
	ENAME AS "이름",
	JOB AS "업무",
	DNAME AS "부서명",
	LOC AS "지역"
FROM EMP T1
NATURAL JOIN DEPT T2
WHERE JOB = 'MANAGER';

--문제15. 커미션(emp테이블의 comm 컬럼이용)을 받고
--급여가 1,600이상인 사원의
--사원이름, 부서명, 근무지를 출력하시오.( emp, dept)
SELECT
	ENAME AS "이름",
	DNAME AS "부서명",
	LOC AS "근무지"
FROM EMP T1
NATURAL JOIN DEPT T2
WHERE SAL >= 1600
	AND COMM IS NOT NULL;

--문제16. 근무지가 [CHICAGO]인 모든 사원의
--1. 이름 2.업무 3.부서번호 4.부서이름을 표시하시오. ( emp, dept)
SELECT
	ENAME AS "1.성함",
	JOB AS "2.업무",
	DEPTNO AS "3.업무번호",
	DNAME AS "4.부서명",
	LOC AS "5.지역"
FROM EMP T1
NATURAL JOIN DEPT T2
WHERE LOC = 'CHICAGO';

--문제17. emp테이블 에서
--사원번호가 7900인 사원과 [같은 날짜에 입사한 사람]의
--1. 이름 2. 입사일을 출력하시오.

SELECT ENAME AS "이름",
HIREDATE AS "입사일"
FROM EMP
WHERE HIREDATE = (SELECT HIREDATE
				FROM EMP
				WHERE EMPNO = 7900);

--문제18. emp테이블에서
--직속상사(mgr)가 KING인 [모든 사원]의
--1. 이름 / 2. 급여를 출력하시오.
--SELECT * FROM EMP;
SELECT ENAME AS "이름", SAL AS "급여", MGR AS "상사번호"
FROM EMP
WHERE MGR = (SELECT EMPNO
			FROM EMP
			WHERE ENAME = 'KING');
		
--문제19. EMPLOYEES 테이블에서
--(급여의 평균)보다 적은 사원의 정보를 
--1.사원번호 / 2. 이름 / 3. 담당업무 / 4. 급여 / 5. 부서번호를 출력하여라

SELECT
	EMPLOYEE_ID AS "1. 사원번호",
	FIRST_NAME || ' ' || LAST_NAME AS "2. 이름",
	JOB_ID AS "3. 담당업무",
	SALARY AS "4. 급여",
	DEPARTMENT_ID AS "5. 부서번호"	
FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES)
ORDER BY SALARY ASC;

--문제20. EMPLOYEES 테이블에서
--(Kochhar의 급여)보다 [많은 사원]의 정보를
--1. 사원번호 / 2.이름 / 3. 담당업무/ 4. 급여를 출력하라.
SELECT
	EMPLOYEE_ID AS "사원번호",
	FIRST_NAME || ' ' || LAST_NAME AS "이름",
	JOB_ID AS "담당업무",
	SALARY AS "급여"
FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY
				FROM EMPLOYEES
				WHERE LAST_NAME = 'Kochhar');
			
--문제21. emp테이블 에서 (BLAKE와 같은 부서)에 있는 사원들의
--이름과 입사일을 구하는데 BLAKE는 제외하고 출력하시오.(BLAKE가 여러명일 수 있음)
SELECT * FROM EMP;
SELECT ENAME FROM EMP;
SELECT ENAME FROM EMP WHERE ENAME = 'BLAKE';

SELECT
	DEPTNO AS "부서번호",
	ENAME AS "이름",
	HIREDATE AS "입사일"
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO AS
						FROM EMP
						WHERE ENAME = 'BLAKE')
	AND ENAME != 'BLAKE'
ORDER BY ENAME;
			


























