DROP TABLE IF EXISTS movies CASCADE; 

CREATE TABLE movies(
	id  VARCHAR(20) PRIMARY KEY,
	title VARCHAR ( 255 ) NOT NULL,
	country VARCHAR ( 150 ),
	release_year VARCHAR ( 50 ),
	duration VARCHAR(20),
	description TEXT,
	image TEXT
);

DROP TABLE IF EXISTS genres CASCADE;

CREATE TABLE genres(
	id  INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL
);

DROP TABLE IF EXISTS platforms CASCADE;

CREATE TABLE platforms(
	id  INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL
);


DROP TABLE IF EXISTS movies_genres CASCADE;

CREATE TABLE movies_genres(
	movie_id VARCHAR REFERENCES movies(id),
	genre_id INT REFERENCES genres(id),
	PRIMARY KEY (movie_id, genre_id)
);

DROP TABLE IF EXISTS movies_platforms CASCADE;

CREATE TABLE movies_platforms(
	movie_id VARCHAR REFERENCES movies(id),
	platform_id INT REFERENCES platforms(id),
	PRIMARY KEY (movie_id, platform_id)
);