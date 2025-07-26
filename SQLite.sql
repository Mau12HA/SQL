SELECT sc.product_id, SUM(sc.quantity) AS total_quantity
FROM shopping_cart sc
GROUP BY sc.product_id;