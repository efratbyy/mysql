USE lec2;
SELECT * FROM employees;
SELECT * FROM customers;
SELECT * FROM users;

SELECT * FROM countries;
SELECT * FROM capitals;
 

SELECT country_name as country, capital_name as capital
FROM countries JOIN capitals USING(country_id);

SELECT article_id, article_name, comments
FROM articles
JOIN comments USING(article_id);
