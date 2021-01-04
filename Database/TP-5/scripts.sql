# inserting values 
insert into Movie values (109,"Joker", 2019,"Todd Phillips")

insert into Rating 
 ( select  null, mID, 2,"2021-01-01" from Movie where mID not in ( select Rating.mID from Rating  ) )	

 # Deleting values  

 delete from  Rating  where rID is null ;


# Update tables 

update  Rating 
set ratingDate = "2020-02-11"
where    ratingDate is null ;


update  Movie 
set title = "LOTR", year= 2000, Director= "George"
where    mID= 109 ;


#Alter 

Alter table Movie 
add  budget  int default 10000;

ALTER TABLE `Movie` CHANGE COLUMN `budget`  `cost`  int default 20000;


Alter table Movie 
drop  cost ; 	





##FOREIGN KEY
create database Facebook;
use Facebook; 


create table User(uID int primary key, name text );

create table post(pId int primary  key , uID int not null, foreign key (uID) REFERENCES User(uID), content text )  ;
