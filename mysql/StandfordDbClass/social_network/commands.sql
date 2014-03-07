#Find the names of all students who are friends with someone named Gabriel.
select name from Highschooler where ID in (select ID2 as ID from Friend where ID1 in 
(select ID from Highschooler where name="Gabriel"));

#For every student who likes someone 2 or more grades younger than themselves, 
#return that student's name and grade, and the name and grade of the student they like.
select H1.name as liker, H1.grade as liker_grade, H2.name as liked, H2.grade as liked_grade 
from (Likes join Highschooler H1 on Likes.ID1 = H1.ID) 
join Highschooler H2 on Likes.ID2 = H2.ID
where H1.grade - H2.grade>=2;

#For every pair of students who both like each other, return the name and grade of 
#both students. Include each pair only once, with the two names in alphabetical order. 
select H1.name, H1.grade, H2.name, H2.grade from Likes L1, Highschooler H1, Highschooler H2
where L1.ID1 in (select ID2 from Likes)
and L1.ID2 in (select ID1 from Likes)
and ID1 = H1.ID and ID2=H2.ID
and H1.name < H2.name;
#the less then removes duplicate tuples. (see next query)

select * from Likes L1
where L1.ID1 in (select ID2 from Likes)
and L1.ID2 in (select ID1 from Likes);

#Find names and grades of students who only have friends in the same grade. 
#Return the result sorted by grade, then by name within each grade. 
select distinct H1.name, H1.grade from (Friend join Highschooler H1 on Friend.ID1 = H1.ID)
join Highschooler H2 on Friend.ID2 = H2.ID
where H1.name < H2.name
and H1.grade = H2.grade
and H1.ID not in (
	select H1.ID from (Friend join Highschooler H1 on ID1 = H1.ID)
	join Highschooler H2 on ID2 = H2.ID
	where H1.name < H2.name
	and H1.grade != H2.grade
);

