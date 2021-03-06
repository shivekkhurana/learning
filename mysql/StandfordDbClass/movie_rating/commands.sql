#Find the titles of all movies directed by Steven Spielberg. 
select title from Movie where director = "Steven Spielberg";

#Find all years that have a movie that received a rating of 
#4 or 5, and sort them in increasing order. 
select distinct year from Movie join Rating using(mID)
where stars >= 4 order by year;

#Find the titles of all movies that have no ratings.
select title from Movie where mID not in (select mID from Rating);

#Some reviewers didn't provide a date with their rating. 
#Find the names of all reviewers who have ratings 
#with a NULL value for the date. 
select name from Rating join Reviewer using(rID) where ratingDate is null;

#Write a query to return the ratings data in a more readable format: 
#reviewer name, movie title, stars, 
#and ratingDate. Also, sort the data, first by reviewer name, 
#then by movie title, and lastly by number of stars.
select name, title, stars, ratingDate from (Reviewer join Rating using(rID)) join Movie using(mID) 
order by name, title, stars;

select * from Movie;

#For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie. 
select name, title from Movie, Reviewer, (
	select R1.rID as rID, R1.mID as mID, R1.stars as stars1, R2.stars as stars2 
	from Rating R1 join Rating R2 
	on R1.rID = R2.rID and R1.mID = R2.mID
	where R1.ratingDate != R2.ratingDate
	group by R1.rID, R1.mID
	having R1.stars > R2.stars
) X 
where X.rID = Reviewer.rID and X.mID = Movie.mID;

#For each movie that has at least one rating, find the highest number of stars 
#that movie received. Return the movie title and number of stars. Sort by movie title.
select title, stars from Movie join (select mID, max(stars) as stars from Rating
group by mID) R using(mID) order by title;

#List movie titles and average ratings, from highest-rated to lowest-rated. 
#If two or more movies have the same average rating, list them in alphabetical order. 
select title, stars from Movie join (select mID, avg(stars) as stars from Rating
group by mID) R using(mID) order by stars desc, title;

#Find the names of all reviewers who have contributed three or more ratings. 
#(As an extra challenge, try writing the query without HAVING or without COUNT.) 
select name from Reviewer 
where rID in (select rID from Rating group by rID having count(*) >= 3);

##Data Modification Commands

#Add the reviewer Roger Ebert to your database, with an rID of 209. 
insert into Reviewer values(209, "Roger Ebert");

#Insert 5-star ratings by James Cameron for all movies in the database. 
#Leave the review date as NULL
insert into Rating select rID, mID, 5, null from 
(select rID from Reviewer where name = "James Cameron") RV , 
(select mID from Movie) MV;

#For all movies that have an average rating of 4 stars or higher, add 25 
#to the release year. (Update the existing tuples; don't insert new tuples.) 
update Movie set year = year+25 where mID in (select mID from (select mID, avg(stars) as avg_stars from Rating group by mID) M
where avg_stars >= 4);

#Remove all ratings where the movie's year is before 1970 or after 2000, 
#and the rating is fewer than 4 stars. 
delete from Rating where (rID, mID) in (select R1.rID, R1.mID from Rating R1 join Movie using(mID)
where stars < 4 and year>1970 and year<2000);
