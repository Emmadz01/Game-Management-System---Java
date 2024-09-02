CREATE TABLE DEVELOPER(

    DeveloperID VARCHAR2(6) PRIMARY KEY,
    DeveloperTitle VARCHAR(30) NOT NULL
);

CREATE TABLE PUBLISHER(

    PublisherID VARCHAR(6) PRIMARY KEY,
    PublisherTitle VARCHAR(30) NOT NULL
);

CREATE TABLE GAME (
    
    GameID VARCHAR2(6) PRIMARY KEY,
    GameTitle VARCHAR2(100) NOT NULL,
    GameDescription VARCHAR(350) NOT NULL,
    DeveloperID VARCHAR(6) NOT NULL,
    PublisherID VARCHAR2(6) NOT NULL,
    Platform VARCHAR2(120) NOT NULL,
    IGNRating VARCHAR(5) NOT NULL,
    ReleaseYear INTEGER NOT NULL,
    Genre VARCHAR2(100) NOT NULL,
    
    CONSTRAINT fk_developerID FOREIGN KEY (DeveloperID) REFERENCES DEVELOPER(DeveloperID),
    CONSTRAINT fk_publisherID FOREIGN KEY (PublisherID) REFERENCES PUBLISHER(PublisherID)    
);

INSERT INTO DEVELOPER VALUES('D-5241', 'Naughty Dog');
INSERT INTO DEVELOPER VALUES('D-2241', 'Ubisoft');
INSERT INTO DEVELOPER VALUES('D-2510', 'Electronic Arts');
INSERT INTO DEVELOPER VALUES('D-5222', 'HoYoverse');
INSERT INTO DEVELOPER VALUES('D-4421', 'IO Interactive');
INSERT INTO DEVELOPER VALUES('D-0255', 'Treyarch');
INSERT INTO DEVELOPER VALUES('D-0215', 'Tencent Games');
INSERT INTO DEVELOPER VALUES('D-7787', 'BlueTwelve Studio');

Select * from developer;

INSERT INTO PUBLISHER VALUES('P-4521', 'Sony Interactive Entertainment');
INSERT INTO PUBLISHER VALUES('P-7741', 'Ubisoft');
INSERT INTO PUBLISHER VALUES('P-6610', 'Electronic Arts');
INSERT INTO PUBLISHER VALUES('P-5202', 'HoYoverse');
INSERT INTO PUBLISHER VALUES('P-4021', 'Square Enix');
INSERT INTO PUBLISHER VALUES('P-0250', 'Activision');
INSERT INTO PUBLISHER VALUES('P-0211', 'Level Infinite');
INSERT INTO PUBLISHER VALUES('P-7707', 'Annapurna Interactive');

Select * from publisher;

INSERT INTO GAME VALUES(
    'G-1254', 
    'Genshin Impact', 
    'Genshin Impact is an action role-playing game developed by miHoYo, and published by miHoYo in mainland China and by HoYoverse worldwide. It was released for Android, iOS, PlayStation 4, and Windows in 2020, on PlayStation 5 in 2021',
    'D-5222',
    'P-5202',
    'Android, iOS, PC, PlayStation 4, PlayStation 5',
    '9/10',
    2020,
    'Adventure, Role-Playing Game'
);

INSERT INTO GAME VALUES(
    'G-1025', 
    'The Last of Us', 
    'The Last of Us is a 2013 action-adventure game developed by Naughty Dog and published by Sony Computer Entertainment. Players control Joel, a smuggler tasked with escorting a teenage girl, Ellie, across a post-apocalyptic United States. The Last of Us is played from a third-person perspective.',
    'D-5241',
    'P-4521',
    'PC, Playstation 3, PlayStation 4, PlayStation 5',
    '10/10',
    2013,
    'Shooter, Survival Horror, Action, Stealth'
);

SELECT g.GameID, g.GameTitle, g.GameDescription, d.DeveloperTitle, p.PublisherTitle, g.Platform, g.IGNRating, g.ReleaseYear, g.Genre FROM GAME g JOIN DEVELOPER d ON g.DeveloperID = d.DeveloperID JOIN PUBLISHER p ON g.PublisherID = p.PublisherID;

Select GameID FROM GAME;
Select DeveloperID FROM DEVELOPER;

Select * from developer;

UPDATE GAME SET GameTitle = 'Assasins Creed: Revelations'  Where GameID = 'G-1234';