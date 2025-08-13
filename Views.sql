CREATE VIEW purchase_summary AS
SELECT
    pi.product_id,
    p.name AS product_name,
    p.code AS product_code,
    i.invoice_number,
    i.invoice_date,
    i.customer_email,
    pi.quantity,
    pi.total
FROM products_invoices pi
JOIN products p ON pi.product_id = p.id
JOIN invoices i ON pi.invoice_id = i.id;
