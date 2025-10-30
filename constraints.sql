create database student;

use student;

create table actor (
id int primary key auto_increment,
name varchar(50) NOT NULL,
email varchar(100) not null unique,
isActive boolean default 0
);

create table latestmovie (
id int primary key auto_increment,
movie varchar(50) not null,
actorId int not null,
foreign key (actorId) references actor(id)
);

insert into latestmovie (movie,actorId)
values ("madrasi",3);

select * from latestmovie;

insert into actor (name,email,isActive) VALUES
("vjs","vjs@gmail.com",1);

select * from actor;
