

select distinct on (emp_no) employees.emp_no, 
       employees.first_name, 
	   employees.last_name,
	   employees.birth_date,
	   dept_emp.from_date,
	   dept_emp.to_date,
	   titles.title
	   
into mentorship_eligibility

from employees

inner join dept_emp

on employees.emp_no = dept_emp.emp_no

inner join titles
on employees.emp_no = titles.emp_no

where (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
      and (dept_emp.to_date = '9999-01-01')

order by emp_no



