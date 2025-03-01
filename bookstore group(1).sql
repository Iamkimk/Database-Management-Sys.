
DROP TABLE Books CASCADE CONSTRAINTS;
DROP TABLE Author CASCADE CONSTRAINTS;
DROP TABLE Publisher CASCADE CONSTRAINTS;
DROP TABLE Inventory CASCADE CONSTRAINTS;
DROP TABLE Transactions CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;

DROP SEQUENCE books_book_id_seq;
DROP SEQUENCE author_author_id_seq;
DROP SEQUENCE publisher_publisher_id_seq;
DROP SEQUENCE inventory_book_isbn_seq;
DROP SEQUENCE transactions_transaction_id_seq;
DROP SEQUENCE customer_customer_id_seq;

CREATE SEQUENCE books_book_id_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE author_author_id_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE publisher_publisher_id_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE inventory_book_isbn_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE transactions_transaction_id_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE SEQUENCE customer_customer_id_seq
 INCREMENT BY 1
 START WITH 1
 NOCACHE
 NOCYCLE;

CREATE TABLE Books (
  book_id NUMBER(9) DEFAULT books_book_id_seq.NEXTVAL PRIMARY KEY,
  author_id NUMBER(9),
  publisher_id NUMBER(9),
  book_nm CHAR(30),
  publication_dt DATE,
  ISBN CHAR(12),
  genre CHAR(20),
  price NUMBER(5,2),
  rating NUMBER(3,1), 
  page_ct NUMBER(4,0),
  Language CHAR(12)
);

CREATE TABLE Author (
  author_id NUMBER(9) DEFAULT author_author_id_seq.NEXTVAL PRIMARY KEY,
  first_nm CHAR(20),
  last_nm CHAR(20),
  nationality CHAR(15),
  years_active NUMBER(3,0)
);

CREATE TABLE Publisher (
  publisher_id NUMBER(9) DEFAULT publisher_publisher_id_seq.NEXTVAL PRIMARY KEY,
  publisher_nm CHAR(20)
);

CREATE TABLE Inventory (
  book_isbn NUMBER(12) DEFAULT inventory_book_isbn_seq.NEXTVAL PRIMARY KEY,
  book_id NUMBER(9),
  num_of_books NUMBER(4,0),
  issue_num NUMBER(3,0),
  condition CHAR(15)
);

CREATE TABLE Transactions (
  transaction_id NUMBER(9) DEFAULT transactions_transaction_id_seq.NEXTVAL PRIMARY KEY,
  book_isbn NUMBER(12),
  customer_id NUMBER(9),
  total_amount NUMBER(8,2),
  transaction_dt DATE,
  Quantity NUMBER(3,0)
);

CREATE TABLE Customer (
  customer_id NUMBER(9) DEFAULT customer_customer_id_seq.NEXTVAL PRIMARY KEY,
  firstname CHAR(20),
  lastname CHAR(20),
  Phone_Number CHAR(15),
  Email CHAR(35)
);

INSERT INTO Books (book_id, author_id, publisher_id, book_nm, publication_dt, ISBN, genre, price, rating, page_ct, Language)
VALUES (books_book_id_seq.NEXTVAL, 1, 1, 'Animal Farm', TO_DATE('1945-08-17', 'YYYY-MM-DD'), '9780451526', 'Satire', 15.99, 4.4, 144, 'English');

INSERT INTO Books (book_id, author_id, publisher_id, book_nm, publication_dt, ISBN, genre, price, rating, page_ct, Language)
VALUES (books_book_id_seq.NEXTVAL, 4, 3, 'Brave New World', TO_DATE('1932-06-01', 'YYYY-MM-DD'), '9780060850', 'Science Fiction', 22.50, 4.6, 288, 'English');

INSERT INTO Books (book_id, author_id, publisher_id, book_nm, publication_dt, ISBN, genre, price, rating, page_ct, Language)
VALUES (books_book_id_seq.NEXTVAL, 5, 2, 'Pride and Prejudice', TO_DATE('1813-01-28', 'YYYY-MM-DD'), '9780486280', 'Romance', 12.00, 4.8, 279, 'English');

INSERT INTO Books (book_id, author_id, publisher_id, book_nm, publication_dt, ISBN, genre, price, rating, page_ct, Language)
VALUES (books_book_id_seq.NEXTVAL, 6, 1, 'The Catcher in the Rye', TO_DATE('1951-07-16', 'YYYY-MM-DD'), '9780316769', 'Coming-of-Age', 16.99, 4.2, 277, 'English');

INSERT INTO Books (book_id, author_id, publisher_id, book_nm, publication_dt, ISBN, genre, price, rating, page_ct, Language)
VALUES (books_book_id_seq.NEXTVAL, 7, 3, 'The Lord of the Rings', TO_DATE('1954-07-29', 'YYYY-MM-DD'), '9780618640', 'Fantasy', 29.99, 4.9, 1178, 'English');


INSERT INTO Author (author_id, first_nm, last_nm, nationality, years_active)
VALUES (author_author_id_seq.NEXTVAL, 'George', 'Orwell', 'British', 20);

