#Find all students who do not appear in the Likes table 
#(as a student who likes or is liked) and return their names and grades. 
#Sort by grade, then by name within each grade. 
select name, grade from Highschooler where ID not in (
	select ID1 as ID from Likes
	union select ID2 as ID from Likes
)
order by grade, name;

#For each student A who likes a student B where the two are not friends, 
#find if they have a friend C in common (who can introduce them!). For 
#all such trios, return the name and grade of A, B, and C. 

#select all people who like someone else but aren't friends
select Likes.* from Likes left join Friend 
on Friend.ID1 = Likes.ID1 and Friend.ID2 = Likes.ID2
where Friend.ID1 is null and Friend.ID2 is null;