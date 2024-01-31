-- pradinis

DROP TABLE product
CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (100),
    price INTEGER
);

DROP TABLE costomer
CREATE TABLE IF NOT EXISTS costomer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR (50),
    last_name VARCHAR (50)
);

DROP TABLE cashier
CREATE TABLE IF NOT EXISTS cashier (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(100)
);

DROP TABLE bill
CREATE TABLE IF NOT EXISTS bill (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    purchase_datetime DATETIME, 
    cashier_id INTEGER REFERENCES cashier(id), 
    customer_id INTEGER REFERENCES costomer(id)
);

DROP TABLE bill_line
CREATE TABLE IF NOT EXISTS bill_line (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bill_id INTEGER REFERENCES bill(id), 
    product_id INTEGER REFERENCES product(id), 
    quantity INTEGER
);
