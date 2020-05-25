-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------
-- query #4
SELECT   c.name, b.cat, sum(p.qnty * o.price) as paid
FROM Customer c, Book b, Offer o, Purchase p
WHERE c.cid = p.cid and b.title = o.title and b.year = o.year 
and b.year = p.year 
and b.title = p.title
and p.club = o.club 
GROUP BY c.cid, c.name, b.cat
order by paid, c.name, b.cat;