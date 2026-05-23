-- Creacion de Indices

-- Índice 3: reviews por book_id y review_date
-- Cubre ~13 consultas WHERE book_id = X ORDER BY review_date DESC
CREATE INDEX idx_reviews_book_date ON reviews(book_id, review_date DESC);

-- Índice 4: orders por order_date
-- Cubre consultas de rango de fecha sobre orders
CREATE INDEX idx_orders_date ON orders(order_date);