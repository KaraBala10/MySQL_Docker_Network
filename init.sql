-- Create the production database
CREATE DATABASE IF NOT EXISTS production_db;

-- Create a new MySQL user with specific credentials
CREATE USER 'youruser'@'%' IDENTIFIED BY 'yourpassword';

-- Grant privileges to the new user
GRANT ALL PRIVILEGES ON production_db.* TO 'youruser'@'%' WITH GRANT OPTION;

-- Set the root password
ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpassword';

-- Apply changes
FLUSH PRIVILEGES;
