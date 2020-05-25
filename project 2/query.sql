CONNECT to c3421n

select distinct orchestraname, songname 
from recording 
where songname = (select distinct songname from charted where rank < 100)