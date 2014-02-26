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
