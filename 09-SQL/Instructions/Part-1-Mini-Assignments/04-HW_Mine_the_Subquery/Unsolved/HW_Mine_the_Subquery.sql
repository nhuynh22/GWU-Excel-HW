--Using subqueries, identify all actors who appear 
--in the film ALTER VICTORY in the `pagila` database.

Select a.first_name
		, a.last_name
		, f.title

From film f join film_actor fa
		on f.film_id = fa.film_id
	 join actor a
	 	on fa.actor_id = a.actor_id 

Where f.title = 'ALTER VICTORY'


select title from film
where film_id in (select film_id from inventory
					   where inventory_id in (select inventory_id from rental
					   where staff_id in(select staff_id from staff where first_name = 'Jon' and last_name= 'Stephens')));

















