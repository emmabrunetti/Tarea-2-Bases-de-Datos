-- Matrializacion book_rating
-- Vista materializada: precalcula conteo y promedio de rating por libro

-- Cubre 3 consultas idénticas (021, 088, 100) que hacen GROUP BY + AVG sobre reviews
CREATE MATERIALIZED VIEW book_rating_summary AS
SELECT book_id,
       COUNT(*)    AS n_reviews,
       AVG(rating) AS avg_rating
FROM reviews
GROUP BY book_id;

-- Índice sobre la matview para acelerar el filtro
CREATE INDEX idx_brs ON book_rating_summary(n_reviews, avg_rating);