INSERT INTO Author (author_id, first_nm, last_nm, nationality, years_active)
VALUES (author_author_id_seq.NEXTVAL, 'Aldous', 'Huxley', 'British', 50);

INSERT INTO Author (author_id, first_nm, last_nm, nationality, years_active)
VALUES (author_author_id_seq.NEXTVAL, 'Jane', 'Austen', 'British', 22);

INSERT INTO Author (author_id, first_nm, last_nm, nationality, years_active)
VALUES (author_author_id_seq.NEXTVAL, 'J.D.', 'Salinger', 'American', 35);

INSERT INTO Author (author_id, first_nm, last_nm, nationality, years_active)
VALUES (author_author_id_seq.NEXTVAL, 'J.R.R.', 'Tolkien', 'British', 45);


INSERT INTO Publisher (publisher_id, publisher_nm)
VALUES (publisher_publisher_id_seq.NEXTVAL, 'Penguin Books');

INSERT INTO Publisher (publisher_id, publisher_nm)
VALUES (publisher_publisher_id_seq.NEXTVAL, 'HarperCollins');

INSERT INTO Publisher (publisher_id, publisher_nm)
VALUES (publisher_publisher_id_seq.NEXTVAL, 'Scribner');

INSERT INTO Publisher (publisher_id, publisher_nm)
VALUES (publisher_publisher_id_seq.NEXTVAL, 'Vintage Classics');

INSERT INTO Publisher (publisher_id, publisher_nm)
VALUES (publisher_publisher_id_seq.NEXTVAL, 'Houghton Mifflin');


INSERT INTO Inventory (book_isbn, book_id, num_of_books, issue_num, condition)
VALUES (inventory_book_isbn_seq.NEXTVAL, 4, 120, 1, 'Good');

INSERT INTO Inventory (book_isbn, book_id, num_of_books, issue_num, condition)
VALUES (inventory_book_isbn_seq.NEXTVAL, 5, 200, 1, 'New');

INSERT INTO Inventory (book_isbn, book_id, num_of_books, issue_num, condition)
VALUES (inventory_book_isbn_seq.NEXTVAL, 6, 90, 1, 'Good');

INSERT INTO Inventory (book_isbn, book_id, num_of_books, issue_num, condition)
VALUES (inventory_book_isbn_seq.NEXTVAL, 7, 80, 1, 'New');

INSERT INTO Inventory (book_isbn, book_id, num_of_books, issue_num, condition)
VALUES (inventory_book_isbn_seq.NEXTVAL, 8, 150, 1, 'New');


INSERT INTO Transactions (transaction_id, book_isbn, customer_id, total_amount, transaction_dt, Quantity)
VALUES (transactions_transaction_id_seq.NEXTVAL, 9780451526, 1, 47.97, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 3);

INSERT INTO Transactions (transaction_id, book_isbn, customer_id, total_amount, transaction_dt, Quantity)
VALUES (transactions_transaction_id_seq.NEXTVAL, 9780060850, 2, 22.50, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 1);

INSERT INTO Transactions (transaction_id, book_isbn, customer_id, total_amount, transaction_dt, Quantity)
VALUES (transactions_transaction_id_seq.NEXTVAL, 9780316769, 3, 33.98, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 2);

INSERT INTO Transactions (transaction_id, book_isbn, customer_id, total_amount, transaction_dt, Quantity)
VALUES (transactions_transaction_id_seq.NEXTVAL, 9780618640, 1, 59.98, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 2);

INSERT INTO Transactions (transaction_id, book_isbn, customer_id, total_amount, transaction_dt, Quantity)
VALUES (transactions_transaction_id_seq.NEXTVAL, 9780486280, 2, 12.00, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 1);


INSERT INTO Customer (customer_id, firstname, lastname, Phone_Number, Email)
VALUES (customer_customer_id_seq.NEXTVAL, 'Michael', 'Johnson', '111-222-3333', 'michael.johnson@example.com');

INSERT INTO Customer (customer_id, firstname, lastname, Phone_Number, Email)
VALUES (customer_customer_id_seq.NEXTVAL, 'Emily', 'Williams', '444-555-6666', 'emily.williams@example.com');

INSERT INTO Customer (customer_id, firstname, lastname, Phone_Number, Email)
VALUES (customer_customer_id_seq.NEXTVAL, 'David', 'Brown', '777-888-9999', 'david.brown@example.com');

INSERT INTO Customer (customer_id, firstname, lastname, Phone_Number, Email)
VALUES (customer_customer_id_seq.NEXTVAL, 'Emma', 'Jones', '123-987-6543', 'emma.jones@example.com');

INSERT INTO Customer (customer_id, firstname, lastname, Phone_Number, Email)
VALUES (customer_customer_id_seq.NEXTVAL, 'William', 'Davis', '987-654-3210', 'william.davis@example.com');

SELECT * FROM Books
WHERE page_ct > 200;

SELECT * FROM Books
WHERE publication_dt > '01-JAN-1900';

SELECT * FROM Books
WHERE genre = '&genre';

SELECT * FROM Books
WHERE price <= '&price';