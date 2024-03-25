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

--Count number of unique athletes in cleaned_results table
SELECT COUNT (DISTINCT athlete_url)
FROM cleaned_results;

--Find all host countries included in hosts table
SELECT DISTINCT(country)
FROM hosts;

--Count number of medals awarded when host country was Norway
SELECT COUNT(medal_type)
FROM medals AS m
JOIN hosts AS h ON
h.game_slug = m.slug_game
WHERE h.country = 'Norway';

--Medals won by individual athletes in ascending order
SELECT a.first_name, a.last_name, cr.athlete_url, a.gold_medals
FROM cleaned_results AS cr
JOIN athletes AS a ON
a.athlete_url = cr.athlete_url
ORDER BY gold_medals DESC;

--Count all gold medals, grouped by country in the London 2012 games
SELECT COUNT(gold_medals), country_name, slug_game
FROM cleaned_results
WHERE slug_game = 'london-2012'
GROUP BY country_name, slug_game
ORDER BY COUNT(gold_medals) DESC;

