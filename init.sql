DROP DATABASE movie_rankings;
DROP USER reviewer;
CREATE DATABASE movie_rankings;
CREATE USER reviewer;
GRANT ALL PRIVILEGES ON DATABASE movie_rankings to reviewer;
\c movie_rankings



CREATE TABLE  MOVIE ( 
    MovieID       smallint PRIMARY KEY,
    MovieTitle    VARCHAR(150) NULL,
    IMDB_URL      VARCHAR(150) NULL,
    unkown        FLOAT NULL,
    action        FLOAT NULL,
    adventure     FLOAT NULL,
    animation     FLOAT NULL,
    children      FLOAT NULL,
    comedy        FLOAT NULL,
    crime         FLOAT NULL,
    documentary   FLOAT NULL,
    drama         FLOAT NULL,
    fantasy       FLOAT NULL,
    noir          FLOAT NULL,
    horror        FLOAT NULL,
    musical       FLOAT NULL,
    mystery       FLOAT NULL,
    romance       FLOAT NULL,
    scifi         FLOAT NULL,
    thriller      FLOAT NULL,
    war           FLOAT NULL,
    western       FLOAT NULL);
	
CREATE TABLE VIEWER ( 
	UserID    	SMALLINT NOT NULL primary key,
	Age       	SMALLINT NOT NULL,
	Gender    	CHAR(1) NOT NULL,
	Occupation	VARCHAR(150) NULL,
	Zip       	VARCHAR(15) NULL 
	);

CREATE TABLE RATING ( 
	UserID    	SMALLINT NOT NULL,
	MovieID       SMALLINT NOT NULL,
	Rating       	SMALLINT NOT NULL,
CONSTRAINT rating_pk PRIMARY KEY (UserID, MovieID),
CONSTRAINT rating_user_fk FOREIGN KEY (UserID) REFERENCES VIEWER,
CONSTRAINT rating_movie_fk FOREIGN KEY (MovieID) REFERENCES MOVIE
	);
	
GRANT ALL PRIVILEGES ON MOVIE, VIEWER, RATING TO reviewer;

