--Count the gold medals won by Australia
SELECT COUNT(medal_type)
FROM medals
WHERE medal_type = 'GOLD'
AND country_3_letter_code = 'AUS';

--Find all unique discipline titles in medals table
SELECT DISTINCT discipline_title
FROM medals
ORDER BY discipline_title ASC;

--Count number of unique athlete urls in athletes table
SELECT COUNT (DISTINCT athlete_url)
FROM athletes;

--Find all host countries included in hosts table
SELECT DISTINCT(country)
FROM hosts;

--Count number of medals awarded when host country was Norway
SELECT COUNT(medal_type)
FROM medals AS m
JOIN hosts AS h ON
h.game_slug = m.slug_game
WHERE h.country = 'Norway';

