-- ===================================================================
-- Quest MMORPG DB

-- Schema Creation script
-- haris

-- -------------------------------------------------------------------
-- Schema definition
connect TO c3421n;
CREATE TABLE artist (
    artistName   varchar(100) not null,
    bio      varchar(100) not null,
    homepage varchar(100) not null,
    hometown varchar(100) not null,
    constraint artist_PK
        primary key (artistName)
);
CREATE TABLE record_company(
    label varchar(100) not null, 
    address      varchar(100) not null,
    homepage     varchar(100) not null,
    telephone    int not null, 
    constraint record_PK
        primary key (label)
);

CREATE TABLE chart (
    chartsName varchar(100) not null,
    constraint chart_PK
        primary key (chartsName)
);


CREATE TABLE orchestra (
    orchestraName   varchar(100) not null,
    address         varchar(100),
    size            int, 
    conductor       varchar(100),
    constraint orchestra_PK
        primary key (orchestraName)
);

CREATE TABLE song (
    songName    varchar(100) not null,
    genre   varchar(100),
    constraint song_PK
        primary key (songName)
);
CREATE TABLE Album (
    label varchar(100) not null, 
    Albumtitle  varchar(100) not null, 
    year         int, 
    constraint album_PK
        primary key (label,  Albumtitle), 
    constraint Record_FK
        foreign key(label) references record_company
);

CREATE TABLE Recording(
    songName         varchar(100) not null, 
    Albumtitle  varchar(100) not null, 
    stodio       varchar(100) not null,
    number       int, 
    label varchar(100) not null,
    orchestraName    varchar(100) not null,
    
    constraint orchestras_FK 
        foreign key(orchestraName) references orchestra,
    constraint albums_FK
        foreign key( label, Albumtitle) references Album,
    constraint songs_FK 
        foreign key(SongName) references song,
    constraint recording_PK
        primary key (label,  Albumtitle,  songName)
);
create table Preform (
    instrumentName      varchar(100) not null,
    artistName          varchar(100) not null,
    label               varchar(100) not null,
    Albumtitle          varchar(100) not null,
    SongName            varchar(100) not null,
    constraint preform_PK
        primary key (label, Albumtitle, SongName, artistName, instrumentName),
    constraint recordings_FK
        foreign key (label, Albumtitle, SongName) references recording,
    constraint Artists_FK
        foreign key (ArtistName) references Artist
);

CREATE TABLE composed (
    role             varchar(100),
    songName         varchar(100) not null,
    artistName       varchar(100) not null,
    constraint composed_PK
        primary key (artistName, songName),
    constraint songs_FK 
        foreign key(SongName) references song,
    constraint artists_FK  
        foreign key(artistName) references artist
);

CREATE TABLE charted (
    SongName        varchar(100) not null,
    Albumtitle      varchar(100) not null,
    label           varchar(100) not null,
    startDate       varchar(100) not null,
    rank            varchar(100) not null,
    chartsName      varchar(100) not null,
    constraint charted_PK
    primary key (label, Albumtitle, songName, startDate, chartsName), 
    constraint recordings_FK
        foreign key(label, Albumtitle, SongName) references recording, 
    constraint charts_FK
        foreign key(chartsName) references chart
);



