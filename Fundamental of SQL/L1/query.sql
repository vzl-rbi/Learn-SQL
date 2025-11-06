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

--Challenge-07---*************
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
-- SELECT brand, model, year, condition, price FROM cars
-- WHERE condition >= 3 AND year < 1970 AND price < 100000;

--Challenge-08 ----------------------
--BETWEEN
/*
	Select cars made between 1980 and 1989
		show the brand, model, year and price
*/
-- SELECT brand, model, year, price FROM cars
-- WHERE year BETWEEN 1980 AND 1989; --//WHERE year >= 1980 AND year <= 1989;

/*
	Select brand, model, condition, color and price from cars
		where the price is between $20,000 and $60,000
		and the condition is between 1 and 3
		and the color contains red
*/
-- SELECT brand, model, condition, color, price FROM cars
-- WHERE price BETWEEN 20000 AND 60000 AND
-- condition BETWEEN 1 AND 3 AND color LIKE '%red%';

/*
Hint:
color = 'red' only matches exactly "red"

color LIKE '%red%' matches any color that contains "red" anywhere in the name (like "red", "dark red", "burgundy red", etc.)
*/

--Challenge-09-----------
-- OR  --
/*
	Find the brand, model, condition and price of cars
		where the price is less than $250,000
		or the brand is Porsche
*/
-- SELECT brand, model, condition, price FROM cars
-- 	WHERE price < 250000
-- 	OR brand = 'Porsche';
/*
	Find the brand, model, condition and price of cars
		where the price is less than $250,000
		or the brand is Porsche,
		only show cars with condition > 3
*/
--  SELECT brand, model, condition, price FROM cars
-- WHERE (price < 250000 OR brand = 'Porsche') --//Always use parentheses when mixing AND/OR to avoid confusion
-- AND condition > 3; 
/*
	Search for brand, model, color, year and price of cars
		where the color is a shade of red
		or the year is between 1960 and 1969
*/
-- SELECT brand, model, color, year, price FROM cars
-- WHERE color LIKE '%red%'
--  OR (year BETWEEN 1960 AND 1969);
/*
	Search for columns: brand, model, color, year, price, sold
		from the table cars
		where the color is a shade of red
		or the year is between 1960 and 1969
		and sold is false
*/

-- SELECT brand, model, color, year, price, sold FROM cars
-- WHERE (color LIKE '%red%' OR year BETWEEN 1960 AND 1969)
-- AND sold = false; --// instead do this sold IS false; // same result

--Challenge-10-------- IN operator
-- The IN operator allows you to specify multiple values in a WHERE clause.

-- The IN operator is a shorthand for multiple OR conditions.

/*
	Select the brand, model, price and sold columns from cars
		the brand can be 'Ford', 'Chevorlet' or 'Ferrari'
		sold must be false
*/
-- SELECT brand, model, price, sold FROM cars
-- WHERE brand IN ('Ford', 'Chevrolet', 'Ferrari')
-- AND sold = FALSE; --// IS FALSE; -- //sold = FALSE;


/*
	Select the brand, model, condition and year from cars
		Where the year is 1961, 1963, 1965, 1967 or 1969
		and the condition is 3 or higher
		and sold is false
*/
-- SELECT brand, model, condition, year FROM cars
-- WHERE year IN (1961, 1963, 1965, 1967, 1969)
-- AND condition >= 3
-- AND sold IS FALSE;
/*
	Select brand, model, price and sold from cars
		filter out any cars which are sold
		show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		or the price is less than $50000
*/
SELECT brand, model, price, sold FROM cars
WHERE sold IS FALSE
AND (brand NOT IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
OR price < 50000);

