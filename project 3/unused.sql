-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #5
with 
ClubsJoined(cid, name, count) as (
    select distinct c.cid, c.name, count (distinct club)
        from Customer c, Member M 
        where c.cid = m.cid
        group by C.cid, c.name
), 
ClubsUsed(cid, name, count) as (
    select distinct c.cid, c.name, count (distinct club)
        from Customer c, Purchase p 
        where c.cid = P.cid
        group by C.cid, c.name
)

SELECT distinct cu.cid, cu.name
    from ClubsJoined as CJ, ClubsUsed as CU
    where cu.cid = cj.cid and CU.count < cj.count
    group by CU.cid, cu.name
    order by CU.cid, cu.name;