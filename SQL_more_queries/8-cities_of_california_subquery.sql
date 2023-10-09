-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Select all cities of California by specifying the state_id that corresponds to California in the 'states' table
SELECT cities.id, cities.name
FROM cities, states
WHERE cities.state_id = states.id AND states.name = 'California'
ORDER BY cities.id ASC;
