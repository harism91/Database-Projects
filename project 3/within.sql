 -- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #1
 select title, year, cat 
 from book 
 where regexp_like(title,'Humor') 
 or regexp_like(title,'Cooking')
 or regexp_like(title,'drama')
 or regexp_like(title,'children') 
 or regexp_like(title,'guide')
 or regexp_like(title,'history')
 or regexp_like(title,'horror')
 or regexp_like(title,'mystery')
 or regexp_like(title,'phil')
 or regexp_like(title,'romance')
 or regexp_like(title,'science')
 or regexp_like(title,'travel')
order by title, year, cat
;

