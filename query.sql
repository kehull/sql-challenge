CREATE TABLE TITLES (
	title_id VARCHAR UNIQUE NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY(title_id)
);

CREATE TABLE EMPLOYEES (
	emp_no INT UNIQUE NOT NULL,
	emp_title VARCHAR NOT NULL,
	birthdate VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_title) REFERENCES TITLES(title_id)
);

CREATE TABLE SALARIES (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no)
);

CREATE TABLE DEPARTMENTS (
	department_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY(department_no)
);

CREATE TABLE DEPT_MANAGER (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(dept_no) REFERENCES DEPARTMENTS(department_no),
	FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no)
);

CREATE TABLE DEPT_EMPLOYEE (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES EMPLOYEES(emp_no),
	FOREIGN KEY(dept_no) REFERENCES DEPARTMENTS(department_no)
);