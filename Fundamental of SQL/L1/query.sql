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
 SELECT brand, model, condition, price FROM cars
 WHERE condition = 0;
