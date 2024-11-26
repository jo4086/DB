CREATE TABLE DEPT (
    DEPT_NO      NUMBER PRIMARY KEY,
    DEPT_NAME    VARCHAR2(20) NOT NULL,
    DEPT_ADDRESS VARCHAR2(100)
);

SELECT * FROM DEPT;

CREATE TABLE ESP (
	ESP_NO      NUMBER PRIMARY KEY,
    ESP_NAME    VARCHAR2(20) NOT NULL,
    GET_DEPT_NO NUMBER NOT NULL, --컬럼 생성
    CONSTRAINT FK_DEPT_NO FOREIGN KEY(GET_DEPT_NO) REFERENCES DEPT (DEPT_NO)  --외래키 설정

);
SELECT *FROM ESP;
COMMENT ON COLUMN ESP.GET_DEPT_NO IS 'TABLE=DEPT 외래키';

SELECT table_name, column_name, comments
FROM USER_COL_COMMENTS
WHERE table_name = 'ESP';

INSERT INTO DEPT VALUES (1, '인사부', null);
INSERT INTO DEPT VALUES (2, '연구부', null);
INSERT INTO DEPT VALUES (3, '홍보부', null);



INSERT INTO ESP VALUES (1001, '정소화', 3);
INSERT INTO ESP VALUES (1002, '김용욱', 1);
INSERT INTO ESP VALUES (1003, '고명석', 2);
INSERT INTO ESP VALUES (1004, '김연아', 4); -- 에러
INSERT INTO ESP VALUES (1005, '신짱구', 3);


UPDATE ESP SET GET_DEPT_NO = 4 WHERE ESP_NAME = '정소화';
UPDATE ESP SET GET_DEPT_NO =  WHERE ESP_NAME = '정소화';

SELECT * FROM DEPT;
SELECT * FROM ESP;