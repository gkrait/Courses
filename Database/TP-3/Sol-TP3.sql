



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
where H1.ID =L3.ID1 and H2.ID=L3.ID2 and H1.name< H2.name ;

#4
select name, grade from Highschooler where ID not in 
 (select ID1 from Likes) and ID not in (select ID2 from Likes)
 order by grade, name ;






#join
#1
select title 
from Movie  natural  left join Rating where stars is null ;


#2 
select name
from Highschooler left join Likes
on Highschooler.ID=Likes.ID1
where Likes.ID2 is null;




#3 
select name
from Highschooler left join Likes
on Highschooler.ID=Likes.ID2
where Likes.ID1 is null;




#max, min , avg

#1
select M.title from Movie M where M.year in    (select  min(year) from  Movie); 

#2 
select title, mID from Movie where mID in  (select Ra.mID from Rating Ra where Ra.stars in (select  max(Ra2.stars) from Rating Ra2));  



# Homework 
#1 
select H1.name, H1.grade, H2.name,H2.grade , H3.name, H3.grade
from Highschooler H1,  Highschooler H2, Highschooler H3,
(select  L1.ID1 a, L2.ID1 b, L2.ID2 c
from Likes L1 , Likes L2   where L1.ID2=L2.ID1 and L2.ID2<>L1.ID1  ) ans 
where ans.a=H1.ID and ans.b=H2.ID and ans.c=H3.ID  ;

#2 
select name, grade from Highschooler where ID in  (select ID from Highschooler H1 where H1.grade not in  
(select H2.grade from Highschooler H2, Friend where Friend.ID1=H1.ID   and Friend.ID2=H2.ID))  ;

#3 
select count(distinct name) from Highschooler H1 where ID in (select  ID1 from Friend where ID2 = 1709 )
or ID in (select ID1 from Friend where ID2 in  (select  ID1 from Friend where ID2 = 1709 )   ) ;


#4 
select bb.n1,bb.g1,bb.n2,bb.g2, H4.name, H4.grade
 from Highschooler H4 ,
  (select distinct  nofiends.name1 n1, nofiends.grade1 g1,   nofiends.name2 n2, nofiends.grade2 g2, F.ID1 id3 
      
      from Friend F, 
       (select H1.ID ID1,H1.name name1, H1.grade grade1 ,  H2.ID ID2,H2.name name2, H2.grade grade2
        from  Highschooler H1 , Highschooler H2
        where      H1.ID <> H2.ID and H2.ID in (select ID2 from Likes where ID1= H1.ID )
	    and H2.ID not in (select ID2 from Friend where ID1=H1.ID ) )  nofiends
  where F.ID1 in (select ID1 from Friend where ID2= nofiends.ID1 )  and 
  F.ID1 in (select ID1 from Friend where ID2= nofiends.ID2 )  ) bb 
where bb.id3 =H4.ID;