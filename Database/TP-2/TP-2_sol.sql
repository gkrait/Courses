#1 
	select distinct Movie.title from Movie
	where Movie.mID not in  (select distinct Rating.mID from Rating)

#2
select title from Movie where title like "%%a%%";



#3
select *
from  (select title from Movie) R1
 where  R1.title  not in  (select distinct M.title
from Movie M, Reviewer Re, Rating Ra
where Ra.mID =M.mID and Re.rID= Ra.rID and Re.name = 'Chris Jackson') ;


 #4
 select Reviewer.name,Movie.title
from Rating R1,Rating R2 ,Movie, Reviewer
where Movie.mID=R1.mID and Movie.mID=R2.mID and Reviewer.rID=R1.rID and   Reviewer.rID=R2.rID  and R1.mID=R2.mID and R1.rID=R2.rID  
and R1.ratingDate < R2.ratingDate and R1.stars < R2.stars;



# Social_network

#1 
select name from Highschooler where ID in 
 (select ID1 from Friend where  ID2 in  /* IDs of highschoolers that are frinds with Gabriel */
 (select ID from Highschooler where name ='Gabriel') ) /* choosing IDs of highscollers that are called Gabriel */


#2
select H1.name , H1.grade,H2.name , H2.grade  
from Highschooler H1, Highschooler H2, Likes L
where H1.ID = L.ID1 and   H2.ID = L.ID2 and H1.grade > H2.grade +1 ;

#3
select H1.name, H1.grade, H2.name, H2.grade from Highschooler H1, Highschooler  H2 ,
(select L1.ID1, L1.ID2 from  Likes L1,Likes  L2  where L1.ID1=L2.ID2 and L1.ID2=L2.ID1) L3
where H1.ID =L3.ID1 and H2.ID=L3.ID2 and H1.name< H2.name
;

#4 
select name, grade from Highschooler where ID not in 
 (select ID1 from Likes) and ID not in (select ID2 from Likes)
 order by grade, name ;