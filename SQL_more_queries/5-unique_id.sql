-- Use the specified database (replace 'your_database' with the actual database name)
USE localhost;

-- Create the 'unique_id' table if it doesn't already exist
CREATE TABLE IF NOT EXISTS unique_id (
    -- Define the 'id' column as an integer with a NOT NULL constraint and a unique constraint
    id INT NOT NULL DEFAULT 1,
    
    -- Define the 'name' column as a variable character field with a maximum length of 256 characters
    name VARCHAR(256)
);
