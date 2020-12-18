

#1
(select mID, max(stars) from Rating  group  by mID  )
#2
(select mID, avg(stars),min(stars) from Rating  group  by mID having min(stars)>2  )


#3
select M.title, av.mav 
from  Movie M ,
(select mID, avg(stars) mav  from Rating group by mID)  av
where M.mID =av.mID
order by av.mav desc, M.title ;


#4
select distinct H1.name, H1.grade
from  Friend F, Highschooler H1
where F.ID1= H1.ID  and H1.grade >=  (select max(grade) from Highschooler where ID in (select ID2 from Friend F2 where F.ID1=F2.ID1  )) 
and H1.grade <=  (select min(grade) from Highschooler where ID in (select ID2 from Friend F2 where F.ID1=F2.ID1  ) )
order by H1.grade, H1.name;



#5 


#with count 
select Re.name
from 
(select rID, count(*) from Rating group by rID having count(*) >2) R, Reviewer Re 
where R.rID= Re.rID;



#without count 
select R.name
 from  
Reviewer R, 
( select  distinct R1.rID id1
from Rating R1 , Rating R2 , Rating R3 
where R1.rID=R2.rID and R2.rID=R3.rID  
   and ( (R1.ratingDate <>R2.ratingDate and R2.ratingDate<>R3.ratingDate and R1.ratingDate<>R3.ratingDate )or 
 (R1.mID <>R2.mID and R2.mID<>R3.mID and R1.mID<>R3.mID ) ) ) W
 where R.rID = W.id1 






#6

select name, grade from Highschooler where ID in  (select ID1 id  from Friend 
group by Friend.ID1
having  count(ID2) =
(select max(T.a) from (select count(*) a from Friend group by ID1) T)) ;

#7 
select title, avg_rat,Rev_num  from 
(select mID, avg(stars) avg_rat,count(rID) Rev_num  from Rating    group  by mID having count(rID) >2 ) Q1
natural join 
(select mID, title from Movie )  Q2 ; 