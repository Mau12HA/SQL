-- a Obtenga todos los productos almacenados

SELECT *
FROM products 

--  b Obtenga todos los productos que tengan un precio mayor a 50000

SELECT *
FROM products
WHERE price > 50000;

-- c Obtenga todas las compras de un mismo producto por id.

SELECT 
    sc.product_id,
    p.name AS product_name,
    sc.quantity,
    (sc.quantity * p.price) AS total,
    i.customer_email,
    i.invoice_date
FROM shopping_cart sc
JOIN products p 
    ON sc.product_id = p.id
JOIN invoices i
    ON sc.invoice_id = i.id
WHERE sc.product_id = 7;

-- d Obtenga todas las compras agrupadas por producto, donde se muestre 
--   el total comprado entre todas las compras.

SELECT product_id,
     p.name AS product_name,
     sc.quantity,
     p.price,
        (sc.quantity * p.price) AS total_price
FROM shopping_cart sc
JOIN products p ON sc.product_id = p.id
GROUP BY product_id;

--SELECT 
--    p.name AS product_name,
--    pi.product_id,
--    SUM(pi.quantity) AS total_comprado
--FROM products_invoices pi
--JOIN products p ON pi.product_id = p.id
--GROUP BY pi.product_id, p.name;


-- e Obtenga todas las facturas realizadas por el mismo comprador

SELECT i.*
FROM invoices i
WHERE i.customer_email = 'maria@gmail.com';

-- f Obtenga todas las facturas ordenadas por monto total de forma descendente

SELECT *
FROM invoices
ORDER BY total_amount DESC;

-- g Obtenga una sola factura por número de factura

SELECT *
FROM invoices
WHERE invoice_number = 'INV1007';

