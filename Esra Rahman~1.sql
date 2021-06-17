-- Esra Rahman lab1
--Q.7 Display the orders which had been placed for more than 2 items. Display order#, 
--isbn and quantity.
select order#, isbn, quantity 
from ORDERITEMS
where quantity>2;










--Q.6 Determine which categories are represented in the current book inventory. List each 
--category only once.

--select unique category from books order by category;
















--Q.5 Determine which customers live in Region South West. Display customer’s 
--name and region.	
--select firstname, region
--from customers
--where region = 'SW';











--select title "title of the book", pubdate "publication date"
--from books;
--
--select customer#, city, address, state
--from customers;
/*
Q.2	Display the Order#, shipstreet, shipcity, shipstate and shipzip from orders table.

select Order#, shipstreet, shipcity, shipstate, shipzip
from orders;
--




select * from Books;
select distinct state from customers order by state;
describe books;
select title, retail, discount, retail -discount "Actual Price",category
from books
where discount>0 ;

select title, retail, discount
from books
where discount is null;

select title, retail, cost, retail-cost, category, pubid
from books
where category = 'COMPUTER' or pubid=1;

select * from customers;
select customer#, Lastname|| ', ' || first_name as Full_name, state from customers
order by 3;
select * from customers order by 6;
select unique state from customers order by state;
*/