
DROP TABLE IF EXISTS athletes;

CREATE TABLE "athletes" (
    "athlete_url" VARCHAR(100)   NOT NULL PRIMARY KEY,
    "first_name" VARCHAR(30),
    "last_name" VARCHAR(50),
    "games_participations" INTEGER   NOT NULL,
    "gold_medals" INTEGER   NOT NULL,
    "silver_medals" INTEGER   NOT NULL,
    "bronze_medals" INTEGER   NOT NULL,
    "first_olympics" VARCHAR(30),
    "athlete_YOB" INTEGER   NOT NULL
);

DROP TABLE IF EXISTS hosts;

CREATE TABLE "hosts" (
    "game_slug" VARCHAR(30)   NOT NULL PRIMARY KEY,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "season" VARCHAR(6)   NOT NULL,
    "country" VARCHAR(30)   NOT NULL,
    "city" VARCHAR(30)   NOT NULL,
    "game_year" INTEGER   NOT NULL
);

DROP TABLE IF EXISTS results;

CREATE TABLE "results" (
    "discipline_title" VARCHAR(30)   NOT NULL,
    "event_title" VARCHAR(300)   NOT NULL,
    "slug_game" VARCHAR(30)   NOT NULL,
	FOREIGN KEY ("slug_game") REFERENCES hosts(game_slug),
    "participant_type" VARCHAR(10)   NOT NULL,
    "medal_type" VARCHAR(10),
    "rank_equal" BOOLEAN,
    "rank_position" VARCHAR(10),
    "country_name" VARCHAR(50)   NOT NULL,
    "country_3_letter_code" VARCHAR(3)   NOT NULL,
    "athlete_url" VARCHAR(100),
	FOREIGN KEY("athlete_url") REFERENCES athletes(athlete_url),
    "value_unit" VARCHAR(100),
    "value_type" VARCHAR(15),
    "first_name" VARCHAR(30),
    "last_name" VARCHAR(50),
    "athlete1_first_name" VARCHAR(30),
    "athlete1_last_name" VARCHAR(50),
    "athlete1_url" VARCHAR(100),
    "athlete2_first_name" VARCHAR(30),
    "athlete2_last_name" VARCHAR(50),
    "athlete2_url" VARCHAR(100)
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