-- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #3
with 
    clubName (club, #member) as (
        SELECT club, Count(*) from member group BY club
    )

    SELECT club, #member as membr from clubName where (
        select min(#member) from clubName 
    ) = clubName.#member 
    ;
