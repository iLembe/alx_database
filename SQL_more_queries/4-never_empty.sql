-- Use the specified database (replace 'your_database' with the actual database name)

USE your_database;

-- Create the 'id_not_null' table if it does not already exist
CREATE TABLE IF NOT EXISTS id_not_null (
    -- Define the 'id' column as an integer with a NOT NULL constraint

    id INT NOT NULL DEFAULT 1,

    -- Define the 'name' column as a variable character field with a maximum length of 256 characters
    name VARCHAR(256)
);
