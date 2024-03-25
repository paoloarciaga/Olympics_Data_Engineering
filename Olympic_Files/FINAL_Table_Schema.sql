DROP TABLE IF EXISTS hosts;

CREATE TABLE "hosts" (
    "game_slug" VARCHAR(30)   NOT NULL PRIMARY KEY,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "season" VARCHAR(6)   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "game_name" VARCHAR(30)
);

SELECT * FROM hosts;

DROP TABLE IF EXISTS athletes;

CREATE TABLE "athletes" (
    "athlete_url" VARCHAR(100)  NOT NULL PRIMARY KEY,
    "first_name" VARCHAR(30),
    "last_name" VARCHAR(50),
    "games_participations" INTEGER   NOT NULL,
    "gold_medals" INTEGER   NOT NULL,
    "silver_medals" INTEGER   NOT NULL,
    "bronze_medals" INTEGER   NOT NULL,
    "first_olympics" VARCHAR(30),
    FOREIGN KEY ("first_olympics") REFERENCES hosts("game_slug"),
    "athlete_YOB" INTEGER   NOT NULL
);

DROP TABLE IF EXISTS medals;

CREATE TABLE "medals" (
    "discipline_title" VARCHAR(30)   NOT NULL,
    "slug_game" VARCHAR(30)   NOT NULL,
	FOREIGN KEY (slug_game) REFERENCES hosts(game_slug),
    "country_name" VARCHAR(50)   NOT NULL,
    "country_3_letter_code" VARCHAR(3)   NOT NULL,
    "athlete1_first_name" VARCHAR(30),
    "athlete1_last_name" VARCHAR(50),
    "athlete1_url" VARCHAR(100),
    "athlete2_first_name" VARCHAR(30),
    "athlete2_last_name" VARCHAR(50),
    "athlete2_url" VARCHAR(100),
    "participant_type" VARCHAR(10),
    "event_title" VARCHAR(100)   NOT NULL,
    "event_gender" VARCHAR(10)   NOT NULL,
    "medal_type" VARCHAR(10)   NOT NULL  
);


DROP TABLE IF EXISTS cleaned_results;

CREATE TABLE cleaned_results (
	discipline_title VARCHAR(100),	
	event_title	VARCHAR(300),
	slug_game VARCHAR(30),
	FOREIGN KEY ("slug_game") REFERENCES hosts(game_slug),
	participant_type VARCHAR(10),	
	medal_type VARCHAR(10),
	country_name VARCHAR(100),
	country_3_letter_code VARCHAR(3),
	games_participations FLOAT(5),
	gold_medals FLOAT(5),
    silver_medals FLOAT(5),
    bronze_medals FLOAT(5),
	athlete_YOB FLOAT(5),
	athlete_url	VARCHAR(100)
);