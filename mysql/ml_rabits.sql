create table if not exists Scenarios(
	id integer primary key AUTO_INCREMENT,
	description varchar(255)
);

create table if not exists Connections (
	id integer primary key auto_increment,
	from_id integer,
	to_id integer,
	weight integer
);

truncate table Scenarios;
truncate table Connections;

select * from Scenarios;

use ml_rabbits_in_a_cage;
show tables;

select description from Scenarios where id in (
	select to_id from Connections where from_id in (
		select id from Scenarios where description like "rabbits in a cage and predators and predators have constraints and rabbits of opposite sex"
	) order by weight DESC
) limit 1;
