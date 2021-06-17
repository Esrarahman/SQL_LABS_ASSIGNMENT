
--ASSIGNMENT 6
-Q.1
SELECT b1.title, b2.category, TO_CHAR(b1.cost, '$999.99') "COST",
TO_CHAR(b2.averagecost, '$999.99') "AVERAGE COST OF OTHER BOOK IN SAME CATEGORY"
FROM books b1, (SELECT category, AVG(cost) averagecost FROM books GROUP BY category) b2
WHERE b1.category = b2.category
AND b1.cost < b2.averagecost;

2.
SELECT order#, SUM(quantity * paideach) "Total Amount"
FROM orderitems
GROUP BY order#
HAVING SUM(quantity * paideach) >
(SELECT SUM(quantity * paideach)
FROM orderitems
WHERE (order# = 1011 OR order# = 1013));
 
3.
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

4.
 WHERE to_char(b.pubdate,'yyyy') IN (SELECT to_char(a.pubdate,'yyyy') 
 FROM books a WHERE a.pubid = 3)
 AND b.pubid <> 3
 ORDER BY b.title;

5.
SELECT a.lname  "Last Name of Author", a.fname "First Name of Author",
b.title "Title of Book",
SUM(oi.quantity) "Number of copies sold" 
FROM author a JOIN bookauthor ba ON a.authorid = ba.authorid
JOIN books b ON ba.isbn = b.isbn
JOIN orderitems oi ON b.isbn = oi.isbn
GROUP BY a.lname, a.fname, b.title
HAVING SUM(oi.quantity) = (SELECT MAX(SUM(oi.quantity))
FROM orderitems oi group by oi.isbn);

.


