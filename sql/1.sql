SELECT * FROM T_ND;
SELECT * FROM T_ND FOR UPDATE;
TRUNCATE TABLE T_ND;
UPDATE T_ND T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_ND A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;

SELECT * FROM T_ND_FD FOR UPDATE;
UPDATE T_ND_FD T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_ND_FD A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;
SELECT * FROM T_ND_FD_REL T FOR UPDATE;
TRUNCATE TABLE T_ND_FD_REL;
DELETE FROM T_ND_FD_REL T WHERE T.PARENT_ID = 126;
SELECT * FROM T_ND_REL FOR UPDATE;
SELECT * FROM T_ND_TABLE_MAPPING;
UPDATE T_ND T SET T.UPDATETIME = NULL;
SELECT A.ND_TYPE, A.ND_NAME, B.FD_NAME, A.DESCRIPT, B.DESCRIPT
	FROM T_ND A, T_ND_FD B, T_ND_FD_REL C
 WHERE A.ID = C.PARENT_ID(+)
	 AND B.ID(+) = C.FD_ID
 ORDER BY A.ID, B.ID;
SELECT * FROM T_DICTIONARY FOR UPDATE;
UPDATE T_DICTIONARY T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_DICTIONARY A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;

SELECT (SELECT B.ND_NAME FROM T_ND B WHERE B.ID = A.PARENT_ID) ND_NAME,
			 (SELECT B.ND_NAME FROM T_ND B WHERE B.ID = A.CHILDND_ID) ND_NAME,
			 (SELECT B.DESCRIPT FROM T_ND B WHERE B.ID = A.PARENT_ID) DESCRIPT,
			 (SELECT B.DESCRIPT FROM T_ND B WHERE B.ID = A.CHILDND_ID) DESCRIPT
	FROM T_ND_REL A
 START WITH PARENT_ID = 107
CONNECT BY PRIOR A.CHILDND_ID = A. PARENT_ID
 ORDER BY A.PARENT_ID;
SELECT * FROM T_DICTIONARY_VALUE;
