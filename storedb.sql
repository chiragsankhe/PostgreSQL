create database storedb;

-- customers
create table customers(
cust_id  serial primary key,
cust_name varchar(50)
);

-- orders
create table orders(
ord_id serial primary key,
ord_date date not null,
price numeric not null,
cust_id int not null,
foreign key (cust_id) references customers (cust_id)
);


insert into customers(cust_name)
values('raju'),('sham'),('paul'),('alex');

insert into orders(ord_date , cust_id , price)
values
('2024-01-01',1,250.00),
('2024-01-15',1,300.00),
('2024-02-01',2,150.00),
('2024-03-01',3,450.00),
('2024-04-04',2,550.00);


-- one to one 

-- cross join 
select * from customers cross join orders;

-- inner join 
select * from customers c
inner join orders o
on o.cust_id = c.cust_id;

-- using group by 

select c.cust_name , count(o.ord_id) from customers c
inner join orders o
on o.cust_id = c.cust_id
group by cust_name; 

-- left join 
select * from 
customers c 
left join orders o 
on o.cust_id = c.cust_id;


-- right join 
select * from 
customers c 
right join orders o 
on o.cust_id = c.cust_id;

