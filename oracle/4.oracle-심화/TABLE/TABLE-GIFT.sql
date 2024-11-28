DROP TABLE GIFT;

CREATE TABLE GIFT (
    NO    NUMBER,
    TYPE  VARCHAR2(20),
    NAME  VARCHAR2(20),
    PRICE NUMBER
);
INSERT INTO GIFT VALUES(1,'식품','참치세트',100000);
INSERT INTO GIFT VALUES(2,'생활용품','샴푸세트',200000);
INSERT INTO GIFT VALUES(3,'생활용품','세차용품세트',300000);
INSERT INTO GIFT VALUES(4,'생활용품','주방용품세트',400000);
INSERT INTO GIFT VALUES(5,'운동장비','산악용자전거',500000);
INSERT INTO GIFT VALUES(6,'가전제품','LCD모니터',600000);
INSERT INTO GIFT VALUES(7,'가전제품','노트북',700000);
INSERT INTO GIFT VALUES(8,'가전제품','벽걸이TV',800000);
INSERT INTO GIFT VALUES(9,'가전제품','드럼세탁기',900000);
INSERT INTO GIFT VALUES(10,'가전제품','양쪽문냉장고',1000000);


SELECT * FROM GIFT;