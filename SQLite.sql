SELECT 
    sc.product_id,
    p.name AS product_name,
    sc.quantity,
    i.customer_email
FROM shopping_cart sc
JOIN products p ON sc.product_id = p.id
JOIN invoices i ON sc.invoice_id = i.id
WHERE sc.product_id = 7;


