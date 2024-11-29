-- 시퀀스 추가
CREATE SEQUENCE seq_gift_no
START WITH 11       -- 시작 값
INCREMENT BY 1      -- 증가 값
NOCACHE;            -- 시퀀스를 캐싱하지 않음 (선택 사항)


DROP SEQUENCE SEQ_GIFT_NO;

CREATE OR REPLACE PROCEDURE EX_PROC

(

in_type IN VARCHAR2,

in_name IN VARCHAR2

)

IS

price NUMBER := 10000;


--ALTER SEQUENCE seq_gift_no INCREMENT BY 10;


--DROP SEQUENCE EMP_SEQ;
--ALTER SEQUENCE seq_gift_no START-WITH 11;


-- 현장
--DELETE FROM GIFT
--WHERE NO = 11;


--

BEGIN

INSERT INTO GIFT

VALUES (seq_gift_no.NEXTVAL, in_type, in_name, price);

COMMIT;

END EX_PROC;

-- Dbeaver

CALL EX_PROC('가전제품','TV');
CALL EX_PROC('전자기기','스마트폰');


-- SQLDeveloper
--EXEC EX_PROC('가전제품','TV');
--DELETE FROM GIFT
