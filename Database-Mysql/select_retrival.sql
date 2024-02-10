#Data Retrieval from - Single Table

# Below are methods or ways we can import the data
# Select
# Where
# Distinct 
# Like 
# Simply Print all movies Record  
select * from moviesdb.movies;
select movie_id,title from moviesdb.movies;

select MOVIE_ID,TITLE from moviesdb.movies where industry = "Hollywood";

select MOVIE_ID,TITLE from moviesdb.movies where industry = "Bollywood";

select DISTINCT industry from moviesdb.movies

select * from moviesdb.movies where title LIKE 'THOR%'

select * from moviesdb.movies where title LIKE '%America%'

select count(*) from moviesdb.movies where industry = "Hollywood";

#Retrive Data using numeric Query 

select * from moviesdb.movies  where imdb_rating >9;

select * from moviesdb.movies  where imdb_rating BETWEEN  7 and 8;

select * from moviesdb.movies  where release_year BETWEEN  2018 and 2022;

select * from moviesdb.movies  where release_year in (2018,2019,2022);

select * from moviesdb.movies  where release_year = 2022 or release_year = 2019 or release_year = 2018 

select * from moviesdb.movies  where imdb_rating is  not null;

select * from moviesdb.movies  where studio=''

# ORder by
# LIMIT
# Offset 

select * from moviesdb.movies where industry = "Hollywood" Order by imdb_rating;
select * from moviesdb.movies where industry = "Hollywood" Order by imdb_rating desc;

select * from moviesdb.movies where industry = "Bollywood" order by imdb_rating desc LIMIT 5;

select * from moviesdb.movies where industry = "Bollywood" order by imdb_rating  LIMIT 5;


# Summary analytics ( Count,MAX,MIN,AVG,Group_by)

# How many movies do we have in movies table

select count(*) from moviesdb.movies;

# Calculate Higest Imdb rating of bollywood movie

select max(imdb_rating)  from moviesdb.movies where industry = "Bollywood";

# Homework - Calculate Higest Imdb rating of Hollywood movie
# Homework - Calculate lowest Imdb rating of Hollywood movie as well Bollywood movie

select avg(imdb_rating)  from moviesdb.movies where industry = "Bollywood";

# Print min, max,avg rating of marvel studio movies
select min(imdb_rating) , max(imdb_rating) , round(avg(imdb_rating),2)  from moviesdb.movies where studio = "Marvel Studios";

# Print count of movies by idustry : 

#one way -- two queries 
select count(title)  from moviesdb.movies where industry = "Bollywood";
select count(title)  from moviesdb.movies where industry = "Hollywood";

# Group by 

select industry,count(title) from moviesdb.movies group by industry ;

select industry,avg(imdb_rating) from moviesdb.movies group by industry

# Homwework
# Print max imdb_rating of movies by idustry :
# Print min imdb_rating of movies by idustry

# Module Having Clause 

--  Print all the years where more than 2 movies where released 

select release_year, count(*) as movies_count from moviesdb.movies group by release_year having movies_count > 2 order by movies_count ;

select * from moviesdb.actors;

select year(curdate()) from dual;

select name,birth_year, (year(curdate()) - birth_year) as age from moviesdb.actors;

# Homework -  Print profit for every movie --  revenue - budget 

select * from moviesdb.financials;

select movie_id, revenue - budget,unit,currency, if (currency = 'USD',(revenue - budget) * 83.03,revenue - budget) as converted_profit   from moviesdb.financials;

# Retrival from multiple table

# Print all movies title with their buget

select a.movie_id, a.title , b.budget  from moviesdb.movies a , moviesdb.financials b where a.movie_id = b.movie_id;
 
select * from moviesdb.actors;

select * from moviesdb.movies;

select a.title,c.name from moviesdb.movies a,moviesdb.movie_actor b, 
moviesdb.actors c  where a.title = "K.G.F: Chapter 2" and a.movie_id = b.movie_id 
and c.actor_id = b.actor_id ;

select a.movie_id, a.title , b.budget  from moviesdb.movies a 
inner join moviesdb.financials b  on  a.movie_id = b.movie_id;

select a.movie_id, a.title , b.budget  from moviesdb.movies a 
left join moviesdb.financials b  on a.movie_id = b.movie_id;

select b.movie_id, a.title , b.budget  from moviesdb.movies a 
right join moviesdb.financials b  on a.movie_id = b.movie_id;

select * from moviesdb.movies;

select a.movie_id, a.title , b.budget  from moviesdb.movies a 
left join moviesdb.financials b  on a.movie_id = b.movie_id

union

select b.movie_id, a.title , b.budget  from moviesdb.movies a 
right join moviesdb.financials b  on a.movie_id = b.movie_id;



 


