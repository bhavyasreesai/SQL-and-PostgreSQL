--- Practice Round 4
--Q1. Find employees whose names start with either 'P' or 'N'.

--Q2. Find employees whose names do NOT contain the letter 'i', ignoring case.

--Q3. Find employees working in IT or HR, with salaries between 45,000 and 75,000. Sort their salaries in descending order.

--Q4. Find the three highest-paid employees who are NOT from Chennai.

--Q5. Sort employees by department alphabetically and, within each department, sort their names alphabetically
  ---
SELECT * FROM employees WHERE name LIKE 'P%' OR name LIKE'N%';
SELECT * FROM employees WHERE name NOT ILIKE '%i%';
SELECT * FROM employees WHERE department IN('IT','HR')  AND  salary BETWEEN 45000 AND 75000 ORDER BY salary DESC;
SELECT * FROM employees WHERE city != 'Chennai' ORDER BY salary DESC LIMIT 3;
SELECT * FROM employees ORDER BY department ASC AND name ASC;



SELECT * FROM employees WHERE name LIKE 'R%' OR name ILIKE '%a';
SELECT * FROM employees WHERE department = 'IT' AND salary >60000 ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2;
