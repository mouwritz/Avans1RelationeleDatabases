/*
Opdracht week 1
Klant tabel
*/
-- 1.
SELECT *
FROM Klant;

-- 2.
SELECT KlantNaam, PlaatsHfdkntr
FROM Klant;

-- 3.
SELECT DISTINCT PlaatsHfdkntr
FROM Klant

-- 4. 
SELECT KlantNaam
FROM Klant
WHERE PlaatsHfdkntr = 'Los Angeles' OR PlaatsHfdkntr = 'New York'

-- 5. 
SELECT *
FROM Klant
WHERE KlantNaam LIKE 'C%'

-- 6. 
SELECT *
FROM Klant
WHERE KlantNaam LIKE '%Store%'

-- 7.
SELECT *
FROM Klant
WHERE KlantNaam NOT LIKE '%’%'

-- 8.
SELECT *
FROM Klant
ORDER BY PlaatsHfdkntr

-- 9.
SELECT *
FROM Klant
ORDER BY PlaatsHfdkntr DESC

-- 10.
SELECT KlantNaam
FROM Klant
WHERE VerkoperNr = 137

-- Verkoper
-- 1.
SELECT VerkoperNaam, CommPerct
FROM Verkoper
WHERE CommPerct > 15

-- 2.
SELECT VerkoperNaam, CommPerct
FROM Verkoper
WHERE CommPerct > 10 AND CommPerct < 15;

-- 3.
SELECT VerkoperNaam
FROM Verkoper
WHERE JaarinDienst < '2000' AND CommPerct >= 15

-- 4.
SELECT *
FROM Verkoper
WHERE ( YEAR( GETDATE() ) - JaarinDienst ) < 20

-- 5. 
SELECT VerkoperNr
FROM Klant
WHERE PlaatsHfdkntr = 'New York'

-- 6.
SELECT * 
FROM Verkoper
WHERE VerkoperNr IN (137, 204, 186)

-- Omzet en kamer tabel
-- 1.
SELECT *
FROM Omzet
WHERE VerkoperNr = 361

-- 2. 
SELECT *
FROM Omzet
WHERE Aantal < 1000 OR Aantal > 3000

-- 3. 
SELECT VerkoperNr
FROM Omzet
WHERE ProductNr = 26722

-- 4. 
SELECT VerkoperNaam
FROM Verkoper
WHERE VerkoperNr = 361 OR VerkoperNr = 204

-- 5. 
SELECT VerkoperNr, ProductNr, Aantal
FROM Omzet
WHERE ProductNr = 26722 OR ProductNr = 16386

-- 6.
SELECT * 
FROM Kamer
WHERE Grootte > 80 AND Grootte < 100

-- 7.
SELECT * 
FROM Kamer
ORDER BY Grootte DESC