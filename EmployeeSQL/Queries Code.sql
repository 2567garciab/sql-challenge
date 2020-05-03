#1
SELECT public."Employees".emp_no, public."Employees".last_name, public."Employees".first_name, public."Employees".gender, public."Salaries".salary
FROM public."Employees"
JOIN public."Salaries"
ON public."Employees".emp_no = public."Salaries".emp_no

#2
SELECT first_name, last_name, hire_date
FROM public."Employees"
WHERE hire_date BETWEEN '1986-01-01' and '1987-01-01'

#3
SELECT public."Departments".dept_no,  public."Departments".dept_name,  public."Employees".emp_no,  public."Employees".last_name, public."Employees".first_name, public."Department_Manager".from_date, public."Department_Manager".to_date
FROM public."Departments"
JOIN public."Department_Manager"
ON public."Departments".dept_no = public."Department_Manager".dept_no
JOIN public."Employees"
ON public."Department_Manager".emp_no = public."Employees".emp_NO

#4
SELECT public."Department_Employee".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name
FROM public."Department_Employee"
JOIN public."Employees"
ON public."Department_Employee".emp_no = public."Employees".emp_no
JOIN public."Departments"
ON public."Department_Employee".dept_no = public."Departments".dept_no

#5
SELECT first_name, last_name
FROM public."Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

#6
SELECT public."Department_Employee".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name
FROM public."Department_Employee"
JOIN public."Employees"
ON public."Department_Employee".emp_no = public."Employees".emp_no
JOIN public."Departments"
ON public."Department_Employee".dept_no = public."Departments".dept_no
WHERE public."Departments".dept_name = 'Sales';

#7
SELECT public."Department_Employee".emp_no, public."Employees".last_name, public."Employees".first_name, public."Departments".dept_name
FROM public."Department_Employee"
JOIN public."Employees"
ON public."Department_Employee".emp_no = public."Employees".emp_no
JOIN public."Departments"
ON public."Department_Employee".dept_no = public."Departments".dept_no
WHERE public."Departments".dept_name = 'Sales' 
OR public."Departments".dept_name = 'Development'

#8
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM public."Employees"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC

