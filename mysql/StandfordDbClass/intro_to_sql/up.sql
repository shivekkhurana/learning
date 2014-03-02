create database if not exists DbClass;

use DbClass;

create table if not exists  College(
	cName varchar(255), 
	state varchar(255), 
	enrollment int
);

#desc College;
truncate College;
insert into College values("Standford", "CA", 15000);
insert into College values("Berkeley", "CA", 36000);
insert into College values("MIT", "MA", 10000);
insert into College values("Cornell", "NY", 21000);

#select * from College;

create table if not exists  Student(
	sID int(11) primary key auto_increment,
	sName varchar(255),
	GPA float,
	sizeHS int
);

#desc Student;
truncate Student;
insert into Student values(123, "Amy", 3.9, 1000);
insert into Student values(234, "Bob", 3.6, 1500);
insert into Student values(345, "Craig", 3.5, 500);
insert into Student values(456, "Doris", 3.9, 1000);
insert into Student values(567, "Edward", 2.9, 2000);
insert into Student values(678, "Fay", 3.8, 200);
insert into Student values(789, "Gary", 3.4, 800);
insert into Student values(987, "Helen", 3.7, 800);
insert into Student values(876, "Irene", 3.9, 400);
insert into Student values(765, "Jay", 2.9, 1500);
insert into Student values(654, "Amy", 3.9, 1000);
insert into Student values(543, "Craig", 3.4, 2000);

#select * from Student;

create table if not exists  Apply(
	sID int,
	cName varchar(255),
	major varchar(255),
	decision varchar(1)
);

#desc Apply;
truncate Apply;
insert into Apply values(123, "Standford", "CS", "Y");
insert into Apply values(123, "Standford", "EE", "N");
insert into Apply values(123, "Berkeley", "CS", "Y");
insert into Apply values(123, "Cornell", "EE", "Y");
insert into Apply values(234, "Berkeley", "biology", "N");
insert into Apply values(345, "MIT", "bioengineering", "Y");
insert into Apply values(345, "Cornell", "bioengineering", "N");
insert into Apply values(345, "Cornell", "CS", "Y");
insert into Apply values(345, "Cornell", "EE", "N");
insert into Apply values(678, "Standford", "history", "Y");
insert into Apply values(987, "Standford", "CS", "Y");
insert into Apply values(987, "Berkeley", "CS", "Y");
insert into Apply values(876, "Standford", "CS", "N");
insert into Apply values(876, "MIT", "biology", "Y");
insert into Apply values(876, "MIT", "marine biology", "N");
insert into Apply values(765, "Standford", "history", "Y");
insert into Apply values(765, "Cornell", "history", "N");
insert into Apply values(765, "Cornell", "psychology", "Y");
insert into Apply values(543, "MIT", "CS", "N");

#select * from Apply;