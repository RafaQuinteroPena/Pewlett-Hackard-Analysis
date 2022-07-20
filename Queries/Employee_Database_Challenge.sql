

select employees.emp_no, 
       employees.first_name, 
	   employees.last_name,
	   titles.title,
	   titles.from_date,
	   titles.to_date

into retirement_titles

from employees

inner join titles

on employees.emp_no = titles.emp_no

where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')

order by emp_no




-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;


SELECT COUNT (title), title
into retiring_titles
FROM unique_titles
GROUP BY title
order by count desc