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
and (A1.major = "CS" and A2.major != "EE");


