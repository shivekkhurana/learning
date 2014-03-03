#For each movie, return the title and the 'rating spread', that is, 
#the difference between highest and lowest ratings given to that movie. 
#Sort by rating spread from highest to lowest, then by movie title. 

select title, spread from Movie join 
(select mID, max(stars) - min(stars) as spread from Rating group by mID) X 
using(mID)
order by spread desc, title;


#Find the difference between the average rating of movies released before 1980 
#and the average rating of movies released after 1980. 
#(Make sure to calculate the average rating for each movie, 
#then the average of those averages for movies before 1980 and movies after. 
#Don't just calculate the overall average rating before and after 1980.) 

select before_1980-after_1980 from (select avg(avg_rating) as before_1980 from Movie join 
	(select mID, avg(stars) as avg_rating from Rating group by mID) X using(mID)
	where year<=1980) Y1, 
(select avg(avg_rating) as after_1980 from Movie join 
	(select mID, avg(stars) as avg_rating from Rating group by mID) X using(mID)
	where year>1980) Y2;

#Some directors directed more than one movie. For all such directors, return the 
#titles of all movies directed by them, along with the director name. 
#Sort by director name, then movie title. (As an extra challenge, 
#try writing the query both with and without COUNT.) 
select title, director from Movie where director in 
(select director from Movie  
group by director
having count(*)>1)
order by director, title;

#Find the movie(s) with the highest average rating. Return the movie title(s) 
#and average rating. (Hint: This query is more difficult to write in SQLite 
#than other systems; you might think of it as finding the highest average rating
#and then choosing the movie(s) with that average rating.) 

select mID, avg(stars) as avg_rating from Rating group by mID;

#>this query solves the exam but is not well formed
select title, avg_rating from Movie join (select mID, avg(stars) as avg_rating from Rating 
group by mID 
order by avg_rating desc
limit 1) X using(mID);