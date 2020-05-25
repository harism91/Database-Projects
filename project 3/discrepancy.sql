-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #9
with 
    Averageprice(title, year, average) as (
        select title, year, avg(price)
            from offer
            group by title, YEAR
    ), 
    discrepancy (club, title, year, priceDis) as (
            select club, AP.title, AP.YEAR, (O.price - AP.average)
                from AveragePrice AP, Offer O 
                where AP.title = O.title
                AND AP.year = O.YEAR
                GROUP by club, AP.title, AP.year, O.price, AP.average
    )
    SELECT distinct club, cast(avg(priceDis) as decimal(5,2)) as  discrepancy
    FROM discrepancy
    group by club
    order by discrepancy, club;