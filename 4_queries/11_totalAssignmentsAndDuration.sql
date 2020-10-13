SELECT day, id, COUNT(duration)
FROM assignments
GROUP BY day
ORDER BY day;