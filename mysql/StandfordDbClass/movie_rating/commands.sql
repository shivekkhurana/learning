select title from Movie where director = "Steven Spielberg";

select distinct year from Movie join Rating using(mID) where stars >= 4 order by year;

select title from Movie where mID not in (select mID from Rating);

select name from Rating join Reviewer using(rID) where ratingDate is null;

select name, title, stars, ratingDate from (Reviewer join Rating using(rID)) join Movie using(mID) 
order by name, title, stars;

#find all users who have rated the same movi