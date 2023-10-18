SELECT E.FName AS "Employee Name", E.LName AS "Employee Last Name",
       M.FName AS "Manager Name",  M.LName AS "Manager Last Name", E.Salary AS "Salary",E.town AS "Town"
FROM Employee E
LEFT OUTER JOIN Employee M
ON M.ID = E.SupervisedBy
WHERE E.Salary > 30000
ORDER BY E.town ASC;

SELECT Town, COUNT(*) as Count_Employee
FROM Employee
GROUP BY Town
HAVING COUNT(*) > 10;
SELECT E.FName AS "Employee Name", E.LName AS "Employee Last Name",
       M.FName AS "Manager Name",  M.LName AS "Manager Last Name", E.Salary AS "salary"
FROM Employee E
LEFT OUTER JOIN Employee M
ON M.ID = E.SupervisedBy
WHERE E.Salary = (SELECT MIN(Salary) FROM Employee);

Select * from Employee
ORDER BY ID ASC;