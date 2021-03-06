use DbClass;

select * from Student
where GPA > 3.6;

select * from Student;


select Student.sName, Apply.cName, Apply.major from Student, Apply
where Student.sID = Apply.sID;

select sName, GPA, decision from Student, Apply
where Student.sId = Apply.sID
and sizeHS < 1000
and cName = 'Standford'
and major = 'CS';

select distinct College.cName from College, Apply
where College.enrollment > 20000
and Apply.cName = College.cName
and Apply.major = 'CS';

select Student.sID, sName, GPA, College.cName, enrollment from Student,Apply, College
where Apply.sID = Student.sID
and Apply.cName = College.cName
order by GPA desc , enrollment;

select Apply.sID, sName, cName, major from Student, Apply
where Apply.sID = Student.sID
and major like '%bio%';

select * from Student,Apply
where Apply.sID = Student.sID;

select A.sID, sName, cName, major from Student S, Apply A
where A.sID = S.sID and major like '%bio%';

select S1.sID, S1.sName, S2.sID, S2.sName, S1.GPA
from Student S1, Student S2
where S1.GPA = S2.GPA and S1.sID < S2.sID;

select sName from Student 
union 
select cName from College;

#intersect : get ids of all students who have applied to cs and ee major
#> mysql doesn't have intersect. 

select distinct A1.sID from Apply A1, Apply A2 
where A1.sID = A2.sID 
and ((A1.major = "CS" and A2.major = "EE") or (A1.major = "EE" and A2.major = "CS")); 
#the instructor didn't use the or clause because both instants of ie. cs ee and ee cs are 
#included in result and if we get even 1 our work is done


#diff : get ids of all students who have applied to cs but not to ee major
select distinct A1.sID from Apply A1, Apply A2 
where A1.sID = A2.sID 
and (A1.major = "CS" and A2.major != "EE"); #todo

##Subqueries in WHERE

#ids and names of all students who have applied to CS in some college

#method 1
select distinct Apply.sID, Student.sName from Apply, Student
where major="CS" 
and Apply.sID = Student.sID;

#method 2 (using subqueries)
select sName, sID from Student
where sID in (select sID from Apply where major="CS");


#get ids of all students who have applied to cs but not to ee major
select sID, sName from Student
where sID in (select sID from Apply where major="CS")
and sID not in (select sID from Apply where major="EE");

#find all colleges such that there is some other college in the same state
#>exist operator, correlated references

select cName, state from College C1
where exists (select * from College C2 
	where C1.state = C2.state and C1.cName != C2.cName
);

#find the college with largest enrollment without using max operator
select cName, enrollment from College C1
where not exists (select cName from College C2 
	where C1.enrollment < C2.enrollment
);

#student with highest GPA
select sName, GPA from Student
where GPA >= all(select GPA from Student);

#find all students who are not from the smallest highschool
select sName, sizeHS from Student
where sizeHS > any (select distinct sizeHS from Student);

##subqueries in FROM and SELECT

#select all students whose scaled GPA - scaled(GPA) > 1
select  sName, GPA, GPA*(sizeHS/1000.0) as scaledGPA from Student
where GPA - GPA*(sizeHS/1000.0) > 1 or GPA*(sizeHS/1000.0) - GPA > 1 ;
#above is redundant because we had to writed scaledGPA expression thrice

#above query with reduced redundancy
select * 
from (select sName, GPA, GPA*(sizeHS/1000.0) as scaledGPA from Student) as S
where abs(GPA - scaledGPA) > 1;

#pair colleges with highest GPA of their applicants
select Student.sName, College.cName, Student.GPA from College, Student, Apply
where Student.sID = Apply.sID and Apply.cName = College.cName
and Student.GPA >= all(select GPA from Student, Apply 
						where Student.sID = Apply.sID and Apply.cName = College.cName);
#above query crosses Student and Apply twice. There should be a better way out

##Aggregation min, max, sum, avg, count

#avg. gpa of all students
select avg(GPA) from Student;

#min gpa of student applying to CS
select min(GPA) from Student, Apply 
where Student.sID = Apply.sID and Apply.major = "CS";

#avg GPA of all students who applied to CS
select avg(GPA) from Student
where sID in (select sID from Apply where major="CS");

#students such that number of students with same GPA is equal to number
#of other student with same sizeHS
select * from Student S1
where (
	(select count(*) from Student S2 
		where S1.GPA = S2.GPA and S1.sID != S2.sID)  =
	(select count(*) from Student S2 
		where S1.sizeHS = S2.sizeHS and S1.sID != S2.sID)
);

#Amount by which the average GPA of students applying to 
#computer science exceeds the average GPA of students not applying to CS

