SELECT * FROM T_ND;
SELECT * FROM T_ND FOR UPDATE;
TRUNCATE TABLE T_ND;
UPDATE T_ND T
	 SET T.CREATE_TIME =
			 (SELECT DISTINCT CREATE_TIME
					FROM T_ND A
				 WHERE A.CREATE_TIME IS NOT NULL)
 WHERE T.CREATE_TIME IS NULL;
-- Add/modify columns 
alter table T_DICTIONARY rename column code to ND_CODE;
alter table T_DICTIONARY rename column name to ND_NAME;
alter table T_DICTIONARY rename column type to ND_TYPE;
