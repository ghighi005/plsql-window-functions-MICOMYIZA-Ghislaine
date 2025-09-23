sql

## Books TABLE
  CREATE TABLE Books (
    book_id        NUMBER PRIMARY KEY,
    title          VARCHAR2(200) NOT NULL,
    author         VARCHAR2(150),
    category       VARCHAR2(100),
    published_year NUMBER,
    total_copies   NUMBER DEFAULT 1
);

## Members TABLE
CREATE TABLE Members (
    member_id      NUMBER PRIMARY KEY,
    first_name     VARCHAR2(100),
    last_name      VARCHAR2(100),
    email          VARCHAR2(150) UNIQUE,
    phone_number   VARCHAR2(20),
    membership_date DATE DEFAULT SYSDATE
);

## Transactions TABLE
CREATE TABLE Transactions (
    transaction_id NUMBER PRIMARY KEY,
    member_id      NUMBER REFERENCES Members(member_id),
    book_id        NUMBER REFERENCES Books(book_id),
    borrow_date    DATE NOT NULL,
    return_date    DATE,
    status         VARCHAR2(20) CHECK (status IN ('Borrowed','Returned'))
);

## Categories TABLE
CREATE TABLE Categories (
    category_id   NUMBER PRIMARY KEY,
    category_name VARCHAR2(100) UNIQUE
);

## inserting values in the created tables
--- Books
INSERT INTO Books (book_id, title, author, category, published_year, total_copies)
VALUES (101, 'Things Fall Apart', 'Chinua Achebe', 'Fiction', 1958, 5);

INSERT INTO Books (book_id, title, author, category, published_year, total_copies)
VALUES (102, 'Introduction to Algorithms', 'Thomas H. Cormen', 'Technology', 2009, 3);

INSERT INTO Books (book_id, title, author, category, published_year, total_copies)
VALUES (103, 'A Brief History of Time', 'Stephen Hawking', 'Science', 1988, 4);

INSERT INTO Books (book_id, title, author, category, published_year, total_copies)
VALUES (104, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'History', 2011, 6);

INSERT INTO Books (book_id, title, author, category, published_year, total_copies)
VALUES (105, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Children', 1997, 7);

--- Members 

INSERT INTO Members (member_id, first_name, last_name, email, phone_number, membership_date)
VALUES (201, 'Alice', 'Mukamana', 'alice.mukamana@example.com', '+250788111111', DATE '2023-01-15');

INSERT INTO Members (member_id, first_name, last_name, email, phone_number, membership_date)
VALUES (202, 'Jean', 'Habimana', 'jean.habimana@example.com', '+250788222222', DATE '2023-03-10');

INSERT INTO Members (member_id, first_name, last_name, email, phone_number, membership_date)
VALUES (203, 'Claudine', 'Uwase', 'claudine.uwase@example.com', '+250788333333', DATE '2023-06-20');

INSERT INTO Members (member_id, first_name, last_name, email, phone_number, membership_date)
VALUES (204, 'Eric', 'Nshimiyimana', 'eric.nshimiyimana@example.com', '+250788444444', DATE '2023-08-05');

INSERT INTO Members (member_id, first_name, last_name, email, phone_number, membership_date)
VALUES (205, 'Grace', 'Ingabire', 'grace.ingabire@example.com', '+250788555555', DATE '2023-09-12');

--- Transactions

-- Alice borrowed and returned
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date, status)
VALUES (301, 201, 101, DATE '2023-02-01', DATE '2023-02-15', 'Returned');

-- Jean borrowed and has not returned yet
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date, status)
VALUES (302, 202, 103, DATE '2023-04-05', NULL, 'Borrowed');

-- Claudine borrowed and returned
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date, status)
VALUES (303, 203, 104, DATE '2023-07-10', DATE '2023-07-25', 'Returned');

-- Eric borrowed and returned late
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date, status)
VALUES (304, 204, 102, DATE '2023-09-01', DATE '2023-09-25', 'Returned');

-- Grace borrowed and has not returned
INSERT INTO Transactions (transaction_id, member_id, book_id, borrow_date, return_date, status)
VALUES (305, 205, 105, DATE '2023-10-02', NULL, 'Borrowed');

-- Categories
INSERT INTO Categories (category_id, category_name)
VALUES (1, 'Fiction');

INSERT INTO Categories (category_id, category_name)
VALUES (2, 'Science');

INSERT INTO Categories (category_id, category_name)
VALUES (3, 'History');

INSERT INTO Categories (category_id, category_name)
VALUES (4, 'Technology');

INSERT INTO Categories (category_id, category_name)
VALUES (5, 'Children');






