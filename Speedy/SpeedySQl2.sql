CREATE DATABASE life_expectancy;
USE life_expectancy;

SELECT *  FROM halelifeexpectancyatbirth;
SELECT * FROM halewhoregionlifeexpectancyatbirth;
SELECT * FROM lifeexpectancyatbirth;
SELECT * FROM ofhaleinlifeexpectancy;
SELECT * FROM whoregionlifeexpectancyatbirth;

ALTER TABLE halewhoregionlifeexpectancyatbirth
CHANGE ï»¿Location Location VARCHAR(255);

SELECT PERIOD, COUNT(*) AS Male_Count
FROM lifeexpectancyatbirth 
WHERE DIM1="MALE" 
group by PERIOD;

SELECT PERIOD, COUNT(*) AS Female_Count
FROM lifeexpectancyatbirth 
WHERE DIM1="FEMALE" 
group by PERIOD;

SELECT LOCATION, COUNT(*) AS Male_Count
FROM lifeexpectancyatbirth 
WHERE DIM1="MALE" 
group by LOCATION;

SELECT LOCATION, COUNT(*) AS Female_Count
FROM lifeexpectancyatbirth 
WHERE DIM1="FEMALE" 
group by LOCATION;

SELECT LOCATION,AVG(`Hale Expectency`) as Avg_Hale_Expectancy, AVG(`Life Expectany`) as Avg_Life_Expectancy
FROM halewhoregionlifeexpectancyatbirth
GROUP BY LOCATION;







