create database bank ;

create table employees(
emp_id serial primary key,
Fname varchar(50) not null,
Lname varchar(50) not null ,
email varchar(60) not null unique,
dept varchar(50) ,
salary int check(salary > 30000),
hire_date date not null default current_date
);

insert into employees(emp_id , Fname , Lname , email, dept , salary , hire_date)
values
(1,'raj', 'sharma', 'raj.sharma@example.com','IT' , 50000 , '2020-01-15'),
(2,'priya', 'singh', 'priya.singth@example.com','HR' , 45000 , '2019-03-22'),
(3,'arjun', 'varma', 'arjun.varma@example.com','IT' , 55000 , '2021-06-01'),
(4,'suman', 'patel', 'suman.patela@example.com','Finance' , 60000 , '2018-07-30'),
(5,'kavita', 'rio', 'kavita.rio@example.com','HR' , 47000 , '2020-11-10'),
(6,'amit ', 'gupta ', 'amit.gupta@example.com','Marketing' , 52000 , '2020-09-25'),
(7,'neha ', 'desai', 'neha.desai@example.com','IT' , 48000 , '2019-05-18'),
(8,'rahul','kumar', 'rahul.kumar@example.com','IT' , 53000 , '2021-02-14'),
(9,'anjali', 'mehta', 'anjali.mehta@example.com','Finance' , 61000 , '2018-12-03'),
(10,'vijay', 'nair', 'vijay.rair@example.com','Marketing' , 50000 , '2020-04-19');


insert into employees(emp_id,Fname , Lname , email,dept)
values
(11,'chirag','sankhe','chirag.sankhe@example.com','IT');

select * from employees;

-- slary > 50000

select * from employees 
where salary > 50000;

-- departmetn = IT or  HR

select * 
from employees
where dept = 'IT' or dept = 'HR';

-- using in

select * from employees 
where dept in ('IT', 'HR','Finance');

-- using ont in 

select * from employees 
where dept not in ('IT', 'HR','Finance');


-- dept = IT and salary >= 50000

select * 
from employees
where dept = 'IT' or salary >= 50000;

-- find employees whose salary is more than 55000

select * from employees 
where salary > 55000;

-- BETWEEN

select * from employees 
where salary between 40000 and 60000;

-- distinct 
select count(distinct(dept))
from employees 

-- order by asc , DESc 

select * from employees
order by Fname asc;

-- limit 

select * from employees
order by Fname asc
limit 3;

-- like 
select * from employees 
where Fname like 'a%';

select * from employees 
where dept like '_';


-- aggregation function 

-- count 
select count(*) from employees ;

-- sum 
select sum(salary) from employees;
-- max 
select max(salary) from employees;
-- min 
select min(salary) from employees;
-- avg 
select avg(salary) from employees;

-- using group by 

select avg(salary) as sal, dept 
from employees 
group by dept
order by sal asc;

select dept , count(emp_id) from employees 
group by dept;


-- string function 
-- concat 
select concat(Fname,' ',Lname)as fullName from employees;
-- concat_ws
select concat_ws('_',Fname,Lname,email)as fullName from employees;
--sbustring 
select substr(Fname , 1,3) from employees;
-- replace 
select replace(Fname ,'chirag' , 'CHIRAG') from employees;
-- reverse 
select reverse(fname) from employees;
-- length 
select Fname ,  length(Fname) from employees;

-- pratice 

SELECT * FROM employees
WHERE LENGTH(Fname) > 3;

-- left 
select left(Fname , 4) from employees;
--right 
select right(Fname , 4) from employees;

-- trim

select trim(email) from employees;

-- task 1 
select concat_ws(':',emp_id,Fname,Lname,dept) from employees;
-- task 2 
Select concat_ws(':',emp_id, concat(Fname,' ', Lname), dept , salary) from employees;
-- task 3 
select concat_ws(':',emp_id,Fname,upper(dept)) from employees;
-- task 4 
select concat(left(dept,1) , emp_id,' ',Fname) from employees;


-- case expression 

SELECT 
  CASE 
    WHEN salary >= 50000 THEN 'high'
    WHEN salary >= 45000 THEN 'medium'
    ELSE 'low'
  END AS sal_cat,
  COUNT(emp_id) AS total_employees
FROM employees
GROUP BY 
  CASE 
    WHEN salary >= 50000 THEN 'high'
    WHEN salary >= 45000 THEN 'medium'
    ELSE 'low'
  END;



select fname , salary,
case 
when salary > 0 then round(salary*.10)
end as bonus 
group by 
from employees;

