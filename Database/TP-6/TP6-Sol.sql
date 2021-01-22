#1


	
create table likes(
uID_poster int ,
postingDate date ,
uID_liker int,
foreign key (uID_poster,postingDate)  references post(uID,postingDate)
 on delete cascade on update cascade ,
  foreign key (uID_liker)  references user(uID),

primary key (uID_liker,uID_poster,postingDate)
); 



create table comment(
uID_poster int ,
postingDate date ,
content text,
commenting_date date,
uID_commenter int,
foreign key (uID_poster,postingDate)  references post(uID,postingDate)
 on delete cascade on update cascade ,
 foreign key (uID_commenter)  references user(uID),
primary key (uID_commenter,commenting_date,uID_poster,postingDate), 
check( 0< CHAR_LENGTH(content) < 1000  ) 
); 

insert into comment values (2,"2020-02-10","nice post","2020-03-11",3)


#2
	create table activity (uID int  , foreign key uID (uID) references user(uID)  , description text,
	check(description= "The user adds a post" or 
	description="The user adds a comment" or  description="the user likes a post")  ); 

#Triggers 



delimiter $$ 
create trigger act_post
after insert on post 
for each row 
begin 
insert  into activity values (New.uID,"The user adds a post") ;
end$$ 
delimiter ; 

insert into post   values("I started to like facebook",2,"2020-01-13");  




delimiter $$ 
create trigger act_like
after insert on likes 
for each row 
begin 
IF new.uID_liker < 1000 Then
insert  into activity values (new.uID_liker,"the user likes a post") ;
end if;
end$$ 
delimiter ; 


insert into likes values (2,"2020-01-12",2);




delimiter $$ 
create trigger act_comm
after insert on comment 
for each row 
begin 
IF new.uID_commenter <5 Then
insert  into activity values (new.uID_commenter,"The user adds a comment") ;
end if;
end$$ 
delimiter ;	


insert into comment values (1,"2020-01-07","nice post","2020-03-11",1)



#2
delimiter $$ 
create trigger act_unlike
after delete on likes 
for each row 
begin 

delete from activity
where  uID=Old.uID_liker ;

end$$ 
delimiter ; 

delete from likes where uID_liker=2; 
