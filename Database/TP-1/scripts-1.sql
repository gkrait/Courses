
/* A)  Creating and deleting database */

create database Company;  # Creating the database   Company

use Company;  #Using the database Company 

drop database Company;  # Deleting the database   Company
drop database   if exists Company; 


/* B)   Tables */
 # 1 )  Creating a table (without a primary key )
 create table Employee (
 ID int, 
 full_name varchar(30),
 salary int  
 ); 
 

 #2 )  inserting values (without a primary key )  
  INSERT INTO Employee VALUES(1, 'Jack Lazard*', 1600);
  INSERT INTO Employee VALUES(1, 'Marc Moroz*', 2600);  # Both have the same ID ! problem 


  INSERT INTO student(ID, full_name) VALUES(3, 'Claire');

 /* B') creating  Table with additional requirements  */ 
	    CREATE TABLE Employee (
	   ID int PRIMARY KEY AUTO_INCREMENT,   
	   full_name text  ,
	   salary int  DEFAULT 0
	    );





/*Example Movie */
create database Movie_rating;
use Movie_rating; 

create table Movie (
mID int  Primary key,
title varchar(22) NOT NULL,
pro_year int ,
director varchar(30)
) 





create table Name (
rID int  Primary key,
full_name varchar(40) unique
) ;



create table Rating (
rID int , 
mID int, 
stars int DEFAULT 2 , 
rating_date date
)
















/* C) Simple queries  */ 

select * from Employee  where ; 
