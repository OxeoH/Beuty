INSERT INTO categories (id, name, price)
SELECT 1, 'Стрижка женская', 35.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 1 OR name = 'Стрижка женская');

INSERT INTO categories (id, name, price)
SELECT 2, 'Стрижка мужская', 25.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 2 OR name = 'Стрижка мужская');

INSERT INTO categories (id, name, price)
SELECT 3, 'Окрашивание волос', 60.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 3 OR name = 'Окрашивание волос');

INSERT INTO categories (id, name, price)
SELECT 4, 'Маникюр классический', 20.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 4 OR name = 'Маникюр классический');

INSERT INTO categories (id, name, price)
SELECT 5, 'Педикюр', 30.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 5 OR name = 'Педикюр');

INSERT INTO categories (id, name, price)
SELECT 6, 'Укладка волос', 40.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 6 OR name = 'Укладка волос');

INSERT INTO categories (id, name, price)
SELECT 7, 'Массаж лица', 50.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 7 OR name = 'Массаж лица');

INSERT INTO categories (id, name, price)
SELECT 8, 'Чистка лица', 45.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 8 OR name = 'Чистка лица');

INSERT INTO categories (id, name, price)
SELECT 9, 'Брови и ресницы', 25.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 9 OR name = 'Брови и ресницы');

INSERT INTO categories (id, name, price)
SELECT 10, 'Шугаринг', 35.00
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 10 OR name = 'Шугаринг');
