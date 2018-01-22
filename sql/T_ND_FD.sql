SELECT * FROM T_ND_FD ORDER BY ID;
SELECT * FROM T_ND_FD ORDER BY ID FOR UPDATE;
TRUNCATE TABLE T_ND_FD;
UPDATE T_ND_FD T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_ND_FD A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;
