SELECT
t.department as Department,
t.name as Employee,
t.salary as Salary
FROM (
    SELECT
    e.name as name,
    e.salary as salary,
    d.name as department,
    DENSE_RANK() over (partition by d.id ORDER BY e.salary DESC) as `rank`
    FROM Employee e
    LEft join Department d on e.departmentId = d.id
) t
WHERE t.rank <= 3;
