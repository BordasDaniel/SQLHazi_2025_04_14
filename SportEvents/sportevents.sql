CREATE DATABASE IF NOT EXISTS SportEvents;

USE SportEvents;

CREATE TABLE event_details (
	event_id INT PRIMARY KEY AUTO_INCREMENT,
	event_name VARCHAR(100),
    event_date DATE
);

CREATE TABLE people (
	people_id INT PRIMARY KEY AUTO_INCREMENT,
    people_name VARCHAR(100)
);

CREATE TABLE event_participation (
	event_id INT,
    people_id INT,
	placement INT,
    
    PRIMARY KEY (event_id, people_id),
    FOREIGN KEY (event_id) References  event_details(event_id),
    FOREIGN KEY (people_id) References people(people_id)
);
