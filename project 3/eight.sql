-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: parke godfrey
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #5
with 
    eight (title, year, club) as (
        SELECT distinct o.title, o.year, count( distinct club)
        from offer o, book b
        where b.title = o.title and b.year = o.year
        group by o.title, o.YEAR
    )
    SELECT distinct title, year 
    from eight where club = 8
    order by  title, year
    ;
   
   

