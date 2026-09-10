-- HR Analytics Dashboard
-- SQL Business Analysis
-- Author: Supriya Klara

-- 1. Employee Attrition Rate

SELECT
    Attrition,
    COUNT(*) AS employee_count
FROM employees
GROUP BY Attrition;

--------------------------------------------------

-- 2. Departments With the Highest Attrition

SELECT
    Department,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 3. Job Roles With the Highest Attrition

SELECT
    JobRole,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 4. Does Overtime Increase Employee Attrition?

SELECT
    OverTime,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY OverTime;

--------------------------------------------------

-- 5. Which Age Groups Experience the Highest Attrition?

SELECT
    Age,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY Age
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 6. Does Salary Affect Employee Attrition?

SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome), 2) AS average_income
FROM employees
GROUP BY Attrition;

--------------------------------------------------

-- 7. Which Education Fields Have the Highest Attrition?

SELECT
    EducationField,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY EducationField
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 8. Which Marital Status Groups Have the Highest Attrition?

SELECT
    MaritalStatus,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY MaritalStatus
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 9. Which Business Travel Category Has the Highest Attrition?

SELECT
    BusinessTravel,
    COUNT(*) AS attrition_count
FROM employees
WHERE Attrition = 'Yes'
GROUP BY BusinessTravel
ORDER BY attrition_count DESC;

--------------------------------------------------

-- 10. Which Employees Have the Longest Tenure?

SELECT
    JobRole,
    MAX(YearsAtCompany) AS longest_tenure
FROM employees
GROUP BY JobRole
ORDER BY longest_tenure DESC;