

--SELECT 
--    p.name AS product_name,
--    pi.product_id,
--    SUM(pi.quantity) AS total_comprado
--FROM products_invoices pi
--JOIN products p ON pi.product_id = p.id
--GROUP BY pi.product_id, p.name;


SELECT product_id,
     p.name AS product_name,
     sc.quantity,
     p.price,
        (sc.quantity * p.price) AS total_price
FROM shopping_cart sc
JOIN products p ON sc.product_id = p.id
GROUP BY product_id;

