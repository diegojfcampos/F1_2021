CREATE table if not exists drivers(DriverID INT NOT NULL PRIMARY KEY, FirstName VARCHAR(15), LastName VARCHAR(15));

CREATE table if not exists teams(TeamID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, TeamName VARCHAR(30), TeamDrivers INT, FOREIGN KEY(TeamDrivers) REFERENCES drivers(DriverID) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE table if not exists tracks(TrackID INT AUTO_INCREMENT NOT NULL PRIMARY KEY, Location VARCHAR(30));

CREATE table if not exists races(
RaceID VARCHAR (10), RaceTrack INT, Driver INT, Team INT, QualifyingPosition INT, RacePosition INT, RacePoints INT, 
PRIMARY KEY(RaceID, RaceTrack, Driver, Team), FOREIGN KEY(RaceTrack) REFERENCES tracks(TrackID) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY(Driver) REFERENCES drivers(DriverID) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY(Team) REFERENCES teams(TeamID) ON DELETE CASCADE ON UPDATE CASCADE);


INSERT INTO drivers VALUES ("44", "Lewis", "Hamilton"), ("11", "Sergio", "Perez"), ("33", "Max", "Verstappen"), ("77", "Valtteri", "Bottas");

INSERT INTO teams(TeamName,TeamDrivers)  VALUES ("Mercedes", "44"), ("Mercedes", "77"), ("REDBULL", "5"), ("REDBULL", "33"); 


INSERT INTO tracks(Location) VALUES("Bahrain"), ("Italy"), ("Portugal"), ("Spain"), ("Monaco"), ("Azerbaijan"), ("France"), ("Styria"), ("Austria"), ("Great Britain"), ("Hungary"), ("Belgium"), ("Netherlands"), ("Italy"), ("Russia"), ("Turkey"), ("United States"), ("Mexico"), ("Brazil"), ("Qatar"), ("Saudi Arabia"), ("Abu Dhabi");		
			    					
INSERT INTO races VALUES ("Round01", "1", "44", "1", "2", "1", "25"),
("Round01", "1", "77", "2", "3", "3", "16"), 
("Round01", "1", "33", "3", "1", "2", "18"), 
("Round01", "1", "5", "4", "11", "5", "10"),
("Round02", "2", "44", "1", "1", "2", "19"),
("Round02", "2", "77", "2", "8", "21", "0"), 
("Round02", "2", "33", "3", "3", "1", "25"), 
("Round02", "2", "5", "4", "2", "11", "0"),
("Round03", "3", "44", "1", "2", "1", "25"),
("Round03", "3", "77", "2", "1", "3", "16"), 
("Round03", "3", "33", "3", "3", "2", "18"), 
("Round03", "3", "5", "4", "4", "4", "12"),
("Round04", "4", "44", "1", "1", "1", "25"),
("Round04", "4", "77", "2", "3", "3", "15"), 
("Round04", "4", "33", "3", "2", "2", "19"), 
("Round04", "4", "5", "4", "8", "5", "10"),
("Round05", "5", "44", "1", "7", "7", "7"),
("Round05", "5", "77", "2", "3", "21", "0"), 
("Round05", "5", "33", "3", "1", "1", "25"), 
("Round05", "5", "5", "4", "9", "4", "12"),
("Round06", "6", "44", "1", "1", "15", "0"),
("Round06", "6", "77", "2", "10", "12", "0"), 
("Round06", "6", "33", "3", "3", "21", "0"), 
("Round06", "6", "5", "4", "7", "1", "25"),
("Round07", "7", "44", "1", "2", "2", "18"),
("Round07", "7", "77", "2", "4", "4", "12"), 
("Round07", "7", "33", "3", "1", "1", "25"), 
("Round07", "7", "5", "4", "3", "3", "15"),
("Round08", "8", "44", "1", "3", "2", "19"),
("Round08", "8", "77", "2", "2", "3", "15"), 
("Round08", "8", "33", "3", "1", "1", "25"), 
("Round08", "8", "5", "4", "5", "4", "12"),
("Round09", "9", "44", "1", "4", "4", "12"),
("Round09", "9", "77", "2", "5", "2", "18"), 
("Round09", "9", "33", "3", "1", "1", "25"), 
("Round09", "9", "5", "4", "2", "6", "8"),
("Round10", "10", "44", "1", "1", "1", "25"),
("Round10", "10", "77", "2", "3", "2", "15"), 
("Round10", "10", "33", "3", "2", "21", "0"), 
("Round10", "10", "5", "4", "5", "16", "0"),
("Round11", "11", "44", "1", "1", "1", "18"),
("Round11", "11", "77", "2", "2", "21", "0"), 
("Round11", "11", "33", "3", "3", "9", "2"), 
("Round11", "11", "5", "4", "4", "21", "0"),
("Round12", "12", "44", "1", "3", "3", "7"),
("Round12", "12", "77", "2", "8", "12", "0"), 
("Round12", "12", "33", "3", "1", "1", "12"), 
("Round12", "12", "5", "4", "7", "19", "0"),
("Round13", "13", "44", "1", "2", "2", "19"),
("Round13", "13", "77", "2", "3", "3", "15"), 
("Round13", "13", "33", "3", "1", "1", "25"), 
("Round13", "13", "5", "4", "16", "8", "0"),
("Round14", "14", "44", "1", "1", "21", "0"),
("Round14", "14", "77", "2", "3", "2", "15"), 
("Round14", "14", "33", "3", "2", "21", "0"), 
("Round14", "14", "5", "4", "9", "5", "10"),
("Round15", "15", "44", "1", "4", "1", "25"),
("Round15", "15", "77", "2", "7", "5", "10"), 
("Round15", "15", "33", "3", "20", "2", "18"), 
("Round15", "15", "5", "4", "9", "9", "2"),
("Round16", "16", "44", "1", "1", "5", "10"),
("Round16", "16", "77", "2", "2", "1", "26"), 
("Round16", "16", "33", "3", "3", "2", "18"), 
("Round16", "16", "5", "4", "7", "3", "15"),
("Round17", "17", "44", "1", "2", "2", "19"),
("Round17", "17", "77", "2", "4", "6", "8"), 
("Round17", "17", "33", "3", "1", "1", "25"), 
("Round17", "17", "5", "4", "7", "3", "15"),
("Round18", "18", "44", "1", "2", "2", "18"),
("Round18", "18", "77", "2", "1", "15", "0"), 
("Round18", "18", "33", "3", "3", "1", "25"), 
("Round18", "18", "5", "4", "4", "3", "15"),
("Round19", "19", "44", "1", "21", "1", "25"),
("Round19", "19", "77", "2", "2", "3", "15"), 
("Round19", "19", "33", "3", "1", "2", "18"), 
("Round19", "19", "5", "4", "3", "4", "13"),
("Round20", "20", "44", "1", "1", "1", "25"),
("Round20", "20", "77", "2", "3", "21", "0"), 
("Round20", "20", "33", "3", "2", "2", "19"), 
("Round20", "20", "5", "4", "11", "4", "12"),
("Round21", "21", "44", "1", "1", "1", "26"),
("Round21", "21", "77", "2", "2", "3", "15"), 
("Round21", "21", "33", "3", "3", "2", "18"), 
("Round21", "21", "5", "4", "5", "21", "0"),
("Round22", "22", "44", "1", "2", "2", "18"),
("Round22", "22", "77", "2", "6", "6", "8"), 
("Round22", "22", "33", "3", "1", "1", "26"), 
("Round22", "22", "5", "4", "4", "21", "0");




Querys


SELECT races.Driver, drivers.FirstName, drivers.LastName, teams.TeamName, COUNT(races.RacePosition) as Podium_Appearances from ((races LEFT JOIN drivers ON drivers.DriverID = races.Driver)LEFT JOIN teams ON teams.TeamID = races.Team)
WHERE races.RacePosition < 4
GROUP BY races.Driver
ORDER BY Podium_Appearances DESC;


SELECT races.Driver, drivers.FirstName, drivers.LastName, teams.TeamName, SUM(races.RacePoints) as Total_Points from ((races LEFT JOIN drivers ON drivers.DriverID = races.Driver)LEFT JOIN teams ON teams.TeamID = races.Team)
GROUP BY races.Driver
ORDER BY Total_Points DESC;


SELECT races.Team, teams.TeamName, SUM(races.RacePoints) as Total_Team_Points from races 
Left Join teams ON teams.TeamID = races.Team
GROUP BY teams.Teamname 
ORDER BY Total_Team_Points DESC;

SELECT races.Driver, drivers.FirstName, drivers.LastName, teams.TeamName, AVG(races.RacePosition) as Average_Position from ((races LEFT JOIN drivers ON drivers.DriverID = races.Driver) LEFT JOIN teams ON teams.TeamID = races.Team)
GROUP BY races.Driver
ORDER BY Average_Position;


SELECT races.Driver, drivers.FirstName, drivers.LastName, teams.TeamName, COUNT(races.QualifyingPosition) as Number_Of_Pole_Position from((races LEFT JOIN drivers ON drivers.DriverID = races.Driver) INNER JOIN teams ON teams.TeamID = races.Team)
WHERE races.QualifyingPosition = "1"
GROUP BY races.Driver
ORDER BY Number_Of_Pole_Position DESC;

SELECT teams.TeamName, COUNT(races.QualifyingPosition) as Number_Of_Pole_Position from races INNER JOIN teams ON teams.TeamID = races.Team
WHERE races.QualifyingPosition = "1"
GROUP BY teams.TeamName
ORDER BY Number_Of_Pole_Position DESC;


SELECT races.Driver, drivers.FirstName, drivers.LastName, COUNT(races.RacePosition) as Races_Won from races INNER JOIN drivers ON drivers.DriverID = races.Driver
WHERE races.RacePosition = "1"
GROUP BY races.Driver
ORDER BY Races_Won DESC;


SELECT teams.TeamName, COUNT(races.RacePosition) as Races_Won from races INNER JOIN teams ON teams.TeamID = races.Team
WHERE races.RacePosition = "1"
GROUP BY teams.TeamName
ORDER BY Races_Won DESC;

SELECT races.RaceTrack, tracks.Location as Race_Name, races.Driver, drivers.FirstName, drivers.LastName from ((races LEFT JOIN tracks ON tracks.TrackID = races.RaceTrack) LEFT JOIN drivers ON drivers.DriverID = races.Driver)
WHERE races.RacePosition = "1"
HAVING races.Driver = "44" or races.Driver = "77"
ORDER BY races.RaceTrack;

SELECT races.RaceTrack, tracks.Location as Race_Name, races.Driver, drivers.FirstName, drivers.LastName from ((races LEFT JOIN tracks ON tracks.TrackID = races.RaceTrack) LEFT JOIN drivers ON drivers.DriverID = races.Driver)
WHERE races.RacePosition = "1"
HAVING races.Driver = "11" or races.Driver = "33"
ORDER BY races.RaceTrack;



 

SELECT RaceID, TrackId.Location, DriverID.


select teams.TeamName, drivers.DriverID, drivers.FirstName, drivers.LastName from teams
INNER JOIN drivers
ON teams.TeamDrivers = drivers.DriverID 
