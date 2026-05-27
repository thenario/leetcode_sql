SELECT(SELECT DISTINCT salary FROM Employee AS e
ORDER BY salary DESC
LIMIT 1
OFFSET 1)as SecondHighestSalary;