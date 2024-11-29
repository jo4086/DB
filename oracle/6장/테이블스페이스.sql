CREATE TABLESPACE gpt_space
DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\GPT_SPACE.DBF' SIZE 100M
AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

CREATE TABLE gptTable (
    gpt1 NUMBER PRIMARY KEY, -- PRIMARY KEY로 자동 인덱스 생성
    gpt2 NUMBER,
    gpt3 NUMBER
) TABLESPACE gpt_space;

SELECT * FROM GPTTABLE;


CREATE INDEX idx_gpt2
ON gptTable(gpt2)
TABLESPACE gpt_space;

INSERT INTO gptTable (gpt1, gpt2, gpt3) VALUES (1, 10, 100);
INSERT INTO gptTable (gpt1, gpt2, gpt3) VALUES (2, 20, 200);
INSERT INTO gptTable (gpt1, gpt2, gpt3) VALUES (3, 30, 300);

SELECT table_name, tablespace_name
FROM user_tables
WHERE table_name = 'GPTTABLE';

SELECT  table_name, tablespace_name, index_name
FROM user_indexes
WHERE table_name = 'GPTTABLE';

SELECT  table_name, tablespace_name, index_name
FROM user_indexes
WHERE table_name = 'MYT2';

SELECT table_name, tablespace_name
FROM user_tables
WHERE tablespace_name = 'USERS';

SELECT username, default_tablespace
FROM dba_users
WHERE username = '현재 사용자 이름';


SELECT t.tablespace_name, f.file_name, f.bytes/1024/1024 AS size_mb
FROM user_tablespaces t
JOIN dba_data_files f
ON t.tablespace_name = f.tablespace_name;


SELECT tablespace_name, file_name, bytes/1024/1024 AS size_mb
FROM dba_data_files;


SELECT owner, table_name, tablespace_name
FROM dba_tables
WHERE tablespace_name = 'USERS';

SELECT owner, table_name, tablespace_name
FROM dba_tables
WHERE tablespace_name = 'SYSTEM';

SELECT owner, table_name, tablespace_name
FROM dba_tables
WHERE OWNER = 'HR';

SELECT owner, table_name, tablespace_name
FROM dba_tables
WHERE OWNER = 'OT';