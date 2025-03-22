-- Drop database if it exists
DROP DATABASE IF EXISTS todo;
CREATE DATABASE todo;

-- Switch to the 'todo' database (not needed inside SQL files, use in psql)
\c todo;

-- Create 'tasks' table
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL
);

-- Insert initial data
INSERT INTO tasks (description) VALUES 
('My test task'),
('My another task');


/*drop database if exists todo;
create database todo;   
use todo;
-- Create a table named 'tasks'
CREATE TABLE tasks (
    id int PRIMARY KEY auto_increment,
    description VARCHAR(255) NOT NULL
    
);

-- Insert initial data
INSERT INTO tasks (description) VALUES ('My test task');
INSERT INTO tasks (description) VALUES ('My another task');
*/