-- Create the 'hbtn_0d_usa' database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Create the 'cities' table if it doesn't already exist
CREATE TABLE IF NOT EXISTS cities (
    -- Define the 'id' column as an auto-generated integer with a NOT NULL constraint and primary key
    id INT AUTO_INCREMENT NOT NULL,
    
    -- Define the 'state_id' column as an integer with a NOT NULL constraint that references the 'id' column of the 'states' table
    state_id INT NOT NULL,
    
    -- Define the 'name' column as a variable character field with a maximum length of 256 characters and a NOT NULL constraint
    name VARCHAR(256) NOT NULL,
    
    -- Set the 'id' column as the primary key
    PRIMARY KEY (id),
    
    -- Create a foreign key constraint for the 'state_id' column that references the 'id' column of the 'states' table
    FOREIGN KEY (state_id) REFERENCES states(id)
);
