-- Active: 1792919903720@@127.0.0.1@3306@es. 2 (creazione e modifica di una tabella di esempio)
CREATE DATABASE IF NOT EXISTS `Es. 2 (creazione e modifica di una tabella di esempio)`;
USE `Es. 2 (creazione e modifica di una tabella di esempio)`;
CREATE TABLE users(placeholder INT);
ALTER TABLE users ADD nome VARCHAR(255);
ALTER TABLE users DROP COLUMN placeholder;
SELECT * FROM users;
DROP DATABASE IF EXISTS `Es. 2 (creazione e modifica di una tabella di esempio)`;