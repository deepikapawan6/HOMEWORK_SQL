CREATE TABLE Departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    PRIMARY KEY (dept_no)
     )
;

CREATE TABLE Dept_Emp (
    emp_no integer   NOT NULL,
    dept_no varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
     
);



CREATE TABLE Dept_Manager (
    dept_no varchar   NOT NULL,
    emp_no integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
    emp_no integer   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    gender varchar   NOT NULL,
    hire_date date   NOT NULL,
    primary key(emp_no)
);

CREATE TABLE Salaries (
    emp_no integer   NOT NULL,
    salary float   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    emp_no integer   NOT NULL,
    titles varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

