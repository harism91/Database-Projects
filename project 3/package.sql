-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------

-- query #9
with
    newp (cid, club, title, year, when, qnty) as (
        SELECT cid, club, title, year, cast(when as date), qnty 
        from purchase
    ),
    orders (cid, name, city, when, bill, grams) as
            (select P.cid, name, city, cast(when as date),
            cast(sum(price * qnty) as decimal(5,2)),
            sum(weight * qnty)
        from customer C, newp P, offer O, book B
        where C.cid = P.cid and
            P.title = O.title and P.year = O.year and
            P.club = O.club and
            P.title = B.title and P.year = B.year
        group by P.cid, name, city, when),
    rounded (cid, name, city, when, bill, weighin) as
        (select cid, name, city, cast(when as date), bill, min(weight)
        from orders O,shipping S
        where weight > grams
        group by cid, name, city, when, bill)
    select cid, name, cast(when as date) as day,
        (bill + cost) as total
        from rounded R,shipping S
        where R.weighin = S.weight
        order by  cid, day;