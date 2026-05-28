SELECT 
    d.name AS Department,
    t.name AS Employee,
    t.salary AS Salary
FROM (
    SELECT 
        name,
        salary,
        departmentId,
        RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rk
    FROM Employee
) t
INNER JOIN Department d ON t.departmentId = d.id
WHERE t.rk = 1;