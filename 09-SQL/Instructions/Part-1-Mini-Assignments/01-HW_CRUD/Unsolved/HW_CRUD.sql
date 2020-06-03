-- Drop table if exists
DROP TABLE firepower;

-- Create new table to import data
CREATE TABLE firepower (
	country VARCHAR,
	ISO3 VARCHAR,
	rank INT,
	TotalPopulation INT,
	ManpowerAvailable INT,
	TotalMilitaryPersonnel INT,
	ActivePersonnel INT,
	ReservePersonnel INT,
	TotalAircraftStrength INT,
	FighterAircraft INT,
	AttackAircraft INT,
	TotalHelicopterStrength INT,
	AttackHelicopters INT
);

-- Import data from firepower.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM firepower;






-- Find the rows that have a `ReservePersonnel` of 0 and remove these rows from the dataset.


DELETE FROM firepower 

WHERE ReservePersonnel = 0;

-------------------------

select ReservePersonnel

from firepower

where ReservePersonnel = 0



---Every country in the world at least deserves one `FighterAircraft`—it only seems fair. 
--Lets add one to each nation that has none.

delete from firepower where ReservePersonnel = 0;
update firepower set FighterAircraft = 1 where fighteraircraft = 0;
update firepower set TotalAircraftStrength = TotalAircraftStrength + 1
where fighteraircraft =1;



-----Find the [Averages](https://www.w3schools.com/sql/sql_count_avg_sum.asp) for `TotalMilitaryPersonnel`,
------`TotalAircraftStrength`, `TotalHelicopterStrength`, and `TotalPopulation`, and rename the columns with their 
--designated average.

Select round(avg(totalmilitarypersonnel),2) as "Avg Military Personnel"
		, round(avg(totalAircraftStrength),2) as "Avg Air Carft Strength"
		, round(avg(totalHelicopterStrength),2) as "Avg Helocopter Strength"
		, round(avg(totalPopulation),2) as "Avg Population"
		
From firepower






