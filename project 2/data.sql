-- ===================================================================
-- Quest MMORPG DB

-- Populate script
-- haris muhammad, march 2020

-- ---------------------------------------------------------------------------
-- Populate with our toy data.
connect TO c3421n;
insert into artist (artistName, bio, homepage, hometown) values
    ('Jimmy Page', 'is an English musician',   'https://en.wikipedia.org/wiki/Jimmy_Page',   'Heston'),
    ('John Paul Jones', 'is an English record ',   'https://en.wikipedia.org/wiki/John_Paul_Jones_(musician)',   'Sidcup'),
    ('John Bonham', 'Esteemed for his speed, power,',   'https://en.wikipedia.org/wiki/John_Bonham',   'Redditch'),
    ('Robert Plant', 'He developed a compelling image',   'https://en.wikipedia.org/wiki/Robert_Plant',   'Black Country'),
    ('Anne Bredon', 'best known for composing ',   'https://en.wikipedia.org/wiki/Anne_Bredon',   'Berkeley'),
    ('Willie Dixon', 'was an American vocalist',   'https://en.wikipedia.org/wiki/Willie_Dixon',   'Vicksburg'),
    ('J. B. Lenoir', 'was an American blues guitarist',   'https://en.wikipedia.org/wiki/J._B._Lenoir',   'Monticello'),
    ('Jake Holmes', ' is an American singer-songwriter ',   'https://en.wikipedia.org/wiki/Jake_Holmes',   'San Francisco');
   
insert into record_company (label, address, homepage, telephone) values
    ('Atlantic Records', 'Paramo',   'Atlanticrecords.com',   2127072000);


insert into chart (chartsName) values
    ('US Billboard Hot 100'),
    ('Dutch Top 40');

insert into orchestra (orchestraName, address, size, conductor) values
    ('NA', 'NA',   0,   'NA');
insert into song (songName, genre) values
    ('Good Times Bad Times',      'Hard rock'),
    ('Babe Im Gonna Leave You',   'Hard rock'),
    ('You Shook Me',              'Blues rock'),
    ('Dazed and Confused',        'Folk rock'),
    ('Your Time Is Gonna Come',   'Hard rock'),
    ('Black Mountain Side',       'English folk music'),
    ('Communication Breakdown',   'Hard rock'),
    ('I Cant Quit You Baby',      'Blues rock'),
    ('How Many More Times',       'Blues rock');

insert into Album (label, Albumtitle, year) values
    ('Atlantic Records', 'Led Zeppelin',   1969);


insert into Recording (songName, Albumtitle, stodio, number, label, orchestraName) values
    ('Good Times Bad Times',    'Led Zeppelin',  'Olympic',1,   'Atlantic Records',   'NA'),
    ('Babe Im Gonna Leave You', 'Led Zeppelin',  'Olympic',2,   'Atlantic Records',   'NA'),
    ('You Shook Me',            'Led Zeppelin',  'Olympic',3,   'Atlantic Records',   'NA'),
    ('Dazed and Confused',      'Led Zeppelin',  'Olympic',4,   'Atlantic Records',   'NA'),
    ('Your Time Is Gonna Come', 'Led Zeppelin',  'Olympic',5,   'Atlantic Records',   'NA'),
    ('Black Mountain Side',     'Led Zeppelin',  'Olympic',6,   'Atlantic Records',   'NA'),
    ('Communication Breakdown', 'Led Zeppelin',  'Olympic',7,   'Atlantic Records',   'NA'),
    ('I Cant Quit You Baby',    'Led Zeppelin',  'Olympic',8,   'Atlantic Records',   'NA'),
    ('How Many More Times',     'Led Zeppelin',  'Olympic',9,   'Atlantic Records',   'NA');
