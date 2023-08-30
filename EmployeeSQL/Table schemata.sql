-- Module 9 Assignment on SQL

drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

create table departments (
dept_no varchar(10) primary key,
dept_name varchar(30)
);

select * from  departments d;

create table dept_emp (
emp_no varchar(10),
dept_no varchar(10),
primary key (emp_no, dept_no),
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)
);

select * from dept_emp de;

create table dept_manager (
dept_no varchar(10),
emp_no varchar(10),
primary key (emp_no, dept_no),
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)
);

select * from  dept_manager dm ;

create table employees (
emp_no varchar(10) primary key,
emp_title varchar(10), 
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
foreign key (emp_title) references titles(title_id)
);

select * from employees e;

create table salaries(
emp_no varchar(10) primary key,
salary int,
foreign key (emp_no) references employees(emp_no)
);

select * from  salaries s;

create table titles(
title_id varchar(10) primary key,
title varchar(30)
);

select * from  titles t ;



