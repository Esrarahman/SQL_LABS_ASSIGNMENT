select* from books where category= 'COMPUTER';
select* from promotion;

select b.title, p.gift, b.retail, p.minretail, p.maxretail
from books b, promotion p
where b.retail >=p.minretail and b.retail <=maxretail
and category = 'COMPUTER';

--join on
select b.title, p.gift, b.retail, p.minretail, p.maxretail
from books b, join promotion p
on b.retail >=p.minretail and b.retail <=maxretail
where category = 'COMPUTER';

--outer join when missing some information
--- + outer operator
--SELECT * from publisher3;


select * from publisher2 p2, publisher3 p3
where p2.id = p3.id(+);

--- outer traditional join

select * from publisher2 p2, publisher3 p3
where p2.id (+) = p3.id;

---join on 

select * from
publisher2 p2 left outer join publisher3 p3
on p2.id = p3.id;

select * from
publisher2 p2 right outer join publisher3 p3
on p2.id = p3.id;

select * from
publisher2 p2 full outer join publisher3 p3
on p2.id = p3.id;

select * from
publisher p full outer join publisher3 p3
on p.pubid = p3.id;

--- self join
select c.lastname, c.firstname, r.lastname "reffered by"
from customers c, customers r 
where c.referred = r.customer#;

select isbn, title from books 
union all
select isbn, title
from books join orderitems
using (isbn);

select isbn, title from books 
intersect
select isbn, title
from books join orderitems
using (isbn);

select isbn, title from books 
minus
select isbn, title
from books join orderitems
using (isbn)


