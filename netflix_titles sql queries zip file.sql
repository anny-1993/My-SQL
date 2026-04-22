create database netflix ;
use netflix ;
CREATE TABLE netflix_titles (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(10),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT
);
select * from netflix_titles ;


select title, 
count(*) from netflix_titles
group by title;

select title , release_year , date_added
from netflix_titles
where release_year = "2021";


select  title , country
from netflix_titles
where country = "india" or country = "japan";

select duration , title , date_added , release_year
from netflix_titles
where release_year < 2020 and duration ;


select duration , rating , date_added , release_year
from netflix_titles
where release_year < 2019 and duration ;


select duration , title , date_added
from netflix_titles
order by date_added desc
limit 5 ;

select rating , title , director , date_added
from netflix_titles
order by date_added asc
limit 10 ;


select title , duration , date_added , listed_in , country
from netflix_titles
order by date_added
limit 20 ;

select title , date_added ,count(*) as total
from netflix_titles
group by title , date_added
order by total desc
limit 10;

select title , date_added , duration , rating ,
country , count(*) as total
from netflix_titles
where country = "india"
group by title , date_added , duration , rating ,
country
order by total desc
limit 5 ;


select title , date_added , duration , show_id , release_year ,
country , count(*) as total
from netflix_titles
where release_year > 2019 or country = "japan" or country = "india"
or duration < 100 
group by title , date_added , duration , show_id , release_year ,
country
order by total desc
limit 10;

select count(*) from
netflix_titles;

select type, count(*) from
netflix_titles
group by type ;

select distinct country from 
netflix_titles ;

select count(*) from
netflix_titles
where director is null ;

select * from netflix_titles
where type = 'movie' and release_year = 2020 ;

select release_year  from netflix_titles
where release_year and rating ;

SELECT * 
FROM netflix_titles
WHERE rating = 'TV-MA';

select release_year,count(*) from
netflix_titles
group by release_year
order by release_year asc ;

select * from
netflix_titles
where country = 'india' or country = 'japan' ;

select title,country from
netflix_titles
where country = 'india' or country = 'south africa' ;

select * from netflix_titles
netflix_titles
where show_id = 's50';

select * from 
netflix_titles
order by release_year desc 
limit 5 ;

select * from 
netflix_titles
order by release_year asc
limit 10 ;

select title,country, count(*) from netflix_titles
where country = 'india'
group by country , title
order by count(*) desc ;

select director,cast,date_added,
country ,count(*)
from netflix_titles
where country = 'japan'
group by director,cast,date_added,
country
order by count(*) asc
limit 5 ;

select director,cast,date_added,
country ,count(*)
from netflix_titles
where country = 'japan' or country = 'nigeria'
group by director,cast,date_added,
country
order by director,cast,date_added,
country desc
limit 15 ;

select * from
netflix_titles
where type > duration
order by duration asc
limit 5 ;

SELECT title,release_year,
(date_added) AS release_year
FROM netflix_titles;

select show_id,date_added,count(*)
from netflix_titles
where release_year < 2019
group by show_id,date_added
order by count(*) asc ;

select country, count(*)from netflix_titles
where country is not null
group by country
order by count(*) asc ;

select country, count(*)from netflix_titles
where country is null
group by country
order by count(*) asc ;

SELECT title, COUNT(*) 
FROM netflix_titles
GROUP BY title
HAVING COUNT(*) > 1;

SELECT director, COUNT(*) 
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY COUNT(*) DESC
LIMIT 10;







