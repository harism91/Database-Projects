--#SET TERMINATOR @
CREATE TRIGGER ClubChange
 AFTER UPDATE OF club ON Purchase
  REFERENCING
    OLD ROW AS old_club
    NEW ROW AS new_club
    for each row mode db2sql
    When (old_club.club <> new_club.club)
begin atomic 
    insert into credit 
    values
    (new_club.cid,new_club.title, new_club.YEAR, new_club.when, old_club.club, new_club.club,  CURRENT_TIMESTAMP);
        end 
    @