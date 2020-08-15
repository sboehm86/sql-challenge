--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select emp.emp_no, emp.last_name, emp.first_name,emp.sex,sal.salary
From employees as emp
Left Join salaries as sal
on (emp.emp_no = sal.emp_no)
Order By emp.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986. (select * from employee)
Select emp.first_name, emp.last_name, emp.hire_date
From employees as emp
Where hire_date between '1986-01-01' and '1986-12-31'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dm.dept_no, d.dept_name, dm.emp_no, emp.last_name, emp.first_name
From dept_manager as dm
	Inner Join departments as d
		On(dm.dept_no=d.dept_no)
	Inner Join employees as emp
		On(dm.emp_no = emp.emp_no);

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select emp.emp_no,emp.last_name,emp.first_name,dep.dept_name
From employees as emp
	Inner Join dept_employee as de
		On (emp.emp_no=de.emp_no)
	Inner Join departments as dep
		On (de.dept_no=dep.dept_no)
Order By emp.emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select emp.first_name, emp.last_name, emp.sex
From employees as emp
Where first_name = 'Hercules' and last_name Like 'B%';

--6. List all employees in the Sales department, their employee number, last name, first name, and department name.
Select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
From employees as emp
	Inner Join dept_employee as de
		On(emp.emp_no=de.emp_no)
	Inner Join departments as dep
		On(de.dept_no=dep.dept_no)
Where dep.dept_name='Sales'
Order By emp.emp_no;

--7. List all employees in the Sales and Development departments,their employee number, last name, first name, and department name.
Select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
From employees as emp
	Inner Join dept_employee as de
		On(emp.emp_no=de.emp_no)
	Inner Join departments as dep
		On(de.dept_no=dep.dept_no)
Where dep.dept_name='Sales' or dep.dept_name='Development'
Order By emp.emp_no;

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select emp.last_name, count(emp.last_name)
From employees as emp
Group By emp.last_name
Order By Count (emp.last_name);
