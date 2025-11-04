use student;

create table studentDetails(
id int primary key auto_increment,
name varchar(50) not null,
dept varchar(10) not null,
marks int not null
);

insert into studentdetails (name, dept, marks) values 
("karthi","ece",90),
("krishna","ece",99),
("suresh","ece",79),
("ravi","ece",49),
("sandhiya","ece",99),
("ram","cse",72),
("ramya","cse",52),
("teja","cse",65),
("revanth","cse",99),
("naveen","eee",96),
("aishwarya","eee",90);

select * from studentdetails;

select avg(marks) from studentdetails;

select * from studentdetails 
where marks>(select avg(marks) from studentdetails);

select * from actor;
select * from agelist;

create table agelist(
id int primary key auto_increment,
age int not null,
actorId int,
foreign key (actorId) references actor(id)
);

insert into agelist (age,actorId) values 
(53,1),(50,2),(51,6),(42,3),(45,4);

select actorId from agelist where age<50;

select * from actor where id in 
(select actorId from agelist where age>50);

select * from actor ac inner join 
agelist a on ac.id=a.actorId where a.age>50;

select * from studentdetails;

select marks from studentdetails where dept="eee";

select * from studentdetails where marks > all 
(select marks from studentdetails where dept="eee");


select * from studentdetails where marks >= all 
(select marks from studentdetails where dept="eee");

select avg(marks) from studentdetails where dept="eee";

select * from studentdetails s where marks > (
select avg(marks) from studentdetails where dept= s.dept
);