use project_movie_database;
show TABLES;

select *from project_movie_database.directors;

select * from project_movie_database.movies;

select count(*) as total_movies from movies;

select * from directors
where name in ('james cameron','luc besson','john woo');

select * from directors 
where name like's%';

select count(*) AS female_directors from directors
where gender = 'female';

select name from directors
where gender = 'female'
order by name 
limit 1 offset 9;

select id, title, popularity from movies
order by popularity DESC
limit 3;

select title, revenue, budget,(revenue - budget) AS profit from movies
order by profit DESC 
limit 3;

select title, vote_average from movies where release_date >= '2000-01-01'
order by vote_average desc 
limit 1;

select m.*
from movies m
join directors d
on m.director_id = d.Id
where d.name = 'Brenda chapman';

SELECT d.name,count(m.UID) AS movie_count
from movies m
join directors d on m.director_id=d.ID
group by d.name
order by movie_count desc
limit 1;

SELECT d.name,sum(m.Revenue) as total_Revenue
from movies m
join directors d on m.director_id=d.ID
GROUP BY d.name
order by total_Revenue desc
limit 1;




