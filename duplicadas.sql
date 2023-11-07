BEGIN TRANSACTION;
	SELECT *
	INTO #Duplicatas
	FROM [DB_TESTE].[dbo].[tb_teste]
	WHERE 1 = 0; 

	INSERT INTO #Duplicatas
	SELECT distinct * from [DB_TESTE].[dbo].[tb_teste];
	

	truncate table [DB_TESTE].[dbo].[tb_teste];
	

	INSERT INTO  [DB_TESTE].[dbo].[tb_teste]
	SELECT * FROM #Duplicatas;
	
COMMIT;

DROP TABLE #Duplicatas;
