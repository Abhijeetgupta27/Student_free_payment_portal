CREATE DATABASE academic_erp;
USE academic_erp;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    roll_number VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Bills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255),
    amount DECIMAL(10,2) NOT NULL,
    bill_date DATE,
    deadline DATE
);

CREATE TABLE Student_Bills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    bill_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (bill_id) REFERENCES Bills(id)
);

CREATE TABLE Student_Payment (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    bill_id INT,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (bill_id) REFERENCES Bills(id)
);
