-- Workload for group 33.
-- 100 queries sampled from 12 classes (Q01..Q12).
-- Each query is tagged with its class and an instance index so the
-- runner can aggregate timings by class.
--
-- You may add CREATE INDEX statements to speed these queries up.
-- For the materialization step, you may rewrite individual queries
-- to consume a MATERIALIZED VIEW you create -- but the rewritten
-- query MUST return the same result for the same parameters.

-- ===== 001 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'history'
  AND price BETWEEN 5 AND 25
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 002 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'xiomara.kowalski92597@mail.com';

-- ===== 003 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2025-04-01' AND o.order_date < '2025-05-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 004 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'uma.rossi153053@books.io';

-- ===== 005 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 25046 AND warehouse_id = 7;

-- ===== 006 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-12-15' AND o.order_date < '2024-12-22'
ORDER BY o.order_date DESC;

-- ===== 007 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'bianca.vargas49296@example.org';

-- ===== 008 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'ines.davidson64762@books.io';

-- ===== 009 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'greta.quiroga110783@example.org';

-- ===== 010 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2025-03-01' AND o.order_date < '2025-03-08'
ORDER BY o.order_date DESC;

-- ===== 011 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 18389 AND warehouse_id = 3;

-- ===== 012 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Zara.kowalski178233@books.io';

-- ===== 013 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'cyrus.zhang162090@shop.net';

-- ===== 014 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 589
ORDER BY review_date DESC LIMIT 20;

-- ===== 015 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'yusuf.quiroga121972@shop.net';

-- ===== 016 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'ben.vargas7340@mail.com';

-- ===== 017 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 5014 AND warehouse_id = 6;

-- ===== 018 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'arturo.zhang160404@mail.com';

-- ===== 019 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 8978 AND warehouse_id = 2;

-- ===== 020 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'poetry'
  AND price BETWEEN 20 AND 30
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 021 =====
SELECT COUNT(*)
FROM book_rating_summary
WHERE n_reviews >= 10 AND avg_rating > 4.0;

-- ===== 022 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 9212
ORDER BY review_date DESC LIMIT 20;

-- ===== 023 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'jonas.alvarez160663@example.org';

-- ===== 024 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-11-08' AND o.order_date < '2024-11-15'
ORDER BY o.order_date DESC;

-- ===== 025 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'quincy.vargas107481@books.io';

-- ===== 026 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'history'
  AND price BETWEEN 15 AND 50
  AND publication_year >= 2021
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 027 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 17537 AND warehouse_id = 4;

-- ===== 028 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'pablo.espinoza39451@books.io';

-- ===== 029 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'quincy.yamamoto125487@books.io';

-- ===== 030 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'romance'
  AND price BETWEEN 20 AND 30
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 031 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 15187
ORDER BY review_date DESC LIMIT 20;

-- ===== 032 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('ZARA.ZHANG71379@MAIL.COM');

-- ===== 033 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 6702
ORDER BY review_date DESC LIMIT 20;

-- ===== 034 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'maya.moreno153622@books.io';

-- ===== 035 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 12236 AND warehouse_id = 7;

-- ===== 036 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 9273
ORDER BY review_date DESC LIMIT 20;

-- ===== 037 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'daniel.okafor1616@mail.com';

-- ===== 038 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 16752 AND warehouse_id = 4;

-- ===== 039 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 11217 AND warehouse_id = 7;

-- ===== 040 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Ines.petrov88840@mail.com';

-- ===== 041 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 9714
ORDER BY review_date DESC LIMIT 20;

-- ===== 042 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Pale %'
ORDER BY title LIMIT 25;

-- ===== 043 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'eero.gupta96935@mail.com';

-- ===== 044 =====
SELECT b.book_id, b.title, SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN books b        ON b.book_id   = oi.book_id
WHERE o.order_date >= '2022-10-01' AND o.order_date < '2022-11-01'
GROUP BY b.book_id, b.title
ORDER BY revenue DESC LIMIT 10;

-- ===== 045 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Elena.nakamura64917@example.org';

-- ===== 046 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 14050 AND warehouse_id = 8;

-- ===== 047 =====
SELECT DISTINCT r.user_id, r.book_id
FROM reviews r
WHERE EXISTS (
    SELECT 1 FROM orders o
    JOIN order_items oi ON oi.order_id = o.order_id
    WHERE o.user_id = r.user_id AND oi.book_id = r.book_id
)
  AND r.review_date >= '2022-11-01' AND r.review_date < '2022-12-01';

-- ===== 048 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'greta.ivanov194504@shop.net';

-- ===== 049 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'maya.wagner67597@shop.net';

-- ===== 050 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('XIOMARA.UEDA97910@SHOP.NET');

-- ===== 051 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 8329 AND warehouse_id = 5;

-- ===== 052 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 16810
ORDER BY review_date DESC LIMIT 20;

-- ===== 053 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Endle%'
ORDER BY title LIMIT 25;

-- ===== 054 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 5193
ORDER BY review_date DESC LIMIT 20;

