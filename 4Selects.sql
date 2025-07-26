-- a Obtenga todos los productos almacenados

SELECT *
FROM products 

--  b Obtenga todos los productos que tengan un precio mayor a 50000

SELECT *
FROM products
WHERE price > 50000;

-- c Obtenga todas las compras de un mismo producto por id.

SELECT *
FROM shopping_cart
WHERE product_id = 13; 


-- d Obtenga todas las compras agrupadas por producto, donde se muestre 
--   el total comprado entre todas las compras.

SELECT sc.product_id, SUM(sc.quantity) AS total_quantity
FROM shopping_cart sc
GROUP BY sc.product_id;

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

