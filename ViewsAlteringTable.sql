use student;

create table actressList (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) unique not null,
mobile bigint not null unique,
age int not null
);

insert into actresslist (name, email, mobile, age) values
("pooja","ph@gmail.com",7904887772,29);

select * from actresslist;

create view actressInfo as 
select id as actressId, email, mobile from actresslist;

select * from actressinfo;

select  * from actresslist;
alter table actresslist add column isActive boolean,
 ADD COLUMN colName int;
 
alter table actresslist 
 ADD COLUMN noOfMovies int AFTER name;
 
ALTER TABLE actresslist DROP COLUMN noOfMovies,
 DROP COLUMN isActive;
 
ALTER TABLE actress DROP COLUMN movies;
 
 ALTER TABLE actresslist MODIFY COLUMN noOfMovies bigint;
 
 ALTER TABLE actresslist RENAME COLUMN noOfMovies TO movies;
 
 ALTER TABLE actresslist RENAME TO actress;
 
 select * from actress;
 select * from noofmovies;
 delete from noofmovies where id=1;
 
 create table noofmovies (
id int primary key auto_increment,
movies int,
actressId int

 );
 
 ALTER TABLE noofmovies ADD CONSTRAINT 
 foreign key (actressId) references actress(id);
 
 insert into noofmovies (movies,actressId) values 
 (50,10);

 DROP TABLE color;
 
 alter table actress modify column mobile bigint after name;