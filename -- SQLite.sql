-- SQLite
CREATE TABLE products (
    id integer(10) PRIMARY KEY AUTOINCREMENT ,
    code varchar(255) NOT NULL UNIQUE,
    name varchar(255) NOT NULL,
    price integer(10) NOT NULL,
    entry_date date NOT NULL,
    brand varchar(255) NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE invoices (
    id integer(10) PRIMARY KEY AUTOINCREMENT ,
    invoice_number varchar(255) NOT NULL UNIQUE,
    invoice_date date NOT NULL,
    customer_email varchar(255) NOT NULL,
    total_amount float(10) NOT NULL
);

CREATE TABLE shopping_cart (
    id integer(10) PRIMARY KEY AUTOINCREMENT ,
    quantity integer(10) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id)
    FOREIGN KEY (invoice_id) REFERENCES invoices(costumer_email)
);

CREATE TABLE products_invoices (
    id integer(10) PRIMARY KEY AUTOINCREMENT ,
    quantity integer(10) NOT NULL,
    total float(10) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (invoice_id) REFERENCES invoices(id)
);