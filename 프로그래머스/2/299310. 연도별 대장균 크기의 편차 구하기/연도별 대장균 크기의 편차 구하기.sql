-- 코드를 작성해주세요

SELECT B.YEAR , B.MAX_SIZE - A.SIZE_OF_COLONY AS YEAR_DEV, A.ID
FROM ECOLI_DATA AS A
LEFT JOIN (SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, MAX(SIZE_OF_COLONY) AS MAX_SIZE FROM ECOLI_DATA 
GROUP BY YEAR(DIFFERENTIATION_DATE)) AS B
ON YEAR(A.DIFFERENTIATION_DATE) = B.YEAR
ORDER BY B.YEAR, YEAR_DEV