
--ASSIGNMENT 6
--Esra Rahman & Jamal Yusuf
--1.Determine which books cost less than the average cost of other books 
--in the same category.Display title, cost, avg_cost and category.
SELECT b1.title, b2.category, TO_CHAR(b1.cost, '$999.99') "COST",
TO_CHAR(b2.averagecost, '$999.99') "AVERAGE COST OF OTHER BOOK IN SAME CATEGORY"
FROM books b1, (SELECT category, AVG(cost) averagecost FROM books GROUP BY category) b2
WHERE b1.category = b2.category
AND b1.cost < b2.averagecost;

-- Assignment 6
--- Esea Rahman & Jamal Yusuf
--2.Determine which orders had a higher total amount spent than total amount of order 1011
--and 1013. Display Order# and Total Amount.
SELECT order#, SUM(quantity * paideach) "Total Amount"
FROM orderitems
GROUP BY order#
HAVING SUM(quantity * paideach) >
(SELECT SUM(quantity * paideach)
FROM orderitems
WHERE (order# = 1011 OR order# = 1013));
 
 -- Assignment 6
 ---Esra Rahman & Jamal Yusuf
--3.Write the query that determines who have ordered the most books from JustLee Books(store name)?
-- Display lastname, firstname and number of books bought by that customer?
SELECT c.lastname "Customer's Last Name", c.firstname "Customer's First Name", 
SUM(oi.quantity) AS "Number of Books" 
FROM customers c JOIN orders o 
ON o.customer# = c.customer# 
JOIN orderitems oi 
ON oi.order# = o.order#
GROUP BY c.customer#, c.lastname, c.firstname 
HAVING SUM(oi.quantity) = 
(SELECT MAX(SUM(oi.quantity)) FROM orders o INNER JOIN orderitems 
oi ON oi.order# = o.order# GROUP BY o.customer#);

--Assignment 6 
--Esra Rahman & Jamal Yusuf
--4.List the books that have been published in the same year 
---as the books published by the publisher with pubid 3. List title,
-- pubdate and pubid and sort the output by title.
SELECT b.title, b.pubdate, b.pubid, to_char(b.pubdate,'yyyy') 
"Year of Published" FROM books b
 WHERE to_char(b.pubdate,'yyyy') IN (SELECT to_char(a.pubdate,'yyyy') 
 FROM books a WHERE a.pubid = 3)
 AND b.pubid <> 3
 ORDER BY b.title;
--Assignment6
---Esra Rahman & Jamal Yusuf
---5.Determine which author or authors wrote the books most frequently purchased  
--by customers.Display last and first name of the author along with its title.
SELECT a.lname  "Last Name of Author", a.fname "First Name of Author",
b.title "Title of Book",
SUM(oi.quantity) "Number of copies sold" 
FROM author a JOIN bookauthor ba ON a.authorid = ba.authorid
JOIN books b ON ba.isbn = b.isbn
JOIN orderitems oi ON b.isbn = oi.isbn
GROUP BY a.lname, a.fname, b.title
HAVING SUM(oi.quantity) = (SELECT MAX(SUM(oi.quantity))
FROM orderitems oi group by oi.isbn);

--6.Create 3 new different meaningful tasks using subqueries that 
--we have not used in example or lab of subqueries:
--a.A scenario that requires the use of single row subquery.

--b.A scenario that requires the use of multiple row subquery.

--c.c.A scenario that requires the use of multiple column subquery.



