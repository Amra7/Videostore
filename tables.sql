
create table if not exists Member(
member_id integer primary key,
name varchar(20) not null,
surname varchar(20) not null
);

create table if not exists Employee(
employee_id integer primary key,
name varchar(20) not null,
surname varchar(20) not null
);

create table if not exists Actor(
actor_id integer primary key,
name varchar(20) not null,
surname varchar(20) not null
);

create table if not exists Director(
director_id integer primary key,
name varchar(20) not null,
surname varchar(20) not null
);

create table if not exists Genre(
genre_id integer primary key,
genre varchar(20) not null
);

create table if not exists Movie(
movie_id integer ,
title varchar (200) not null,
rating real default 0,
genre_id varchar(20) ,
director_id integer ,
actor_id integer ,
duration integer ,
foreign key(genre_id) references Genre,
foreign key (director_id) references Director,
foreign key (actor_id) references Actor,
primary key (movie_id, genre_id, director_id,actor_id)
);

create table if not exists Videostore(
movie_id integer ,
dateinput integer not null,
dateoutput integer not null,
member_id integer ,
employee_id ,

foreign key (movie_id) references Movie,
foreign key (member_id) references Memeber,
foreign key (employee_id) references Employee,
primary key( movie_id, member_id, employee_id)
);







