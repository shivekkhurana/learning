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

#Find the difference between the number of students in the school 
#and the number of different first names. 
select count(ID)-count(distinct name) from Highschooler;

#What is the average number of friends per student?
#(Your result should be just one number.) 
select avg(num_friends) from (select count(*) as num_friends from Friend
group by ID1) N;

#Find the number of students who are either friends with Cassandra 
#or are friends of friends of Cassandra. Do not count Cassandra, 
#even though technically she is a friend of a friend. 
select count(distinct F1.ID2) + count(F2.ID2)
from (Highschooler join Friend F1 on F1.ID1 = ID) 
join Friend F2 on F2.ID1 = F1.ID2 
and F2.ID2 != (select ID from Highschooler where name="Cassandra")
where name="Cassandra";

#Find the name and grade of the student(s) with the greatest number of friends. 
select name, grade from (select ID1, count(*) as num_friends from Friend group by ID1) C 
join Highschooler on ID1=ID
where num_friends = (
	select max(num_friends) from (
		select ID1, count(*) as num_friends from Friend group by ID1
	) A
);