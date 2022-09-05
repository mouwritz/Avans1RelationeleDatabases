-- Oefeningen GROUP BY & HAVING
-- Geef de plaatsen en het aantal klanten per plaats
SELECT PlaatsHfdkntr, COUNT(*) AS 'Aantal klanten'
FROM Klant
GROUP BY PlaatsHfdkntr

-- Geef de plaatsen met meer dan 1 klant
SELECT PlaatsHfdkntr
FROM Klant
GROUP BY PlaatsHfdkntr
HAVING COUNT(*) > 1

-- Geef de plaas(en) met meeste klanten
SELECT PlaatsHfdkntr, COUNT(*) AS 'Aantal klanten'
FROM Klant
GROUP BY PlaatsHfdkntr
HAVING 