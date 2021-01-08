# DB for Facebook
create database Facebook; 
use Facebook; 



#User table
create table user(
uID int primary key auto_increment, 
name varchar(30) not null , 
age int default 18,
user_name varchar(30) unique,
check( 0<age< 120) ); 





#Post table
create table post(
content  text not null, 
uID int,
postingDate date  ,
primary key (uID, postingDate),
foreign key uID (uID) references user(uID) ) ; 



insert into user values(1,"George",25,"george.123"); 
insert into user(name, age,user_name) values("Marc",33,"Marc.214"); 


insert into post   values("Hi this is my first post",1,"2020-01-07"); 
insert into post   values("Hi this is my second post",1,"2020-01-10"); 
insert into post   values("I do not like facebook",2,"2020-01-12"); 





delete from user 
where uID =1; 



create table post(
content  text not null, 
uID int,
postingDate date  ,
primary key (uID, postingDate),
foreign key uID (uID) references user(uID)  
on delete restrict  on update cascade ) ; 
