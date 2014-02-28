use DbClass;

select 
    *
from
    Student
where
    GPA > 3.6;

select 
    *
from
    Student;


use DbClass;

select 
    Student.sName, Apply.cName, Apply.major
from
    Student,
    Apply
where
    Student.sID = Apply.sID;

select 
    sName, GPA, decision
from
    Student,
    Apply
where
    Student.sId = Apply.sID
        and sizeHS < 1000
        and cName = 'Standford'
        and major = 'CS';

select distinct
    College.cName
from
    College,
    Apply
where
    College.enrollment > 20000
        and Apply.cName = College.cName
        and Apply.major = 'CS';

select 
    Student.sID, sName, GPA, College.cName, enrollment
from
    Student,
    Apply,
    College
where
    Apply.sID = Student.sID
        and Apply.cName = College.cName
order by GPA desc , enrollment;

select 
    Apply.sID, sName, cName, major
from
    Student,
    Apply
where
    Apply.sID = Student.sID
        and major like '%bio%';

select 
    *
from
    Student,
    Apply
where
    Apply.sID = Student.sID;
select 
    A.sID, sName, cName, major
from
    Student S,
    Apply A
where
    A.sID = S.sID and major like '%bio%';

select 
    S1.sID, S1.sName, S2.sID, S2.sName, S1.GPA
from
    Student S1,
    Student S2
where
    S1.GPA = S2.GPA and S1.sID < S2.sID;select 
    sName
from
    Student 
union select 
    cName
from
    College;


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


#list colleges with fewer than 5 applicants
select cName from Apply
group by cName
having  count(*) < 5;
