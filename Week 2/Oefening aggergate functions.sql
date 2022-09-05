-- Oefening aggregate Functions
-- Wat is het gemiddelde commissie percentage
SELECT AVG(CommPerct) AS 'Gemiddeld percentage'
FROM Verkoper

-- Hoeveel cerkopers zijn in 2001 in dienst gekomen
SELECT COUNT(*) AS 'Aantal'
FROM Verkoper
WHERE JaarinDienst = 2001

-- Hoeveel is het verschil tussen het laagste en hoogste commissiepercentage
SELECT MAX(CommPerct) - MIN(CommPerct)
FROM Verkoper