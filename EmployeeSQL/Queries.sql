-- Data Analysis - Module 9 Challenge

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
select * from employees e;
select * from salaries s;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s 
on e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
select * from employees e;

select first_name, last_name, hire_date 
from employees e 
where hire_date >= '1986-01-01' and
      hire_date < '1986-12-31';


-- 3. List the manager of each department along with their department number, 
--    department name, employee number, last name, and first name.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
from departments d 
 join dept_manager dm    
 on d.dept_no = dm.dept_no 
 join employees e 
 on dm.emp_no = e.emp_no;


-- 4. List the department number for each employee along with that employee’s employee number, 
--    last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name  
from dept_emp de  
join employees e 
on de.emp_no = e.emp_no 
join departments d 
on de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee 
--    whose first name is Hercules and whose last name begins with the letter B.
select * from employees e;

select first_name, last_name, sex 
from employees e 
where first_name = 'Hercules' 
and last_name like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
select de.emp_no, e.last_name, e.first_name, d.dept_name 
from dept_emp de 
join employees e 
on de.emp_no = e.emp_no 
join departments d 
on de.dept_no = d.dept_no 
where d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, 
--    last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name 
from dept_emp de 
join employees e 
on de.emp_no = e.emp_no 
join departments d 
on de.dept_no = d.dept_no 
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names 
--    (that is, how many employees share each last name).
select * from employees e;

select last_name, 
count (last_name) as "frequency"
from employees e 
group by last_name 
order by count(last_name) desc;
