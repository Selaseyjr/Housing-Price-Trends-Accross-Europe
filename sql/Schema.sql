CREATE DATABASE housing_project;

USE housing_project;

CREATE TABLE countries (
country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(50)
);

CREATE TABLE years (
year_id INT AUTO_INCREMENT PRIMARY KEY,
year INT
);

CREATE TABLE house_prices (
price_id INT AUTO_INCREMENT PRIMARY KEY,
country VARCHAR(50),
year INT,
house_price_index FLOAT
);

SELECT * FROM house_prices LIMIT 10;