select CS.avgGPA - NonCS.avgGPA as CS_minus_NonCS_GPA
from (
	(select avg(GPA) as avgGPA from Student 
		where sID in (select sID from Apply where major="CS")) as CS, 
	(select avg(GPA) as avgGPA from Student 
		where sID not in (select sID from Apply where major="CS")) as NonCS
);

#number of applications to each college
select cName, count(cName) as "Number of applications"
from Apply group by cName;

#college enrollments by state
select state, sum(enrollment) as "Total enrollment"
from College
group by state;

#min and max gpas of students who have applied to each college and major 
select cName, major, min(GPA), max(GPA) from Student, Apply
where Student.sID = Apply.sID
group by cName, major;

#number of colleges that have been applied to by each student
select distinct  Student.sName, count(distinct Apply.cName), Apply.cName from Student, Apply 
where Student.sID = Apply.sID
group by Apply.sID;


#list colleges with fewer than 5 applications
select cName from Apply
group by cName
having  count(*) < 5;

select distinct cName from Apply A1
where 5 > (select count(*) from Apply A2 where A1.cName=A2.cName);

#colleges with less than 5 applicants
select cName from Apply
group by cName
having count(distinct sID) < 5;

#majors whose applicant's maximum GPA is lower than the average
select major from Apply, Student
where Student.sID = Apply.sID
group by major
having max(GPA) < (select avg(GPA) from Student);

##NULL values
insert into Student values(432, "Kevin", NULL, 1500);
insert into Student values(321, "Lori", NULL, 2500);

select count(distinct GPA) from Student; #gives 7
select distinct GPA from Student; #gives 8

#> count doesn't counts distinct values

##DATA modification statements

insert into College values("Carnegie Mellon", "PA", 11500);

#have all students who haven't applied anywhere yet to apply to carnegie mellon CS
insert into Apply (select sID, "Carnegie Mellon", "CS", null from Student 
where sID not in (select sID from Apply));

#admit to carnegie mellon EE all students who applied for 
#EE somewhere and were turned down
insert into Apply select sID, "Carnegie Mellon", "EE", "Y" from Apply 
where major="CS" and decision="N";

SET SQL_SAFE_UPDATES=0;

#delete all students who have applied to two different majors
delete from Student where sID in 
(select sID from Apply
group by sID
having count(distinct major) > 2);

#find applicants to carnegie mellon with GPA<3.6 but turn them into economics major
#> not working on workbench
update Apply
set decision="Y" and major="economics"
where cName like "Car%"
and sID in (select sID from Student where GPA < 3.6);

#give all students a max possible GPA
update Student
set GPA = (select max(GPA) from Student);

#accept all students to all
update Apply 
set decision="Y";

##Joins
#> inner join is equivalent to ra's theta join
#> natural join is equivalent to ra's natural join
#> inner join using(attrs)
#> outer join (left, right and full) similar to theta join, except that when tuples
# >don't match the condition, they are still added to results and padded with null values

#select student name and majors to which they have applied
select distinct sName, major from Student join Apply
on Student.sID = Apply.sID;

#find names and GPAs of all students who came from HS size < 1000 and have applied
#to standford CS major
select sName, GPA from Student join Apply 
on Student.sID = Apply.sID 
where Student.sizeHS < 1000
and Apply.major = "CS"
and Apply.cName = "Standford"; 

#basic info after joining all three realtions

select Student.sID, GPA, Apply.major, College.cName, College.enrollment
from (Student join Apply on Student.sID = Apply.sID) join College
on College.cName = Apply.cName;

select sName, major from Student inner join Apply
on Student.sID = Apply.sID;
#> above : is a natural join, below is the same but explicit
select sName, major from Student natural join Apply;

select sName, major from Student join Apply using(sID); #explicit natural join

#find all students with same gpa
select * from Student S1 join Student S2 using(GPA)
where S1.sID < S2.sID;

#find sName, id, collge they are applyng to and the major
select sName, Student.sID, cName, major from Student inner join Apply using(sID);

#find sName, id, collge they are applyng to and the major
##also include students who haven't applied anywhere
select sName, Student.sID, cName, major from Student left outer join Apply using(sID);
#> left outer join takes tuples which do not satisfy the join condition from 
#left table (Student) and pads them with null values in the result
# such tuples are also called dangling tuples

#add Apply tuples that don't match any students
insert into Apply values(321, "MIT", "history", "N");
insert into Apply values(321, "MIT", "psychology", "Y");

select sName, Student.sID, cName, major from Student right outer join Apply using(sID); 

#full outer join

select sName, Student.sID, cName, major from Student left outer join Apply using(sID)
union
select sName, Student.sID, cName, major from Student right outer join Apply using(sID);