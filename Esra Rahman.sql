select title, name 
from books, publisher
where books.pubid = publisher.pubid;

select b.title, a.lname,a.fname
from books b, Bookauthor ba, Author a
where b.isbn = ba.isbn
and ba.authorid = a.authorid;

select b.title, a.lname,a.fname, b.pubid
from books b, Bookauthor ba, Author a
where b.isbn = ba.isbn
and ba.authorid = a.authorid;

select b.title, p.name 
from books b, publisher p
where b.pubid = b.pubid and category = 'COMPUTER';

select b.title, p.Firstname, a.Lastname,Order#,
from books b, Customers, ordes, Orderitems
where c.Customer# = o.Order#;

select c.firstname, c.lastname, c.customer#, o.order#, b.title
from books b, orders o , orderitems oi, customers c
where b.isbn = oi.isbn
and o.customer# = c.customer#
and oi.order# = o.order#
and b.category = 'COMPUTER';

select b.title, p.name, p.pubid
from books b join publisher p
on b.pubid = p.pubid
where b.category = 'COMPUTER';

select b.title, a.lname, a.fname
from books b join bookauthor ba
on b.isbn = ba.isbn
join author a
on ba.authorid = a.authorid;

select b.title, p.name, pubid
from books b join publisher p
using (pubid)
where b.category = 'COMPUTER';

select b.title, a.lname, a.fname
from books b join bookauthor
using (ISBN)
join author a
using (authorid);



