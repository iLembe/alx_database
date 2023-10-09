-- Create the 'hbtn_0d_usa' database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Select all cities and their corresponding states
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;
