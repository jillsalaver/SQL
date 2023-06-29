SELECT *
FROM ds_salaries;

SELECT DISTINCT work_year
FROM ds_salaries
ORDER BY work_year;

SELECT company_location, COUNT (*) AS 'Country Count'
FROM ds_salaries
GROUP BY company_location;


-- Average salary in USD for each country -- 
SELECT AVG(salary_in_usd) as 'AVG Country Salary', employee_residence
FROM ds_salaries
GROUP BY employee_residence
ORDER BY employee_residence, [AVG Country Salary];

-- Top 5 countries with highest average salary in USD -- 
SELECT TOP 5 employee_residence, AVG(salary_in_usd) as 'Average Country Salary'
FROM ds_salaries
GROUP BY employee_residence
ORDER BY [Average Country Salary] DESC;


-- Average Salary in USD per Year -- 
SELECT work_year, AVG (salary_in_usd) AS 'Average Global Salary'
FROM ds_salaries
GROUP BY work_year
ORDER BY work_year, [Average Global Salary];

-- Average Salary by Experience Level --
SELECT experience_level, AVG (salary_in_usd) AS 'Average Global Salary'
FROM ds_salaries
GROUP BY experience_level
ORDER BY experience_level, [Average Global Salary];

-- Average Salary by Job Title --
SELECT job_title, AVG (salary_in_usd) AS 'Average Global Salary'
FROM ds_salaries
GROUP BY job_title
ORDER BY job_title, [Average Global Salary];

-- Average Salary in USA --
SELECT AVG(salary_in_usd) as 'Average US Salary'
FROM ds_salaries
WHERE employee_residence = 'US';

-- Average Salary in All Other Countries --
SELECT avg(salary_in_usd) as 'Average Global Salary'
FROM ds_salaries
WHERE employee_residence <> 'US';

-- Average Remote Salaries -- 
SELECT avg(salary_in_usd)  as 'Average Remote Salary'
FROM ds_salaries
WHERE remote_ratio > 1;

-- Average In-Office Salaries --
SELECT avg(salary_in_usd)  as 'Average In-Office Salary'
FROM ds_salaries
WHERE remote_ratio = 0;