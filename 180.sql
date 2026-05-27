SELECT DISTINCT t.num AS `ConsecutiveNums` FROM(
    SELECT 
    num,
    LEAD(num,1) OVER (ORDER BY id DESC) AS `next_1`,
    LEAD(num,2) OVER (ORDER BY id DESC) AS `next_2`
    FROM logs
) t
WHERE t.num = t.next_1 and t.num = t.next_2; 