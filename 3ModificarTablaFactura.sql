ALTER TABLE invoices
ADD COLUMN customer_phone VARCHAR(255) NOT NULL DEFAULT '000000000';

ALTER TABLE invoices
ADD COLUMN employed_code CHAR(25) NOT NULL DEFAULT 'TEMP';



ALTER TABLE invoices
ALTER COLUMN customer_email VARCHAR(255) NOT NULL DEFAULT ''; 

ALTER TABLE products
ALTER COLUMN code VARCHAR(255) NOT NULL DEFAULT '';

ALTER TABLE invoices
ALTER COLUMN employed_code VARCHAR(255) NOT NULL DEFAULT '';


ALTER TABLE shopping_cart
ADD COLUMN confirmed INTEGER DEFAULT 0;


UPDATE shopping_cart
SET confirmed = 1
WHERE invoice_id = 7;


INSERT INTO products_invoices (quantity, total, product_id, invoice_id)
SELECT 
    sc.quantity,
    (sc.quantity * p.price) AS total,
    sc.product_id,
    sc.invoice_id
FROM shopping_cart sc
JOIN products p ON sc.product_id = p.id
WHERE sc.confirmed = 1;
