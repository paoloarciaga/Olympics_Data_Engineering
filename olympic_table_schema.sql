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
	city VARCHAR(30)
	);

SELECT * FROM hosts;

DROP TABLE IF EXISTS results;

CREATE TABLE results (
	discipline_title VARCHAR(50),
	event_title VARCHAR(300),
	slug_game VARCHAR(30),
	participant_type VARCHAR(10),
	medal_type VARCHAR(6),
	athletes VARCHAR(300),
	rank_equal BOOLEAN,
	rank_position VARCHAR(3),
	country_name VARCHAR(50),
	country_code VARCHAR(4),
	country_3_letter_code VARCHAR(3),
	athlete_url VARCHAR(100),
	athlete_full_name VARCHAR(100),
	value_unit VARCHAR(50),
	value_type VARCHAR(50)
	);

SELECT * FROM results;