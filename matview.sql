-- Matview: precalcula todos los pares (user_id, book_id, review_date) donde el usuario también compró ese libro. 
-- Así la consulta dps solo filtra por fecha sobre esa tabla.

CREATE MATERIALIZED VIEW reviews_with_purchase AS
SELECT DISTINCT r.user_id, r.book_id, r.review_date
FROM reviews r
WHERE EXISTS (
    SELECT 1 FROM orders o
    JOIN order_items oi ON oi.order_id = o.order_id
    WHERE o.user_id = r.user_id AND oi.book_id = r.book_id
);
-- Índice sobre la matview para acelerar el filtro
CREATE INDEX idx_rwp_date ON reviews_with_purchase(review_date);