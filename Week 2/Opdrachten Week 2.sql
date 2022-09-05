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