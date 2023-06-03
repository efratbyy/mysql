

TRUNCATE TABLE capitals;

DELETE FROM countries;

INSERT INTO countries(country_name, area, inhabitants)
VALUES('France', 100.4, 1000000), ('UK', 200.4, 2000000);

INSERT INTO capitals(capital_name, area, inhabitants, country_id)
VALUES('Paris', 10, 10000, 1), ('London', 12, 2000, 2);

