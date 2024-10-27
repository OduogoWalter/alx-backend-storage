-- This script creates a unique users table if it does not already exist
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);

-- Insert example data into the users table
INSERT INTO users (email, name) VALUES ('bob@dylan.com', 'Bob') ON DUPLICATE KEY UPDATE email=email;
INSERT INTO users (email, name) VALUES ('sylvie@dylan.com', 'Sylvie') ON DUPLICATE KEY UPDATE email=email;

