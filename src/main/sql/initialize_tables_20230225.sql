-- create tables
CREATE TABLE IF NOT EXISTS games (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(255),
    release_date DATE,
    CONSTRAINT games_PK PRIMARY KEY (id)
    );
    
CREATE TABLE IF NOT EXISTS thumbnails (
	id INT NOT NULL AUTO_INCREMENT,
    game_id INT NOT NULL,
    CONSTRAINT thumbnails_PK PRIMARY KEY (id),
    CONSTRAINT thumbnails_FK FOREIGN KEY (game_id) REFERENCES games(id)
    );
    
CREATE TABLE IF NOT EXISTS screen_shots (
	id INT NOT NULL AUTO_INCREMENT,
    game_id INT NOT NULL,
    CONSTRAINT screen_shots_PK PRIMARY KEY (id),
    CONSTRAINT screen_shots_FK FOREIGN KEY (game_id) REFERENCES games(id)
    );
    
-- add comments on tables and columns
-- games
ALTER TABLE game_calender.games COMMENT='Main table used to store game info';
ALTER TABLE game_calender.games 
	MODIFY COLUMN id INT COMMENT 'This is the primary key used to identify unique records of games',
	MODIFY COLUMN name VARCHAR(255) COMMENT 'The name of the video game',
	MODIFY COLUMN description VARCHAR(255) COMMENT 'A description of the video game',
    MODIFY COLUMN release_date DATE COMMENT 'The release date info of the video game';
    
-- thumbnails
ALTER TABLE game_calender.thumbnails COMMENT='Main table used to store the thumbnail for a video game entry';
ALTER TABLE game_calender.thumbnails
	MODIFY COLUMN id INT COMMENT 'This is the primary key used to identify unique records of thumbnails',
	MODIFY COLUMN game_id INT COMMENT 'This is a foreign key reference to games id to connect the tables';

-- screenshots
ALTER TABLE game_calender.screen_shots COMMENT='Main table used to store the thumbnail for a video game entry';
ALTER TABLE game_calender.screen_shots
	MODIFY COLUMN id INT COMMENT 'This is the primary key used to identify unique records of screenshots',
	MODIFY COLUMN game_id INT COMMENT 'This is a foreign key reference to games id to connect the tables';