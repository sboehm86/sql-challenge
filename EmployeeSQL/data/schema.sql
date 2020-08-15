Create Table Employees(
	emp_no integer not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	Primary Key (emp_no)
);

Create Table Departments(
	dept_no varchar not null,
	dept_name varchar not null,
	primary Key (dept_no),
	unique (dept_name)
);
	
Create Table Dept_Manager(
	dept_no varchar not null,
	emp_no integer not null,
	Foreign Key (emp_no) References Employees(emp_no),
	Foreign Key (dept_no) References Departments(dept_no),
	Primary Key (emp_no,dept_no)
);
	
Create Table Dept_Employee(
	emp_no integer not null,
	dept_no varchar not null,
	Foreign Key (emp_no) References Employees(emp_no),
	Foreign Key (dept_no) References Departments(dept_no),
	Primary Key (emp_no,dept_no)
);
	
Create Table Titles(
	title_id varchar not null,
	title varchar not null,
	Primary Key (title, title_id)
);

Create Table Salaries(
	emp_no integer not null,
	salary integer not null,
	Foreign Key (emp_no) References Employees(emp_no),
	Primary Key (emp_no)
);