-- 시퀀스 생성
CREATE SEQUENCE BOARD_SEQ
INCREMENT BY 1  -- 증가숫자 1
START WITH 1    -- 시작값 1
MAXVALUE 1000 -- 최대값 1000
MINVALUE 1 --  최소값 1
NOCYCLE -- 기본값은 NOCYCLE. CYCLE로 지정하면 최대값에 도달했을때 다시 순환

-- 시퀀스 삭제
DROP SEQUENCE BOARD_SEQ;

select?BOARD_SEQ.CURRVAL FROM DUAL

select BOARD_SEQ.nextval FROM DUAL
 
 