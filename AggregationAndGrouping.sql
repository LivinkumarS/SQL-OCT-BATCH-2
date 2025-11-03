use student;

select power(id,2), name from actor;

create table productdetails (
id int primary key auto_increment,
name varchar(50) not null unique,
price double,
category varchar(10) not null
);

insert into productdetails (name, category) values 
("gabbage",'veg');


select * from product;
select * from productdetails;


select sum(price) as result from product;
select count(*) from productdetails;
select count(price) from productdetails;

select avg(price) from product;
select max(price) from product;
select min(price) from product;

select  category,avg(price) from product
 group by category HAVING avg(price)>50;
 
SELECT category,max(price) as max_price from product
 GROUP BY category HAVING max(price)<100;