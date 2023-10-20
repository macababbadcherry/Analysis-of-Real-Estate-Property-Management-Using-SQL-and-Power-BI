-- Data to work on
SELECT *
FROM Housing_dataset;

-- Searching for duplicates
WITH Duplicates AS (
    SELECT 
		id, [Property location], bedrooms, price, sqft_living, lat, long, COUNT(*) AS duplicate_count
    FROM Housing_Dataset
    GROUP BY id, [Property location], price, sqft_living, lat, long, bedrooms
    HAVING COUNT(*) > 1
)

SELECT *
FROM Duplicates;

--** Note: There are two rows with duplicated details.

-- Remove duplicates and create new table
SELECT DISTINCT * INTO US_Housing
FROM Housing_Dataset 

-- Looking at the newly created table
SELECT *
FROM US_Housing

-- Delete unnecessary columns
ALTER TABLE US_Housing
DROP COLUMN sqft_living, sqft_lot, [view], grade, sqft_above, sqft_basement, zipcode, lat, long, sqft_living15, sqft_lot15

-- Checking negative values in the price column --
SELECT 
    price
FROM US_Housing
WHERE price < 0 

--** Note: No negative price values

-- Check distint values in the bedroom column and quantity --    
SELECT 
    bedrooms, COUNT(bedrooms) bedroom_quantity
FROM US_Housing
GROUP BY 
    bedrooms

--** Note:The number of bedrooms in a house ranges from 1 to 6.

-- Check distint values in the floor column and quantity --    
SELECT 
    floors, COUNT(floors) floor_quantity
FROM US_Housing
GROUP BY 
    floors

--** Note:The number of floor ranges from 1 to 3 with an interval of 0.5.

-- Check distint values in the waterfront column and quantity --    
SELECT 
	waterfront, COUNT(waterfront) 
FROM US_Housing
GROUP BY 
	waterfront

--** Note: The waterfront status with 0 and 1 indicating no waterfront and with waterfront, respectively

-- Check distint values in the Condition column and quantity --    
SELECT 
    Condition, COUNT(Condition)
FROM US_Housing
GROUP BY 
    Condition
	
--** Note:The property condition starts from 0 (Bad) and end with 2 (Good) and 1 indicates Very Good Condition

-- Check distint values in the yr_built and corresponding number of house built --
SELECT 
	yr_built, COUNT(yr_built)
FROM US_Housing
GROUP BY 
	yr_built
ORDER BY
	yr_built 

--** Note: The year the buildings was built was from 2000-2021.

-- Check distint values in the yr_renovated and corresponding number of renovated buildings or not 
SELECT 
	yr_renovated, COUNT(yr_renovated)
FROM US_Housing
GROUP BY 
	yr_renovated
ORDER BY
	yr_renovated

--** Note: There are buildings that are not yet renovated.

-- Check distint values in the Property Location column and quantity --    
SELECT 
    [Property Location], COUNT([Property Location])
FROM US_Housing
GROUP BY 
    [Property Location]

--** There are 6 distinct property locations.

-- Checking Null Values
SELECT ID, [Property location], price, bedrooms, sqft_living, sqft_lot, floors, waterfront, [view], Condition, grade, sqft_above, sqft_basement, yr_built, yr_renovated, zipcode, lat, long, sqft_living15, sqft_lot15
FROM US_Housing
WHERE ID IS NULL OR [Property location] IS NULL OR price IS NULL OR bedrooms IS NULL OR sqft_living IS NULL OR sqft_lot IS NULL OR floors IS NULL OR waterfront IS NULL OR [view] IS NULL OR Condition IS NULL OR grade IS NULL OR sqft_above IS NULL OR sqft_basement IS NULL OR yr_built IS NULL OR yr_renovated IS NULL OR zipcode IS NULL OR lat IS NULL OR long IS NULL OR sqft_living15 IS NULL OR sqft_lot15 IS NULL;

--** Note: No null values

-- Another way of checking the Condition, ID column for non-null and null count
SELECT
	COUNT(CASE WHEN ID IS NOT NULL THEN 1 ELSE NULL END) AS id_NullCount,
	COUNT(CASE WHEN ID IS NULL THEN 1 ELSE NULL END) AS id_NullCount,
	COUNT(CASE WHEN Condition IS NOT NULL THEN 1 ELSE NULL END) AS Condition_NonNullCount,
    COUNT(CASE WHEN Condition IS NULL THEN 1 ELSE NULL END) AS Condition_NullCount
 FROM US_Housing

--** Note: This query can also be done in other columns

---- [if null values exist] Viewing the data to be delete before deleting [1]
-- SELECT *
-- FROM US_Housing
-- WHERE price is NULL OR sqft_living IS NULL OR grade IS NULL

-- DELETE FROM US_Housing
-- WHERE price is NULL OR sqft_living IS NULL OR grade IS NULL

---- [if null values exist] Viewing the data to be changed before changing its value [2]
-- SELECT *
-- FROM US_Housing
-- WHERE price is NULL OR sqft_living IS NULL OR grade IS NULL

-- UPDATE US_Housing
-- SET column1 = ISNULL(bedroom, 1), 
--     column2 = ISNULL(yr_renovated, 0), 
--	   column3 = ISNULL(floors, 1);

-- Changing data types 
ALTER TABLE US_Housing
ALTER COlUMN id bigint

ALTER TABLE US_Housing
ALTER COlUMN bedrooms nvarchar(255)

ALTER TABLE US_Housing
ALTER COlUMN floors nvarchar(255) 

ALTER TABLE US_Housing
ALTER COLUMN price bigint

ALTER TABLE US_Housing
ALTER COLUMN waterfront int

-- Adding a specific word into a certain column
UPDATE US_Housing
SET bedrooms = CONCAT(bedrooms, ' bedroom(s)');

UPDATE US_Housing
SET floors = CONCAT(floors,' floor(s)');

---- Replacing a certain word
--UPDATE US_Housing
-- SET bedrooms = REPLACE(bedrooms, 'bedroom(s)', ' bedrooms');

--** Note: forgot the add space before the word 'bedroom(s)'

-- Adding conditional columns
ALTER TABLE US_Housing
ADD condition_status AS (
	CASE
		WHEN condition = 0 THEN 'Bad'
		WHEN condition = 1 THEN 'Very Good'
		ELSE 'Good' 
		END ),
	renovation_status AS ( 
	CASE
		WHEN yr_renovated = 0 THEN 'not yet renovated'
		ELSE 'renovated' 
		END);

-- Renaming a column name
EXEC sp_rename 'US_Housing.[Property Location]', 'property_location', 'COLUMN'

-- Renaming the file
EXEC sp_rename 'US_Housing', 'Housing_DataPrep'

