-- \c jonathonlaylo;

-- CREATE USER "indexed_cars_user";
-- DROP DATABASE IF EXISTS "indexed_cars";
-- CREATE DATABASE "indexed_cars"
--   WITH OWNER "indexed_cars_user";

-- \c indexed_cars indexed_cars_user;
-- \i scripts/car_models.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- --enable timing
-- \timing

--Run a query to get a list of all make_title values from the car_models table where the make_code is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT DISTINCT make_title
  FROM car_models
  WHERE make_code = 'LAM';

--Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)
SELECT DISTINCT model_title
  FROM car_models
  WHERE make_code = 'NISSAN'
  AND model_code = 'GT-R';

--Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM', and note the time somewhere. (should have 1360 rows)
SELECT make_code, model_code, model_title, year
  FROM car_models
  WHERE make_code = 'LAM';

--Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
SELECT * FROM car_models
  WHERE year
  BETWEEN 2010 AND 2015;

--Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
SELECT * FROM car_models
  WHERE year = 2010;