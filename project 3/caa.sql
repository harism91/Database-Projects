 -- ===================================================================
-- contents: York River Booksellers query 2020
--     type: SQL query script
--   author: haris muhammad
-- creation: 2005 September
--  version: 2020 March

-- -------------------------------------------------------------------


-- query #2
select count(club) as #memInCLub
from member
 where club = 'CAA' or club = 'Basic'
;