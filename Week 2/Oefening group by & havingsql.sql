-- Oefeningen GROUP BY & HAVING
-- Geef de plaatsen en het aantal klanten per plaats
SELECT PlaatsHfdkntr, COUNT(PlaatsHfdkntr) AS 'Aantalklanten'
FROM Klant
GROUP BY PlaatsHfdkntr

-- Geef de plaatsen met meer dan 1 klant
SELECT PlaatsHfdkntr, COUNT(PlaatsHfdkntr) AS 'Aantalklanten'
FROM Klant
GROUP BY PlaatsHfdkntr
HAVING COUNT(PlaatsHfdkntr) > 1

-- Geef de plaas(en) met meeste klanten
-- VIEW aanmaken
CREATE VIEW AantalKlantenPerPlaats AS
SELECT PlaatsHfdkntr, COUNT(PlaatsHfdkntr) AS 'Aantalklanten'
FROM Klant
GROUP BY PlaatsHfdkntr

--DROP VIEW AantalKlantenPerPlaats;

SELECT MAX(AantalKlanten)
FROM AantalKlantenPerPlaats

SELECT PlaatsHfdkntr, COUNT(PlaatsHfdkntr) AS 'Aantalklanten'
FROM Klant
GROUP BY PlaatsHfdkntr
HAVING COUNT(PlaatsHfdkntr) = (SELECT Aantalklanten 
								FROM AantalKlantenPerPlaats)
								
-- snelle manier (niet goed)
SELECT TOP 1 PlaatsHfdkntr, COUNT(PlaatsHfdkntr) AS 'Aantalklanten'
FROM Klant
GROUP BY PlaatsHfdkntr
ORDER BY Aantalklanten DESC
