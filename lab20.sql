--1.Determine which books customer TAMMY GIANA has purchased. 
--View customer’s firstname, lastname and name of the book. 
--If he/she has purchased multiple copies of the same book, unduplicate the results. 
--Show the result in alphabetical order by title.(Traditional join and Join…..using)
SELECT DISTINCT c.firstname, c.lastname, b.title
FROM customers c, books b, orders o, orderitems oi
WHERE c.customer# = o.customer#
AND o.order# = oi.order#
AND oi.ISBN = b.ISBN
AND c.lastname = 'GIANA'
AND c.firstname = 'TAMMY'
ORDER BY b.title;

SELECT DISTINCT c.firstname, c.lastname, b.title
FROM customers c JOIN orders o
USING (customer#)
JOIN orderitems oi
USING (order#)
JOIN books b
USING (ISBN)
WHERE c.lastname = 'GIANA'
AND c.firstname = 'TAMMY'
ORDER BY b.title;

--2.Which books belong to the pubid 5? List title of the book, lastname and firstname of 
--the author pubid and category. Sort the result by lastname and then by firstname of the 
--author. (Join …on and Join…using)
SELECT b.title, a.lname, a.fname, b.pubid, b.category
FROM books b JOIN bookauthor ba 
ON b.isbn = ba.isbn
JOIN author a
ON ba.authorid = a.authorid
AND b.pubid = 5
ORDER BY a.lname, a.fname;

SELECT b.title, a.lname, a.fname, b.pubid, b.category
FROM books b JOIN bookauthor ba
ON b.isbn = ba.isbn
JOIN author a
ON ba.authorid = a.authorid
AND b.pubid = 5
ORDER BY a.lname, a.fname;

--Q.2  JOIN USING  // Esra Rahman
SELECT b.title, a.lname, a.fname, b.pubid, b.category
FROM books b Join bookauthor ba 
USING (isbn)
JOIN author a
USING (authorid)
WHERE b.pubid = 5
ORDER BY a.lname, a.fname;

--Q.2 join on   Esra Rahman
SELECT b.title, a.lname, a.fname, b.pubid, b.category
FROM books b JOIN bookauthor ba 
ON b.isbn = ba.isbn
JOIN author a
ON ba.authorid = a.authorid
AND b.pubid = 5
ORDER BY a.lname, a.fname;

SELECT b.title, a.lname, a.faname, b.pubid, b.category




