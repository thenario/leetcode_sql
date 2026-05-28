SELECT id FROM (
    SELECT id,
    Temperature,
    LEAD(Temperature,1) over (order by recordDate DESC) as `prev`,
    LEAD(recordDate,1) over (order by recordDate DESC) as `prevd`,
    recordDate
    FROM Weather
) t
WHERE t.Temperature > t.prev and t.recordDate = DATE_ADD(t.prevd, INTERVAL 1 DAY);
-- SELECT w1.id
-- FROM Weather w1
-- INNER JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
-- WHERE w1.Temperature > w2.Temperature;