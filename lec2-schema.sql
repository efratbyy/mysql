DROP DATABASE IF EXISTS lec2;

CREATE DATABASE IF NOT EXISTS lec2;

USE lec2;
-- internationalization  i18n = 20 chars

DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers(
								customer_id INTEGER PRIMARY KEY NOT NULL,
								customer_name VARCHAR(60) NOT NULL,
								city VARCHAR(20),
								phone VARCHAR(20)
							  );

DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees(
										employee_id INTEGER PRIMARY KEY NOT NULL, 
                                        first_name VARCHAR(40) NOT NULL, 
                                        last_name VARCHAR(40) NOT NULL, 
                                        city VARCHAR(40) NULL, 
                                        birth_date DATE NOT NULL, 
                                        notes VARCHAR(16260) NOT NULL
                                    );

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
									user_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                                    username VARCHAR(50) NOT NULL, 
                                    email VARCHAR(40) NOT NULL UNIQUE
								);
                                
                                
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

-- תרגיל --

DROP TABLE IF EXISTS articles;

CREATE TABLE IF NOT EXISTS articles(
									  article_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                      article_name VARCHAR(30) NOT NULL,
                                      article_content VARCHAR(16260) NOT NULL
                                      );
								
DROP TABLE IF EXISTS comments;

CREATE TABLE IF NOT EXISTS comments(
									  comment_id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
                                      comments VARCHAR(16260) NOT NULL,
                                      article_id INTEGER NOT NULL,
                                      FOREIGN KEY(article_id) REFERENCES articles(article_id)
                                      );















