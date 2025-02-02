CREATE DATABASE alx_book_store;

CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    FOREIGN KEY (author_id) ,
    price DOUBLE(9, 2) NOT NULL,
    publication_date DATE NOT NULL
);

CREATE TABLE authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(215) NOT NULL
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address TEXT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id)
);

CREATE TABLE order_details(
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (order_id),
    FOREIGN KEY (book_id),
    quantity DOUBLE(5, 0) NOT NULL
);