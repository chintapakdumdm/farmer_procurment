-- Replace the placeholder before running this file, then put the same value
-- in DB_PASSWORD in the local .env file. This does not delete an existing user.
CREATE USER IF NOT EXISTS 'farmer_user'@'localhost'
IDENTIFIED BY 'Anand@lucifer01@';

CREATE DATABASE IF NOT EXISTS farmer_system
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

GRANT ALL PRIVILEGES ON farmer_system.*
TO 'farmer_user'@'localhost';

FLUSH PRIVILEGES;
