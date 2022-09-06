---------------------------------------------------------CREATE database pressa

DROP DATABASE IF EXISTS testbor;
CREATE DATABASE testbor;
\c testbor;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

---------------------------------------------------------------Users table

DROP TABLE IF EXISTS users;
CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    fullname VARCHAR(64) NOT NULL,
    contact  VARCHAR(12) NOT NULL,
    username VARCHAR(24) UNIQUE NOT NULL,
    password VARCHAR(60) NOT NULL,
    gender   VARCHAR(6)  NOT NULL
);

---------------------------------------------------------------Subjects table

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects(
    subject_id SERIAL PRIMARY KEY,
    subject_1 VARCHAR(30) NOT NULL,
    subject_2  VARCHAR(30) NOT NULL
);

---------------------------------------------------------------Universities table

DROP TABLE IF EXISTS universities;
CREATE TABLE universities(
    university_id SERIAL PRIMARY KEY,
    university_name VARCHAR(120) NOT NULL
);


---------------------------------------------------------------Faculties table

DROP TABLE IF EXISTS faculties;
CREATE TABLE faculties(
    faculty_id SERIAL PRIMARY KEY,
    faculty_name VARCHAR(120) NOT NULL,
    grant_score NUMERIC(4, 1) NOT NULL,
    grant_number INT NOT NULL,
    contract_score NUMERIC(4, 1) NOT NULL,
    contract_number INT NOT NULL,
    university_id INT references universities(university_id),
    subject_id INT references subjects(subject_id)
);

-- select
-- u.university_id,
-- u.university_name,
-- json_agg((f.faculty_id,
-- f.faculty_name,
-- f.grant_score,
-- f.contract_score,
-- f.subject_id)) AS faculties
-- from universities as u 
-- INNER JOIN  faculties as f  on  u.university_id = f.university_id
-- where f.subject_id = 3
-- GROUP  BY u.university_id;



---------------------------------------------------------------Questions table

DROP TABLE IF EXISTS questions;
CREATE TABLE questions(
    question_id SERIAL PRIMARY KEY,
    question_text TEXT NOT NULL,
    subject_name VARCHAR(32) NOT NULL
);

---------------------------------------------------------------Answers table

DROP TABLE IF EXISTS answers;
CREATE TABLE answers(
    answer_id SERIAL PRIMARY KEY,
    answer_text TEXT NOT NULL,
    answer_boolean BOOLEAN DEFAULT 'f',
    question_id INT references questions(question_id)
);

---------------------------------------------------------------Results table

DROP TABLE IF EXISTS exams;
CREATE TABLE exams(
    exam_id SERIAL PRIMARY KEY,
    examiner TEXT NOT NULL,
    examiner_score INT NOT NULL,
    exam_time timestamp  DEFAULT current_timestamp,
    faculty_name INT references questions(question_id)
);