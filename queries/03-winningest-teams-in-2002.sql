-- Q: Which team(s) won the most games in 2002?
SELECT name, year, wins
FROM teams
WHERE year = 2002
AND wins = 
(SELECT max(wins) FROM teams WHERE year = 2002)
-- Verdict: trust. Both the NY Yankees and the Oakland As had 103 wins in 2002