insert into Preform (instrumentName, artistName, label, Albumtitle, SongName) values
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',    'Good Times Bad Times'),
    ('voice',      'John Paul Jones', 'Atlantic Records',   'Led Zeppelin',    'Good Times Bad Times'),
    ('drummer',    'John Bonham',     'Atlantic Records',   'Led Zeppelin',    'Good Times Bad Times'),
    ('voice',      'Robert Plant',    'Atlantic Records',   'Led Zeppelin',    'Good Times Bad Times'),
    ('Songwriter', 'Anne Bredon',     'Atlantic Records',   'Led Zeppelin',    'Babe Im Gonna Leave You'),
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',    'Babe Im Gonna Leave You'),
    ('voice',      'Robert Plant',    'Atlantic Records',   'Led Zeppelin',    'Babe Im Gonna Leave You'),
    ('voice',      'Willie Dixon',    'Atlantic Records',   'Led Zeppelin',    'You Shook Me'),
    ('voice',      'J. B. Lenoir',    'Atlantic Records',   'Led Zeppelin',    'You Shook Me'),
    ('Guitar',     'Jake Holmes',     'Atlantic Records',   'Led Zeppelin',    'Dazed and Confused'),
    ('voice',      'John Paul Jones', 'Atlantic Records', 'Led Zeppelin',    'Your Time Is Gonna Come'),
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',   'Your Time Is Gonna Come'),
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',   'Black Mountain Side'),
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',   'Communication Breakdown'),
    ('voice',      'John Paul Jones', 'Atlantic Records',   'Led Zeppelin',   'Communication Breakdown'),
    ('drummer',    'John Bonham',     'Atlantic Records',   'Led Zeppelin',   'Communication Breakdown'),
    ('voice', 'Willie Dixon',         'Atlantic Records',   'Led Zeppelin',   'I Cant Quit You Baby'),
    ('Guitars',    'Jimmy Page',      'Atlantic Records',   'Led Zeppelin',   'How Many More Times'),
    ('voice',      'John Paul Jones', 'Atlantic Records',   'Led Zeppelin',   'How Many More Times'),
    ('drummer',    'John Bonham',     'Atlantic Records',   'Led Zeppelin',   'How Many More Times');
insert into composed (songName,role, artistName) values
    ('Good Times Bad Times',    'guitar',           'Jimmy Page'),
    ('Good Times Bad Times',    'Songwriter',       'John Paul Jones'),
    ('Good Times Bad Times',    'drummer',          'John Bonham'),
    ('Good Times Bad Times',    'Songwriter',       'Robert Plant'),
    ('Babe Im Gonna Leave You', 'Songwriter',       'Anne Bredon'),
    ('Babe Im Gonna Leave You', 'guitar',           'Jimmy Page'),
    ('Babe Im Gonna Leave You', 'Songwriter',       'Robert Plant'),
    ('You Shook Me',            'Songwriter',       'Willie Dixon'),
    ('You Shook Me',            'Songwriter',       'J. B. Lenoir'),
    ('Dazed and Confused',      'Songwriter',       'Jake Holmes'),
    ('Your Time Is Gonna Come', 'lead guitar solo', 'Jimmy Page'),
    ('Your Time Is Gonna Come', 'Songwriter',       'John Paul Jones'),
    ('Black Mountain Side',     'lead guitar solo', 'Jimmy Page'),
    ('Communication Breakdown', 'Songwriter',       'John Paul Jones'),
    ('Communication Breakdown', 'drummer',          'John Bonham'),
    ('Communication Breakdown', 'lead guitar solo', 'Jimmy Page'),
    ('I Cant Quit You Baby',    'Songwriter',       'Willie Dixon'),
    ('How Many More Times',     'lead guitar solo', 'Jimmy Page'),
    ('How Many More Times',     'Songwriter',       'John Paul Jones'),
    ('How Many More Times',     'drummer',          'John Bonham');
insert into charted (SongName, Albumtitle, label, startDate, rank,chartsName) values
    ('Good Times Bad Times', 'Led Zeppelin',   'Atlantic Records',   '19690616',   '80',   'US Billboard Hot 100'),
    ('Good Times Bad Times', 'Led Zeppelin',   'Atlantic Records',   '20090119',   '19',   'Dutch Top 40');

  