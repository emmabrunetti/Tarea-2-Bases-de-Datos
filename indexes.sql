-- Creacion de Indices

-- Índice 1: orders por order_date
-- Ataca Q3 (850ms): rango de fechas sobre orders
CREATE INDEX idx_orders_date ON orders(order_date);

-- Índice 2: reviews por book_id y review_date
-- Ataca Q6 (231ms): — 15 queries WHERE book_id = X ORDER BY review_date DESC
CREATE INDEX idx_reviews_book_date ON reviews(book_id, review_date DESC);

-- Índice 3: Ataca Q8 
CREATE INDEX idx_users_lower_email ON users(LOWER(email));
