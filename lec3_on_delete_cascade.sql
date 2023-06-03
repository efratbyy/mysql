DROP DATABASE IF EXISTS lec3;
CREATE DATABASE IF NOT EXISTS lec3;

USE lec3;


CREATE TABLE users(
					user_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
					username VARCHAR(40) NOT NULL	
				  );

-- one special user:                  
INSERT INTO users(username) VALUES ('guest');
INSERT INTO users(username) VALUES ('deleted');


CREATE TABLE posts(
					post_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
					title VARCHAR(200) NOT NULL	, 
                    content TEXT NOT NULL	
				  );
                  
CREATE TABLE comments(
					comment_id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
					comments VARCHAR(500) NOT NULL,
                    post_id INTEGER NOT NULL,
                    user_id INTEGER DEFAULT 1, 
                    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE ON UPDATE CASCADE,
                    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE SET NULL
				  );
                  
INSERT INTO users(username) VALUES ('Dave');
INSERT INTO posts(title, content) VALUES ('post 1', 'content 1');
INSERT INTO comments(comments, post_id, user_id) VALUES ('nice read', 1, 1);

DELETE FROM users WHERE user_id = 1;

SELECT * FROM comments JOIN posts using(post_id);
