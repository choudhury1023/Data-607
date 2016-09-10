DROP SCHEMA IF EXISTS MovieRatings;
CREATE SCHEMA MovieRatings;
USE MovieRatings;

DROP TABLE IF EXISTS Movies;
CREATE TABLE Movies (
m_id INT NOT NULL,
m_name VARCHAR(100) NOT NULL,
y_relesed YEAR(4),
PRIMARY KEY (m_id));

INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (001, 'Captain America: Civil War', 2016);
INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (002, 'Suicide Squad', 2016);
INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (003, 'Jason Bourne', 2016);
INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (004, 'The Secret Life of Pets', 2016);
INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (005, 'Deadpool', 2016);
INSERT INTO Movies (m_id, m_name, y_relesed) VALUES (006, 'Batman v Superman: Dawn of Justice', 2016);

SELECT * FROM Movies;

DROP TABLE IF EXISTS Raters;
CREATE TABLE Raters (
r_id INT NOT NULL,
r_name VARCHAR(100) NOT NULL,
PRIMARY KEY (r_id));

INSERT INTO Raters (r_id, r_name) VALUES (01, 'Tashnima Choudhury');
INSERT INTO Raters (r_id, r_name) VALUES (02, 'Ebony Basil');
INSERT INTO Raters (r_id, r_name) VALUES (03, 'Randy Monfiston');
INSERT INTO Raters (r_id, r_name) VALUES (04, 'Nick Richardson');
INSERT INTO Raters (r_id, r_name) VALUES (05, 'Ruben Perez');

SELECT * FROM Raters;

DROP TABLE IF EXISTS Ratings;
CREATE TABLE Ratings (
rate_id INT NOT NULL,
m_id INT NOT NULL,
r_id INT NOT NULL,
rating INT NOT NULL,
PRIMARY KEY (rate_id));

INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (01, 001, 01, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (02, 002, 01, 2);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (03, 003, 01, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (04, 004, 01, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (05, 005, 01, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (06, 006, 01, 2);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (07, 001, 02, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (08, 002, 02, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (09, 003, 02, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (10, 004, 02, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (11, 005, 02, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (12, 006, 02, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (13, 001, 03, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (14, 002, 03, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (15, 003, 03, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (16, 004, 03, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (17, 005, 03, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (18, 006, 03, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (19, 001, 04, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (20, 002, 04, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (21, 003, 04, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (22, 004, 04, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (23, 005, 04, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (24, 006, 04, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (25, 001, 05, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (26, 002, 05, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (27, 003, 05, 4);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (28, 004, 05, 3);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (29, 005, 05, 5);
INSERT INTO Ratings (rate_id, m_id, r_id, rating) VALUES (30, 006, 05, 2);

SELECT * FROM Ratings;
