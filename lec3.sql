USE lec2;

TRUNCATE TABLE Employees;

INSERT INTO Employees(employee_id, first_name, last_name, city, birth_date, note)
VALUES (1, 'Mike', 'Green', 'Berlin', '2000-10-10', 'Mike is a Dev');

INSERT INTO Employees(employee_id, first_name, last_name, city, birth_date, note)
VALUES (2, 'Mike', 'Green', 'Berlin', CURRENT_DATE(), 'Dave is a Dave');

INSERT INTO Employees(employee_id, first_name, last_name, city, birth_date, note)
VALUES (3, 'Efrat', 'Ben-Yosef', 'Israel', '1990-06-24', 'Good Morning');

INSERT INTO Employees(employee_id, first_name, last_name, city, birth_date, note)
VALUES (4, 'Tal', 'Ben-Yosef', 'Israel', '2003-06-06', 'Hello World');


TRUNCATE TABLE Customers;

INSERT INTO Customers(customer_id, customer_name, city, phon)
VALUES (1, 'Tal', 'Mevasseret', '054-0000000'),		
       (2, 'Efrat', 'Tel Aviv', '0540000000');

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
         user_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                                    username VARCHAR(50) NOT NULL, 
                                    email VARCHAR(40) NOT NULL UNIQUE
        );
        
TRUNCATE TABLE users;

-- note that we don't specify the user_id: (AUTO_INCRTMENT)ממספר אוטומטית-
INSERT INTO users(username, email)
VALUES('Nill', 'Nill@gmail.com');


DROP TABLE IF EXISTS countries;
CREATE TABLE IF NOT EXISTS countries(
										country_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
                                        country_name VARCHAR(40) NOT NULL,
                                        area DECIMAL(10, 2),
                                        inhabitants INTEGER
									);
                                    
DROP TABLE IF EXISTS capitals;
CREATE TABLE IF NOT EXISTS capitals(
										capital_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, 
                                        capital_name VARCHAR(40) NOT NULL,
                                        area DECIMAL(10, 2),
                                        inhabitants INTEGER,
                                        country_id INTEGER NOT NULL UNIQUE, 
                                        FOREIGN KEY(country_id) REFERENCES countries(country_id)
									);


         

        