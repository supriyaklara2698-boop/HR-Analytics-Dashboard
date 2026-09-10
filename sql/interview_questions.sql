-- HR Analytics SQL Interview Questions
-- Author: Supriya Klara

-- 1. Count the total number of employees.

SELECT COUNT(*) AS total_employees
FROM employees;

--------------------------------------------------

-- 2. Count employees in each department.

SELECT
    Department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Department;

--------------------------------------------------

-- 3. Find the average monthly income by department.

SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS average_income
FROM employees
GROUP BY Department;

--------------------------------------------------

-- 4. Find employees who work overtime.

SELECT *
FROM employees
WHERE OverTime = 'Yes';

--------------------------------------------------

-- 5. Find the highest-paid employees.

SELECT
    JobRole,
    MAX(MonthlyIncome) AS highest_salary
FROM employees
GROUP BY JobRole;

--------------------------------------------------

-- 6. Count employees by marital status.

SELECT
    MaritalStatus,
    COUNT(*) AS employee_count
FROM employees
GROUP BY MaritalStatus;

--------------------------------------------------

-- 7. Find the average years at the company.

SELECT
    ROUND(AVG(YearsAtCompany), 2) AS average_years
FROM employees;

--------------------------------------------------

-- 8. Count employees by education field.

SELECT
    EducationField,
    COUNT(*) AS employee_count
FROM employees
GROUP BY EducationField;

--------------------------------------------------

-- 9. Find employees with more than 10 years of experience.

SELECT *
FROM employees
WHERE TotalWorkingYears > 10;

--------------------------------------------------

-- 10. Find employees with the highest work-life balance rating.

SELECT *
FROM employees
WHERE WorkLifeBalance = 4;