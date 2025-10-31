use student;

select * from actor;
select * from latestmovie;
select * from spouse;

select actor.name,actor.email,
latestmovie.movie as latestmovie
from actor inner join latestmovie ON 
actor.id=latestmovie.actorId;

select a.name,a.email,
l.movie as latestmovie
from actor a inner join latestmovie l ON 
a.id=l.actorId;

select *
from actor a left join latestmovie l ON 
a.id=l.actorId;

select *
from actor a inner join latestmovie l ON 
a.id=l.actorId;

create table spouse(
id int primary key auto_increment,
name varchar(50) not null,
actorId int not null,
foreign key (actorId) references actor(id)
);

insert into spouse (name,actorId) values 
("shalini",1),("jyothika",2),("sangeetha",6);

select a.name as actorName, a.email,a.isActive,
s.name as spouseName, l.movie as latestMovie from actor a inner join spouse s on
a.id=s.actorId inner join latestmovie l
on a.id=l.actorId order by a.name desc limit 1 offset 2;


select concat("His name is ",a.name,". He is married to ",
s.name,".He is acted in ",l.movie," recently....!"   )
 from actor a inner join spouse s on a.id=s.actorId
 inner join latestmovie l on a.id=l.actorId;
 
 create table size (id int primary key auto_increment,
 size varchar(10));
 
 insert into color (color) values ("red"),("blue"),("green");
 insert into size (size) values ("l"),("xl");
 
 select * from color;
 select * from size;
 
 select * from color cross join size;
 