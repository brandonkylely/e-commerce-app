DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE categories (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT NULL,
    FOREIGN KEY (category_id)
    REFERENCES categories(id)
    ON DELETE SET NULL
);

CREATE TABLE tags (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(100)
);

CREATE TABLE product_tags (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT NULL,
    tag_id INT NULL,
    FOREIGN KEY (product_id)
    REFERENCES products(id)
    ON DELETE SET NULL,
    FOREIGN KEY (tag_id)
    REFERENCES tags(id)
    ON DELETE SET NULL
);

