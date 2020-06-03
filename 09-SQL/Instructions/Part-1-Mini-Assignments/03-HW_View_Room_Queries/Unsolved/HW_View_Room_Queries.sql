CREATE VIEW title_count AS

Select title
		, count(title) as Number_of_Copies

From film f join inventory i
		on f.film_id = i.film_id


Group by title

Having count(title) = 7

Order by 
		Number_of_Copies desc
		, title

