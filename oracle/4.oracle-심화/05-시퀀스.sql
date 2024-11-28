DROP TABLE EMP;

CREATE TABLE EMP (
    NO   NUMBER,
    NAME VARCHAR2(20),
    AGE  NUMBER
);
SELECT * FROM STUDENT_GRADE;
SELECT * FROM EMP;


-- SEQUENCE
-- 오라클 에서는 자동 증가 컬럼을 사용할 수 없음.
-- 오라클에서 자동 증가를 실행하기 위해선 MAX(컬럼)+1 또는 시퀀스 사용.



CREATE SEQUENCE emp_seq
	INCREMENT BY 1 -- 시퀀스 간격
	START WITH 1 -- 시퀀스 시작 값
	MINVALUE 1 -- 최소값
	MAXVALUE 100 -- 최대 값
--	NOCYCLE -- 최대값 도달시 순환시킬지 여부 (반복) (랩 어라운드(Wrap Around))
	CYCLE -- 최대값 도달시 순환시킬지 여부 (반복) (랩 어라운드(Wrap Around))
--	CACHE -- 캐시 사용 여부
	NOCACHE 
--	ORDER; -- 요청 순서대로 값을 생성할건지 여부,,
	NOORDER;

-- 시퀀스 증가
SELECT EMP_SEQ.NEXTVAL
FROM DUAL;

-- 현재 시퀀스 조회
SELECT EMP_SEQ.CURRVAL
FROM DUAL;

-- 시퀀스 삭제
DROP SEQUENCE EMP_SEQ;

-- 시퀀스 사용
-- 둘리, 또치, 고길동이 각각 작동시 공통의 시퀀스를 증가시킴
INSERT INTO EMP VALUES (EMP_SEQ.NEXTVAL,'둘리',10);
INSERT INTO EMP VALUES (EMP_SEQ.NEXTVAL,'또치',10);
INSERT INTO EMP VALUES (EMP_SEQ.NEXTVAL,'고길동',10);

-- 현재 시퀀스값은 6인데 데이터값을 11부터 시작 할 경우
-- ALTER SEQUENCE : 시퀀스 기본 설정의 수정
ALTER SEQUENCE EMP_SEQ INCREMENT BY 4;
ALTER SEQUENCE EMP_SEQ MAXVALUE 300;
ALTER SEQUENCE EMP_SEQ NOCYCLE;
ALTER SEQUENCE EMP_SEQ CYCLE;

-- 테이블의 데이터 전부 삭제
TRUNCATE TABLE EMP;


SELECT * FROM EMP;

