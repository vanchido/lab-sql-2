use sakila;

select * from sakila.actor as sa where sa.first_name = 'Scarlett';

select * from sakila.actor as sa where sa.last_name = 'Johansson';

select count(*) from sakila.rental as sr where sr.return_date < current_date();

select count(*) from sakila.rental as sr where sr.rental_date is not null;

select max(rental_duration) from sakila.film;
select min(rental_duration) from sakila.film;

select max(length) as max_duration from sakila.film;
select min(length) as min_duration from sakila.film;

select avg(length) as average_duration from sakila.film;

select concat(floor(avg(length)/60),'h',floor(mod(avg(length),60)),'m') as average_duration from sakila.film;

select count(*) from sakila.film where length > 180;

select sc.first_name, sc.last_name, sc.email, 
concat(upper(substr(first_name,1,1)),lower(substr(first_name,2))) as proper_first_name, 
upper(last_name) as proper_last_name,
concat(lower(first_name),'.',lower(last_name),'@sakilacustomer.org') as formatted_email
from sakila.customer as sc;

select sf.title, max(length(title)) as longest_film_title from sakila.film as sf;
