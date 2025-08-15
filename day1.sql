create database sqlday1;
use sqlday1;
CREATE TABLE departments (
    deptid int primary key,
    deptname VARCHAR(50)
);
INSERT INTO departments
VALUES (1, 'hr'), (2, 'it'), (3, 'sales');

CREATE TABLE employees (
    empid int PRIMARY KEY,
    empname varchar(50),
    deptid int not null,
    salary int not null,
    hiredate DATE,
    FOREIGN KEY (deptid) REFERENCES departments(deptid)
);
INSERT INTO employees
VALUES 
  (101, 'john', 1, 50000, '2018-02-12'),
  (102, 'alice', 2, 60000, '2019-07-10'),
  (103, 'bob', 1, 55000, '2020-05-05'),
  (104, 'carol', 3, 45000, '2017-09-20');

select * from employees;
select * from departments;

select * from employees;
select empname,salary from employees;
SELECT * from employees JOIN departments ON employees.deptid = departments.deptid;
select * from employees where salary>50000;
select * from employees where hiredate < '2020-01-01';
select * from employees order by salary desc;
select count(*) from employees;
select avg(salary) from employees;
SELECT deptname,max(salary) from employees JOIN departments ON employees.deptid = departments.deptid  group by deptname ;
SELECT deptname from employees JOIN departments ON employees.deptid = departments.deptid  group by deptname having count(employees.empname)>1;

