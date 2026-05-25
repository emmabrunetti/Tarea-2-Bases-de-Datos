-- Creacion de Indices

-- Indice 1: 


-- Indice 2:


-- Indice 3: orders por order_date
-- Cubre consultas de rango de fecha sobre orders: Q3 (revenue por libro), Q5 (ordenes usuarios premium) y Q11 (ordenes simples por fecha)
CREATE INDEX idx_orders_date ON orders(order_date);

-- Indice 4: reviews por book_id y review_date
-- Cubre ~15 consultas WHERE book_id = X ORDER BY review_date DESC LIMIT 20
CREATE INDEX idx_reviews_book_date ON reviews(book_id, review_date DESC);
