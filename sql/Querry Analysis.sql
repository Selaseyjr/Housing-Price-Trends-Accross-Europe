-- QUERY 1: Housing Price Growth by Country since 2015

SELECT 
country,
MIN(house_price_index) AS starting_price,
MAX(house_price_index) AS latest_price
FROM house_prices
GROUP BY country
ORDER BY latest_price DESC;

-- QUERY 2: Average European Housing Price by Year

SELECT 
    year,
    AVG(house_price_index) AS average_price
FROM house_prices
GROUP BY year
ORDER BY year;

-- QUERY 3: Countries with Highest Housing Prices in 2024

SELECT 
    country,
    house_price_index
FROM house_prices
WHERE year = 2024
ORDER BY house_price_index DESC;