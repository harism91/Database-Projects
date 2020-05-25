
 create table Credit(
    cid      smallint     not null,
    title    varchar(25)  not null,
    year     smallint     not null,
    when     timestamp    not null,
    old_club varchar(15)  not null,
    new_club varchar(15)  not null,
    done     timestamp    not null
    
 );