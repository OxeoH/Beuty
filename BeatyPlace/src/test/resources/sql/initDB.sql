INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username)
SELECT true, '123456', 12, '2025-12-31 23:59:59', 'admin@example.com', 'Admin User', 'admin_pass', 'ADMIN', 'admin'
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'admin@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username)
SELECT true, '654321', 2, '2025-12-31 23:59:59', 'client@example.com', 'Client User', 'client_pass', 'CLIENT', 'client1'
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'client@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username)
SELECT false, '987654', 3, '2025-12-31 23:59:59', 'master@example.com', 'Master User', 'master_pass', 'MASTER', 'master1'
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'master@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username)
SELECT true, '456789', 4, '2025-12-31 23:59:59', 'user@example.com', 'Regular User', 'user_pass', 'CLIENT', 'user123'
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'user@example.com');

INSERT INTO categories (name)
SELECT 'Haircut'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Haircut');

INSERT INTO categories (name)
SELECT 'Manicure'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Manicure');

INSERT INTO categories (name)
SELECT 'Pedicure'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Pedicure');

INSERT INTO categories (name)
SELECT 'Massage'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Massage');

INSERT INTO salon_reviews (rating, client_id, created_at, comment)
SELECT 5, 2, NOW(), 'Отличный сервис!'
    WHERE NOT EXISTS (SELECT 1 FROM salon_reviews WHERE client_id = 1);

INSERT INTO salon_reviews (rating, client_id, created_at, comment)
SELECT 4, 3, NOW(), 'Все понравилось, но можно улучшить атмосферу.'
    WHERE NOT EXISTS (SELECT 1 FROM salon_reviews WHERE client_id = 2);

INSERT INTO salon_reviews (rating, client_id, created_at, comment)
SELECT 3, 4, NOW(), 'Средний уровень, ожидал большего.'
    WHERE NOT EXISTS (SELECT 1 FROM salon_reviews WHERE client_id = 3);

INSERT INTO notifications (is_read, created_at, user_id, message, notification_type)
SELECT false, now(), 2, 'Ваша запись подтверждена', 'APPOINTMENT'
    WHERE NOT EXISTS (
    SELECT 1 FROM notifications
    WHERE user_id = 1 AND message = 'Ваша запись подтверждена'
);

INSERT INTO notifications (is_read, created_at, user_id, message, notification_type)
SELECT false, now(), 2, 'Ваш отзыв принят', 'REVIEW'
    WHERE NOT EXISTS (
    SELECT 1 FROM notifications
    WHERE user_id = 2 AND message = 'Ваш отзыв принят'
);

INSERT INTO notifications (is_read, created_at, user_id, message, notification_type)
SELECT true, now(), 3, 'Система обновлена', 'SYSTEM'
    WHERE NOT EXISTS (
    SELECT 1 FROM notifications
    WHERE user_id = 3 AND message = 'Система обновлена'
);

INSERT INTO reviews (rating, client_id, created_at, master_id, comment)
SELECT 3, 2, now(), 3, 'Не совсем то, что ожидал.'
    WHERE NOT EXISTS (
    SELECT 1 FROM reviews
    WHERE client_id = 2 AND master_id = 3 AND comment = 'Не совсем то, что ожидал.'
)
LIMIT 1;


