DROP DATABASE IF EXISTS lec3;
CREATE DATABASE IF NOT EXISTS lec3;

USE lec3;

CREATE TABLE movies(
					movie_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                    title VARCHAR(200) NOT NULL
                    );

CREATE TABLE genres(
					genre_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                    genre VARCHAR(20) NOT NULL
                    );
                    
CREATE TABLE movie_genre(
						movie_genre_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                        movie_id INTEGER NOT NULL, 
                        genre_id INTEGER NOT NULL, 
                        FOREIGN KEY(movie_id) REFERENCES movies(movie_id) ON DELETE CASCADE ON UPDATE CASCADE,
                        FOREIGN KEY(genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE ON UPDATE CASCADE
						);
                        
INSERT INTO genres(genre)
VALUES('Action'), ('Drama'), ('Fantasy'), ('Animation'), ('Comedy');


INSERT INTO movies(title)
VALUES('Batman'), ('Superman'), ('Spiderman'), ('Shrek'), ('John Wick');

-- Batman: action, drama, fantasy
INSERT INTO movie_genre(movie_id, genre_id)
VALUES(1, 1), (1, 2), (1, 3);


-- Shrek: comedy, animation
INSERT INTO movie_genre(movie_id, genre_id)
VALUES(4, 4), (4, 5);

SELECT * 
FROM movies
JOIN movie_genre USING(movie_id)
JOIN genres USING(genre_id);
 





DELETE FROM movies
WHERE title LIKE 'Ba%'














                        
                        
                        