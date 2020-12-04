
use Movie_rating
#inner join 
select * from  Movie M join Rating Ra on Ra.mID = M.mID ;    #equivalent to theta join in relational algebra where the condition is expressed by "on"


use Social_network;
select * from Likes join Friend using(ID1) ;   # a theta join that forces the equality only on ID1


#natural join 
use Movie_rating
select * from  Movie M  natural join Rating Ra ;    #equivalent to natural join in relational algebra, so no need to force the equality between columns of the same names




# left join

select * from Movie M left join Rating Ra on  M.mID=Ra.mID where  Ra.rID is null;    # It takes the combinations that satisfy the one condition, in addition, if a tuple in the left table has not match with the right table,
# it is combined with null tuple 

select * from Movie M natural  left join Rating Ra where    Ra.stars is null;  # It does the same as the previous query but using the natural join instead of the theta one. 