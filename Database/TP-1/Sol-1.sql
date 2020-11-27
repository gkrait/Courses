#1
select * from Rating ;


#2 
select title, year from Movie where year < 1980; 


#3
select Reviewer.name, Rating.rID, Rating.stars  from  Reviewer ,Rating
where Rating.rID = Reviewer.rID   ;


#4
select distinct Reviewer.name from Reviewer,Rating where Rating.rID =Reviewer.rID  and Rating.mID=108;

#5
select title
 from Movie
 where director='Steven Spielberg';


 #6
 select distinct year 
from Movie, Rating
where Movie.mID=Rating.mID and Rating.stars>3 order by year;


#7
select distinct name
 from Reviewer,Rating
 where Reviewer.rId=Rating.rId and Rating.ratingDate is Null;

#8 
#Moved to TP-2