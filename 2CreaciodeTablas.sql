-- SQLite
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
    code varchar(255) NOT NULL UNIQUE,
    name varchar(255) NOT NULL,
    price float NOT NULL,
    entry_date date NOT NULL,
    brand varchar(255) NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE invoices (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    invoice_number varchar(255) NOT NULL UNIQUE,
    invoice_date date NOT NULL,
    customer_email varchar(255) NOT NULL,
    total_amount float NOT NULL
);

CREATE TABLE shopping_cart (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    quantity integer NOT NULL,
    product_id integer NOT NULL,
    invoice_id integer NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id)
    FOREIGN KEY (invoice_id) REFERENCES invoices(id)
);

CREATE TABLE products_invoices (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    quantity integer NOT NULL,
    total float NOT NULL,
    product_id integer NOT NULL,
    invoice_id integer NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (invoice_id) REFERENCES invoices(id)
);

