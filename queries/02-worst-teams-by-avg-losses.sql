-- Q: Which teams had most average losses? Teams with fewer than 5 seasons are omitted.
SELECT name, COUNT(name) as num_seasons, MIN(year) as first_year, MAX(year) as last_year, AVG(wins) as avg_wins, AVG(losses) as avg_losses
FROM teams
GROUP BY name
HAVING num_seasons >= 5
ORDER BY avg_losses DESC
-- verdict: trust. Tampa Bay Devil Rays are the worst