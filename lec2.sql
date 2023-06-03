DROP DATABASE IF EXISTS lec2;

CREATE DATABASE IF NOT EXISTS lec2;

USE lec2;
-- internarionalization i18n = 20 chart

DROP TABLE IF EXISTS ustomers;

CREATE TABLE customers(
						customer_id INTEGER PRIMARY KEY NOT NULL,
                        customer_name VARCHAR(50) NOT NULL,
                        city VARCHAR(20),
                        phon VARCHAR(20)
                        );
                        
DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees(
						employee_id INTEGER PRIMARY KEY NOT NULL,
                        first_name VARCHAR(40) NOT NULL,
						last_name VARCHAR(40) NOT NULL,
                        city VARCHAR(40) NULL,
                        birth_date DATE NOT NULL,
                        note VARCHAR(16260) NOT NULL
                        );

