CREATE DATABASE IF NOT EXISTS Esercizio_2_inglese;
USE Esercizio_2_inglese;
CREATE TABLE users(placeholder INT);
ALTER TABLE users ADD nome VARCHAR(255);
ALTER TABLE users DROP COLUMN placeholder;
SELECT * FROM users;
DROP DATABASE IF EXISTS Esercizio_2_inglese;