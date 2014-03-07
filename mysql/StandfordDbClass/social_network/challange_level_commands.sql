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
select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade from 
(
	select liker, liked, likers_friend from Friend 
	join 
	(
		select Friend.ID2 as likers_friend, liker, liked from Friend 
		join 
		(
			select Likes.ID1 as liker, Likes.ID2 as liked from Likes left join Friend 
			on Friend.ID1 = Likes.ID1 and Friend.ID2 = Likes.ID2
			where Friend.ID1 is null and Friend.ID2 is null
		) LL 
		on LL.liker = Friend.ID1
	) LFLL
	on LFLL.likers_friend = Friend.ID1 and LFLL.liked = Friend.ID2
) M, Highschooler H1, Highschooler H2, Highschooler H3
where H1.ID = liker and H2.ID = liked and H3.ID = likers_friend;