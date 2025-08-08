create table person(
id serial primary key,
name varchar(50),
city varchar(50)
);

insert into person(name , city )
values('sham', 'mumbai'),
('raju' , 'banglore'),
('paul','chennai');


select * from person;

-- add column 
alter table person 
add column age int default 0 ;

alter table person 
add column phone_no int;


-- drop column 

alter table person 
drop column age ;

-- rename column 
alter table person 
rename column name to fname;

--  rename table 

alter table person 
rename to persons;

alter table persons 
rename to person;

-- modify column 
alter table person
alter column fname 
set data type varchar(100);

alter table person
add column mob varchar(15) check(length(mob) >=10);

 
-- alter constrain 
alter table  person 
drop constraint person_mob_check;


