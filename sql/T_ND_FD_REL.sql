SELECT * FROM T_ND_FD_REL ORDER BY ID;
SELECT * FROM T_ND_FD_REL ORDER BY ID FOR UPDATE;
TRUNCATE TABLE T_ND_FD_REL;
UPDATE T_ND_FD_REL T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_ND_FD_REL A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;
SELECT A.TYPE, A.NAME, B.NAME, A.DESCRIPT, B.DESCRIPT, B.DB_FIELD
	FROM T_ND A, T_ND_FD B, T_ND_FD_REL C
 WHERE A.ID = C.PARENT_ID(+)
	 AND B.ID(+) = C.FD_ID
	 AND A.ID = 104
 ORDER BY A.ID, B.ID;
UPDATE T_ND_FD_REL T SET T.FD_ID = 7 WHERE T.FD_ID = 102;
