--#SET TERMINATOR @
create trigger  reassign
 after insert on Member 
referencing new row as N 
for each row mode db2sql
begin atomic 
	update(
		select P.cid, P.club, P.title, P.year, P.qnty, P.when, 
		(
			select O.price 
			from Offer o 
			where P.title = O.title -- JOIN P & O 
				and P.year = O.YEAR
				and P.club = O.club 
		) as price, 
		(
			select O.price
			from Offer O, Member M 
			where P.title = O.title -- JOIN P & O
				and P.year  = O.YEAR
				and P.club <> O.club -- with difernt club then used 
				and P.cid = M.cid
				and O.club = M.club 
				and N.cid = M.cid
				and N.club = M.club 
		) as other 
		from purchase P  
		where N.cid  = P.cid
		order by P.cid, P.when, P.title, P.YEAR
	)
	set club  = N.club
	where when >= '2020-01-01-00.00.00' and other < price;
	end
	@