-- Opdrachten Week 2
-- Dia 6
--Geef de Klanten (Naam, VerkoperNr) van Verkoper Carlyle
SELECT KlantNaam, VerkoperNr 
FROM Klant
WHERE VerkoperNr = (SELECT VerkoperNr
					FROM Verkoper
					WHERE VerkoperNaam = 'Carlyle')

--Geef de namen van verkopers, die een kamer hebben met de grootste oppervlakte
SELECT VerkoperNaam
FROM Verkoper
WHERE KamerNummer IN (SELECT KamerNr
					FROM Kamer
					WHERE Grootte = (SELECT MAX(Grootte)
									FROM Kamer))

--Maak een query voor de verkoper-tabel met de kolommen: Naam, Kamer, InDienst en sorteer deze alfabetisc
SELECT VerkoperNaam, KamerNummer, JaarinDienst
FROM Verkoper
ORDER BY VerkoperNaam

--Maak een View VerkoperBasisGegevens met de kolommen: Naam, Kamer, InDienst en sorteer deze alfabetischVerklaar het resultaat. Pas de query aan, zodat er wel een View wordt gemaakt.
CREATE VIEW VerkoperBasisGegevens AS
SELECT VerkoperNaam, KamerNummer, JaarinDienst
FROM Verkoper

SELECT *
FROM VerkoperBasisGegevens
ORDER BY VerkoperNaam

--Geeft de verkopers(Naam, InDienst), die tussen 1990 en 2000 in dienst zijn gekomen. Gebruik de View VerkoperBasisGegevens.Orden de uitvoer op jaar van InDienst aflopend.
SELECT VerkoperNaam, JaarinDienst
FROM VerkoperBasisGegevens
WHERE JaarinDienst > 1990 AND JaarinDienst < 2000
ORDER BY JaarinDienst DESC

--Verwijder de View VerkoperBasisGegevens
DROP VIEW VerkoperBasisGegevens

--Welke verkopers (namen) hebben klanten met een klantnummer hoger dan 200?
SELECT VerkoperNaam
FROM Verkoper
WHERE VerkoperNr IN (SELECT VerkoperNr
					FROM Klant
					WHERE KlantNr > 200)

-- Dia 7
-- Geef de totale omzet (van alle producten en verkopers tezamen)
SELECT SUM(Aantal) AS Totaleomzet
FROM Omzet

-- Geef de gemiddelde kameroppervlakte
SELECT AVG(Grootte) AS gemiddeldOppervlakte
FROM Kamer

-- Geef het hoogste verkopernummer
SELECT MAX(VerkoperNr)
FROM Verkoper

-- Geef het aantal klanten in Los Angeles
SELECT COUNT(*)
FROM Klant
WHERE PlaatsHfdkntr = 'Los Angeles'

-- Geef het aantal klanten in Los Angeles en New York van de verkopers 137 en 204
SELECT COUNT(*) AS AantalKlanten
FROM Klant
WHERE VerkoperNr IN (137, 204) AND PlaatsHfdkntr IN ('Los Angeles', 'New York')

-- Geef het minimale en het maximale commissiepercentage van verkopers, die na 2000 in dienst zijn gekomen
SELECT MIN(CommPerct) AS Minimum, MAX(CommPerct) AS Maximum
FROM Verkoper
WHERE JaarinDienst > 2000

-- Geef het aantal kamers
SELECT COUNT(*)
FROM Kamer

-- Geef de totale oppervlakte van alle kamers samen
SELECT SUM(Grootte)
FROM Kamer

-- Geef een lijst met de verschillende productnummers
SELECT DISTINCT ProductNr
FROM Omzet