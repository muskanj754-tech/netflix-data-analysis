create database netflix;
use netflix;
select * from netflix_titles_cleaned;

# Count total movies
select count(type) from netflix_titles_cleaned
where type='movie' ;

# Shows released after 2015
select title,release_year from netflix_titles_cleaned 
where release_year>2015;

# Movies from India
select type,country from netflix_titles_cleaned
where type='movie' and country='India';

# Top countries producing Netflix content
SELECT country, COUNT(*) AS total
FROM  netflix_titles_cleaned
GROUP BY country
ORDER BY total DESC;

