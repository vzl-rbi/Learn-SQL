-- SELECT brand, model,price FROM cars;
-- Challenge-1
/*
	Select the brand, model, condition and year from the cars table
*/
  -- SELECT brand, model, year FROM cars
--  WHERE year = 1965;
-- Challenge-2
 /*
	Select the brand, model, color and price from cars
		where the color is black
*/
-- SELECT brand, model, color, price FROM cars
-- WHERE color = 'black';

--Challenge-03
/*
	Select the brand, model, condition and price from cars
		where the condition equals 0
*/
--  SELECT brand, model, condition, price FROM cars
--  WHERE condition = 0;

--Numerical Filtering
--Challenge-04
/*
	Select the brand, model, condition and price from cars
		find results where the condition is greater than 3
*/
-- SELECT brand, model, condition, price FROM cars
-- WHERE condition > 3;
/*
	Select the brand, model, condition and price from cars
		find results where the price is less than $50,000
*/
-- SELECT brand, model, condition, price FROM cars
-- WHERE price < 50000;

--Challenge-05
--Not equal
/*
	Filter out cars from 1965
		Select the brand, model, year and price
*/
-- SELECT brand, model, year, price FROM cars
-- WHERE year != 1965;
/*
	Find cars which are not yellow
		Select the brand, model, price and color
*/
-- SELECT brand, model, price, color FROM cars
-- WHERE color != 'yellow';

--Challenge-06
-- NOT and LIKE
/*
	Select the brand, model, color and year
		find any car where the color includes 'green'
*/
-- SELECT brand, model, color, year FROM cars
-- WHERE color LIKE '%green%'; --for opposite NOT LIKe
/*
	Select the brand, model, color and year for cars
		where the model is 'DB' followed by any other single character
*/
-- SELECT brand, model, color, year FROM cars
-- WHERE model LIKE '%DB%'; -- use this 'DB_' same output

--Challenge-07
--AND
/*
	Select the brand, model, color and year from cars
		exclude any green car
		show models which are 'DB' followed by any other single character
*/
-- SELECT brand, model, color, year FROM cars
-- WHERE color NOT LIKE '%green%'
-- AND model LIKE 'DB_';
/*
	Select the brand, model, color and year from cars
		exclude any green car
		show models which are 'DB' followed by any other single character
		and the year is after 1966.
*/
-- SELECT brand, model, color, year FROM cars
-- WHERE color NOT LIKE '%green%'
-- AND model LIKE 'DB_'
-- AND year > 1966;
/*
	Select the brand, model, year, condition and price from cars
		where the condition is 3 or higher
		and the year is before 1970
*/
-- SELECT brand, model, year, condition, price FROM cars
-- WHERE condition >= 3       -- This => is not a valid SQL operator, >= means "greater than or equal to"
-- AND year < 1970;
/*
	Select the brand, model, year, condition and price from cars
		where the condition is 3 or higher
		and the year is before 1970
		and the price is below 100,000
*/
SELECT brand, model, year, condition, price FROM cars
WHERE condition >= 3 AND year < 1970 AND price < 100000;