-- ===== 055 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 8909
ORDER BY review_date DESC LIMIT 20;

-- ===== 056 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'farid.ivanov121199@example.org';

-- ===== 057 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('ROSA.QUIROGA89171@SHOP.NET');

-- ===== 058 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('YUSUF.PETROV151428@BOOKS.IO');

-- ===== 059 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'ines.moreno118711@books.io';

-- ===== 060 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'arturo.gupta107598@mail.com';

-- ===== 061 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'Greta.ivanov61108@shop.net';

-- ===== 062 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2022-09-01' AND order_date < '2022-10-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 063 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'cooking'
  AND price BETWEEN 5 AND 25
  AND publication_year >= 2020
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 064 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'greta.zhang125210@shop.net';

-- ===== 065 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 17422 AND warehouse_id = 5;

-- ===== 066 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'fantasy'
  AND price BETWEEN 5 AND 40
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 067 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 13170 AND warehouse_id = 6;

-- ===== 068 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'wei.hassan122180@books.io';

-- ===== 069 =====
SELECT o.order_id, o.user_id, o.order_date, o.total_amount
FROM orders o
JOIN users u ON u.user_id = o.user_id
WHERE u.is_premium = TRUE
  AND o.order_date >= '2024-09-08' AND o.order_date < '2024-09-15'
ORDER BY o.order_date DESC;

-- ===== 070 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 19580
ORDER BY review_date DESC LIMIT 20;

-- ===== 071 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Winte%'
ORDER BY title LIMIT 25;

-- ===== 072 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 15434 AND warehouse_id = 8;

-- ===== 073 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 12940 AND warehouse_id = 8;

-- ===== 074 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 1566
ORDER BY review_date DESC LIMIT 20;

-- ===== 075 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 28375
ORDER BY review_date DESC LIMIT 20;

-- ===== 076 =====
UPDATE inventory
SET stock_count = stock_count - 1, last_updated = CURRENT_TIMESTAMP
WHERE book_id = 16270 AND warehouse_id = 1;

-- ===== 077 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'thriller'
  AND price BETWEEN 5 AND 50
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 078 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'hiro.petrov179135@shop.net';

-- ===== 079 =====
SELECT order_id, user_id, order_date, total_amount
FROM orders
WHERE order_date >= '2023-08-01' AND order_date < '2023-09-01'
ORDER BY order_date DESC LIMIT 50;

-- ===== 080 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'sven.zhang86875@books.io';

-- ===== 081 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'children'
  AND price BETWEEN 5 AND 25
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 082 =====
SELECT DISTINCT r.user_id, r.book_id
FROM reviews r
WHERE EXISTS (
    SELECT 1 FROM orders o
    JOIN order_items oi ON oi.order_id = o.order_id
    WHERE o.user_id = r.user_id AND oi.book_id = r.book_id
)
  AND r.review_date >= '2023-04-01' AND r.review_date < '2023-05-01';

-- ===== 083 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'fantasy'
  AND price BETWEEN 10 AND 30
  AND publication_year >= 2021
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 084 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'kiri.jensen65118@example.org';

-- ===== 085 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'dania.ivanov142585@example.org';

-- ===== 086 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'pablo.chen33630@mail.com';

-- ===== 087 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'cooking'
  AND price BETWEEN 15 AND 25
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 088 =====
SELECT COUNT(*)
FROM book_rating_summary
WHERE n_reviews >= 10 AND avg_rating > 4.0;

-- ===== 089 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'fiction'
  AND price BETWEEN 10 AND 40
  AND publication_year >= 2022
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 090 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'quincy.moreno160732@shop.net';

-- ===== 091 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 1725
ORDER BY review_date DESC LIMIT 20;

-- ===== 092 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'dania.ferreira83539@shop.net';

-- ===== 093 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'carla.silva68503@mail.com';

-- ===== 094 =====
SELECT user_id, is_premium, country
FROM users
WHERE email = 'luca.ferreira167819@example.org';

-- ===== 095 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 6941
ORDER BY review_date DESC LIMIT 20;

-- ===== 096 =====
SELECT book_id, title, price, publication_year
FROM books
WHERE genre = 'cooking'
  AND price BETWEEN 20 AND 30
  AND publication_year >= 2018
ORDER BY publication_year DESC, price ASC LIMIT 50;

-- ===== 097 =====
SELECT user_id, is_premium
FROM users
WHERE LOWER(email) = LOWER('XIOMARA.WAGNER26168@EXAMPLE.ORG');

-- ===== 098 =====
SELECT book_id, title, price
FROM books
WHERE title LIKE 'Hollo%'
ORDER BY title LIMIT 25;

-- ===== 099 =====
SELECT review_id, user_id, rating, review_text, review_date
FROM reviews
WHERE book_id = 3058
ORDER BY review_date DESC LIMIT 20;

-- ===== 100 =====
SELECT COUNT(*)
FROM book_rating_summary
WHERE n_reviews >= 10 AND avg_rating > 4.0;
