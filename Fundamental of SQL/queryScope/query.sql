--Some good Challanges need to solve--
/*
	Select brand, model, and color from cars
		where the color is 'red'
		and the brand is not 'Ferrari'
		and the car has not been sold
*/
-- SELECT brand, model, color FROM cars
-- WHERE color = 'red'
-- AND brand != 'Ferrari'
-- AND sold IS FALSE;
/*
	Select brand, model, and color from cars
		where the color is not red, blue, or white
		and the brand is none of: Aston Martin, Bentley or Jaguar
		and sold is false
*/
-- SELECT brand, model, color FROM cars
-- WHERE color NOT IN ( 'red', 'blue', 'white')
-- AND brand NOT IN ( 'Aston Martin', 'Bentley', 'Jaguar')
-- AND sold IS FALSE;
-- ✅ NOT IN is the perfect choice for excluding multiple exact values

-- ✅ sold IS FALSE correctly filters for unsold cars
/*
	Select brand, model, year, sold from cars
		where the brand is 'Dodge' and year is in the 60s
		or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
		only select cars where sold is not true
*/
-- SELECT brand, model, year, sold FROM cars
-- WHERE sold IS NOT TRUE
-- AND (
--     (brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
--     OR
--     (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979)
-- );
-- SELECT brand, model, year, sold FROM cars
--   WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
--   OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979))
--  AND SOLD IS NOT TRUE;






--Challange-10---ORDER BY Operator---
--The ORDER BY keyword is used to sort the result-set in ascending or descending order.
--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
/*
	Select the brand, model and year from the cars table
		order by the brand
*/
-- SELECT brand, model, year FROM cars
-- ORDER BY brand;
/*
	Select the brand, model, condition and price from cars
		order the table by condition in descending order
		and by price in ascending order
*/
--  SELECT brand, model, condition, price FROM cars
-- ORDER BY condition DESC, price;
/*
		Select the brand, model, condition and price from cars
		where the car is not sold
		and the condition is not 5
		order the table by condition in descending order
		and by price in ascending order
*/
-- SELECT brand, model, condition, price FROM cars
-- WHERE sold IS FALSE
-- AND condition != 5
-- ORDER BY condition DESC, price;





--Challenge-11----LIMIT operator--
-- The LIMIT clause is used to specify the number of records to return.
--The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
/*
	Select the brand, model, year and price from the cars table
		order the results by the price in descending order
		limit the results to 1
*/
-- SELECT brand, model, year, price FROM cars
-- ORDER BY price DESC LIMIT 1;
-- --✅ LIMIT 1 - returns only the single most expensive car
/*
	Select the brand, model, color and price from cars
		where the color is a shade of 'red'
		and sold is false
		order by price
		limit the results to 5
*/
-- SELECT brand, model, color, price FROM cars
-- WHERE color LIKE '%red%'
-- AND sold IS FALSE
-- ORDER BY price LIMIT 5;




--Challenge-12--COUNT and SUM ---
/*
	Count the number of cars
		where sold is true
*/
-- SELECT COUNT(*) FROM cars
-- WHERE sold IS TRUE;
-- alternative
-- SELECT COUNT(*) AS total_sold FROM cars
-- WHERE sold IS TRUE;
/*
	Sum the price of cars
		where sold is true
	Use the alias total_earnings in your output
*/
-- SELECT SUM(price) AS total_earnings FROM cars
-- WHERE sold IS TRUE;

-- SELECT AVG(price) AS total_price FROM cars
-- WHERE sold IS TRUE;




--Challenge-13----MAX, MIN, AVG---
/*
	Select the maximum retail price
		where sold is true
	Use most_expensive as an alias
*/
-- SELECT MAX(price) AS most_expensive FROM cars
-- WHERE sold IS TRUE;

/*
	Use the AVG aggregate function to find the average price
		where the brand is Bentley
		We can use FLOOR and CEIL to round the average down or up
			to the nearest whole number
*/

-- SELECT AVG(price) AS average_price FROM cars
-- WHERE brand = 'Bentley';

/*
	Use the AVG aggregate function to find the average price
		where the brand is Bentley
		We can use FLOOR and CEIL to round the average down or up
			to the nearest whole number
*/

-- SELECT FLOOR(AVG(price)) AS average_price FROM cars
-- WHERE brand = 'Bentley';
-- ALternative in details
-- SELECT 
--     COUNT(*) as total_bentleys,
--     MIN(price) as cheapest_bentley,
--     MAX(price) as most_expensive_bentley,
--     FLOOR(AVG(price)) AS average_price_floor,
--     ROUND(AVG(price)) AS average_price_rounded
-- FROM cars
-- WHERE brand = 'Bentley';

/*
	Select the average, minimum and maximum price from cars
		where sold is true
	Round the average up to the nearest whole number
		and use 'avg' as the alias for that result	
*/

-- SELECT
--  AVG(price) AS average_price, 
--  MIN(price) AS minimum_price,
--  MAX(price) AS maximum_price
--  FROM cars
--  WHERE sold IS TRUE;



--Challenge-xx--GROUP BY operator---
-- The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
/*
	Select the brand, and a count of the brand from cars
		alias the count as brand_count
		group by the brand column
*/
-- SELECT brand, COUNT(brand) AS brand_count FROM cars
-- GROUP BY brand;

/*
	Select the condition, and a count of the condition from cars
		group by the condition column
*/

-- SELECT condition, COUNT(condition) FROM cars
-- GROUP BY condition;

/*
	Select:
		* the brand
		* a count of the brand
		* and an average of the price for each brand
		* round the average down to the nearest number
		* alias the average as 'AVG' in your output
	From cars where
		the car has not been sold
	Group the table by brand.
*/
-- Using FLOOR() (rounds down to nearest integer)
-- 📊 What Each Rounding Method Does:
-- FLOOR(123.89) = 123 (always rounds down)
-- ROUND(123.89, 0) = 124 (rounds to nearest integer)
-- CAST(123.89 AS INTEGER) = 123 (truncates decimal part)

-- SELECT brand, COUNT(brand), FLOOR(AVG(price)) AS AVG FROM cars
-- WHERE sold IS NOT TRUE
-- GROUP BY brand;

--Challenge-xx---HAVING --
/*
	Select:
		* the brand
		* a count of the brand
		* and an average of the price for each brand
		* round the average down to the nearest number
		* alias the average as 'AVG' in your output
	From cars where
		the car has not been sold
	Group the table by brand.
	
	Show results where the count is > 1
*/

-- SELECT brand, count(brand), FLOOR(AVG(price)) AS AVG
-- 	FROM cars
-- 	WHERE sold IS FALSE
-- 	GROUP BY brand
-- 	HAVING count(brand) > 1;

/*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/
SELECT 
    year, 
    COUNT(year) AS car_count, 
    MAX(price), 
    MIN(price) 
FROM cars
WHERE sold = TRUE
GROUP BY year
HAVING COUNT(year) > 1
ORDER BY car_count;