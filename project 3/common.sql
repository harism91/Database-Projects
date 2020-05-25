-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


 SELECT  c1.name AS namea, c2.name AS nameb
    FROM purchase A, purchase B, Customer c1,  Customer c2 
    WHERE A.cid <> B.cid
    AND c1.cid <> c2.cid
    AND c1.cid = a.cid
    AND c2.cid = b.cid
    AND A.title = B.title
    AND A.year = B.year
    AND A.cid > B.cid
    group by c1.name, c2.name, c1.cid, c2.cid
    ORDER BY  namea,nameb, c1.cid, c2.cid
;