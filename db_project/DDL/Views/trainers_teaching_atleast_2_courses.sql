-- tento view vraci trenery kteri vyucuji alespon 2 kurzy
SELECT name, COUNT(*) as PocetKurzu
FROM trainer
WHERE course_id
GROUP BY name
HAVING COUNT(*) >= 2;