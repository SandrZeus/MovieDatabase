SELECT d.Name AS Director, a.Name AS Actor, COUNT(*) AS MovieCount
FROM Directors d
JOIN FilmsDirectors fd ON d.DirectorID = fd.DirectorID
JOIN FilmsActors fa ON fd.FilmID = fa.FilmID
JOIN Actors a ON fa.ActorID = a.ActorID
GROUP BY d.Name, a.Name
ORDER BY MovieCount DESC
LIMIT 1;
