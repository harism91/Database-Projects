-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad 
-- creation: 2005 September
--  version: 2020 March
-- -------------------------------------------------------------------

with 
    citcat ( city, cat, sum) as (
        SELECT c.city, b.cat, sum(p.qnty)
        FROM Purchase p, book b, Customer c
        WHERE p.year = b.YEAR
        and c.cid = p.cid
        and b.title = p.title

        GROUP by C.city, b.cat
)
    select  distinct  city, cat, sum as bookss
    from citcat 
    where sum =  
        (
            select max (sum)
                from citcat t
                where t.city = citcat.city
        )
    order by city, cat 
;
