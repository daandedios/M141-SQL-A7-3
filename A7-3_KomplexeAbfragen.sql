/*
*****************************
developer: Daan de Dios
date: 2018-10-26
function: 7-3
*****************************
######################################
!! Dies sind die meine Lösungen !!
!! Bei Fragen stehe ich euch gerne zu Verfügung: "SQL.dedios@gmail.com" oder per WhatsApp.
######################################
*/
USE Videothek;

/*Aufgabe 1
Kunde Nr.10 selektieren*/
SELECT * FROM Kunde
  WHERE Kundennummer = 10;
/*10	Herr	Roy	Kleiner*/


/*Aufgabe 2
Kunde Nr.10 zieht um und wohn neu am Höhenweg 5 in 9000 St. Gallen*/
UPDATE Kunde
  SET Strasse = "Höhenweg 5", PLZ = 9000, Ort = "St. Gallen"
  WHERE Kundennummer = 10;


/*Aufgabe 3
Kunde Nr. 10 wird gelöscht*/
DELETE FROM Kunde
  WHERE Kundennummer = 10;


/*Aufgabe 4
Alle Kunden mit Vornamen Hans selektieren*/
SELECT * FROM Kunde
  WHERE Vorname = "Hans";


/*Aufgabe 5
Alle Kunden aus Wil SG selektieren*/
SELECT * FROM Kunde
  WHERE Ort = "Wil SG";


/*Aufgabe 6
Der Film HIGH NOON inklusive Art und Standort selektieren*/
SELECT
       Film.Titel,
       Film.Dauer,
       Film.Jahr,
       MEDIUM.Art,
       MEDIUM.Regal,
       MEDIUM.Tablar
  FROM Film
    LEFT JOIN MEDIUM
      ON MEDIUM.Videonummer = Film.Videonummer
  WHERE Film.Titel = "007 - Ein Quantum Trost";


/*Aufgabe 7
Alle Ausleihen von Urs Scheidegger selektieren*/
SELECT
      Kunde.Vorname,
      Kunde.Nachname,
      Film.Titel,
      MEDIUM.Art,
      Ausleihe.Ausleihe
  FROM Kunde
    LEFT JOIN Ausleihe
      ON Ausleihe.Kundennummer = Kunde.Kundennummer
  WHERE Kunde.Vorname = "Urs";
