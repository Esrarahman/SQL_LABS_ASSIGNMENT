select title, retail,(select round(avg(retail),0) from books) AVG_Retail,
retail-(select round(avg(retail),0) from books) difference from books;
-- multiple 
select max(retail) from books group by category;

select title, retail from books 
where retail in ( select  max(retail) from books group by category);
--I want to view the books' names and retail of the books that have the higher /lower price
--than the highest/lowest price in Cooking Category books.
--step1:
select retail from books where category ='COOKING';

---
select title, retail from books
where retail>all(select retail from books where category ='COOKING');

--(<all) operator: (displays the lower values than the lowest value from subquery)
--all values from parent query will be compared with lowest value 
--which is 19.95 out of two values provided by the subquery.
--and parent query displays the lower values.

select title, retail from books
where retail<all(select retail from books where category ='COOKING');

--(>any) operator: (displays the greater values than the lowest value from subquery)
--all values from parent query will be compared with lowest value 
--which is 19.95 out of two values provided by the subquery.
--and parent query displays the higher values.


select title, retail from books
where retail>any(select retail from books where category ='COOKING');



--Multiple row subquery in having clause
--We want to find out whether any customer’s recently placed order has a total amount
--due that is greater than the total amount due for every order placed recently 
--by customers in the state of Florida (FL)
--step 1

-(<any) operator: (displays the lower values than the highest value from subquery)
--all values from parent query will be compared with highest value 
--which is 28.75 out of two values provided by the subquery.
--and parent query displays the lower values.
select ORDER#, sum(paideach*quantity)
from orderitems join orders using(order#)
where shipstate ='FL'
group by order#;

select order#, sum(paideach*quantity) 
from orderitems group by order#
having(sum(paideach*quantity))>all
(select sum(paideach*quantity)
from orderitems join orders using(order#)
where shipstate ='FL'
group by order#);
   
   
--Multiple column subqueries in from clause
--Suppose you need a list of all books in the BOOKS table that have a higher-than-average 
--selling price compared with other books in the same category
--step 1 (find missing values later becomes the subquery)

select title,books.category, retail,  avg from books , 
(select avg(retail) Avg,category from books group by category) sub_table
where books.retail>sub_table.avg
and books.category=sub_table.category;
--Multiple column subqueries in where clause
--we want to display title, category, retail of the books that has highest price 
--in each category.
--Same example we took before but now with variation.
--However that query will only work if two books do not have the same retail price
select title, category, retail from books 
where (retail,category) in ( select  max(retail), category from books group by category);

