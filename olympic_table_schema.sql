DROP TABLE IF EXISTS athletes;

CREATE TABLE athletes (
	athlete_url VARCHAR(100),
	first_name VARCHAR(30),
	last_name VARCHAR(50),
	games_participations INTEGER NOT NULL,
	gold_medals INTEGER NOT NULL,
	silver_medals INTEGER NOT NULL,
	bronze_medals INTEGER NOT NULL,
	first_olympics VARCHAR(30),
	athlete_YOB INTEGER NOT NULL
	);
	
SELECT * FROM athletes;

DROP TABLE IF EXISTS hosts;

CREATE TABLE hosts (
	game_slug VARCHAR(30),
	start_date DATE,
	end_date DATE,
	season VARCHAR(6),
	country VARCHAR(30),
	city VARCHAR(30),
	game_year INTEGER
	);

SELECT * FROM hosts;

DROP TABLE IF EXISTS results;
