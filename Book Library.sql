CREATE DATABASE librarydb;

USE librarydb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    available BOOLEAN DEFAULT TRUE,
    issue_date DATE,
    return_date DATE
);

-- Sample Users
INSERT INTO users(username,password,role) VALUES('admin','admin123','admin');
INSERT INTO users(username,password,role) VALUES('student1','stud123','student');