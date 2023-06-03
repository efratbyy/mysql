USE lec2;

TRUNCATE TABLE employees;

INSERT INTO employees(employee_id, first_name, last_name, city, birth_date, notes)
VALUES (1, 'Mike', 'Green', 'Berlin', '2000-10-10', 'Mike is a Dev');

INSERT INTO employees(employee_id, first_name, last_name, city, birth_date, notes)
VALUES (2, 'Dave', 'Green', 'Berlin', CURRENT_DATE(), 'Dave is a Dave');



TRUNCATE TABLE customers;

INSERT INTO customers(customer_id, customer_name, city, phone)
VALUES  (1, 'Josh', 'Tel-Aviv', '050-5050513'),
		(2, 'Sacha', 'New York','050-5023433');
        
        
        
TRUNCATE TABLE users;

-- note that we dont specify the user_id: (AUTO_INCREMENT) ממספר אוטומטחץ -
INSERT INTO users(username, email)
VALUES('Nill', 'Nill@gmail.com'), ('Chris', 'chris@gmail.com');


INSERT INTO users(user_id, username, email)
VALUES(8, 'Dubi', 'Dubi@gmail.com');

TRUNCATE TABLE capitals;
DELETE FROM countries;

INSERT INTO countries(country_name, area, inhabitants)
VALUES('France', 100.4, 10000), ('UK', 200.4, 20000);


INSERT INTO capitals(capital_name, area, inhabitants, country_id)
VALUES('Paris', 10, 10000, 1), ('London', 12, 2000, 2);

-- DELETE מוחק את כל הטבלה
-- TRUNCATE מוחק את תוכן הטבלה

-- INSERT INTO capitals(capital_name, area, inhabitants, country_id)
-- VALUES('Stokholm', 10, 10000, 8);


-- delete the comments first: 
-- if we delete articles first -> comments are orphaned.
TRUNCATE TABLE comments;
DELETE FROM articles;

INSERT INTO articles(article_id, article_name, article_content)
VALUES  (1, 'Spring Data JPA', '@Valid Annotation'), 
     (2, 'React Icons', 'Nice Icon Library');


INSERT INTO comments(comments, article_id)
VALUES('Nice Read',1), ('Thank You!',1), ('Cheers!',2);



 




