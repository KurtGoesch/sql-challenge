create table departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(20)
)
;
create table titles (
	title_id VARCHAR(10) NOT NULL PRIMARY KEY,
	title VARCHAR(25)
)
;
create table employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(15),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id)
	REFERENCES titles(title_id)
)
;
create table dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
)
;
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
)
;
create table salaries (
	emp_no INT NOT NULL,
	salary MONEY,
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
)
;
