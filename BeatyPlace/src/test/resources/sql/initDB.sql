INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username, locked)
SELECT true, '123456', 12, '2025-12-31 23:59:59', 'admin@example.com', 'Admin User', 'admin_pass', 'ADMIN', 'admin', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'admin@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username, locked)
SELECT true, '654321', 2, '2025-12-31 23:59:59', 'client@example.com', 'Client User', 'client_pass', 'CLIENT', 'client1', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'client@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username, locked)
SELECT false, '987654', 3, '2025-12-31 23:59:59', 'master@example.com', 'Master User', 'master_pass', 'MASTER', 'master1', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'master@example.com');

INSERT INTO users (email_verified, verification_code, id, verification_code_expires_at, email, full_name, password, role, username, locked)
SELECT true, '456789', 4, '2025-12-31 23:59:59', 'user@example.com', 'Regular User', 'user_pass', 'CLIENT', 'user123', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE email = 'user@example.com');

INSERT INTO categories (id, name)
SELECT 2, 'Manicure'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 2 OR name = 'Manicure');

INSERT INTO categories (id, name)
SELECT 3, 'Pedicure'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 3 OR name = 'Pedicure');

INSERT INTO categories (id, name)
SELECT 4, 'Massage'
    WHERE NOT EXISTS (SELECT 1 FROM categories WHERE id = 4 OR name = 'Massage');

INSERT INTO appointments (price, appointment_date, category_id, client_id, master_id, client_note, status)
SELECT 50.00, now() + INTERVAL '1 day', 2, 2, 3, 'Хотел бы уточнить детали.', 'PENDING'
WHERE NOT EXISTS (
    SELECT 1 FROM appointments
    WHERE appointment_date = now() + INTERVAL '1 day'
  AND client_id = 2
  AND master_id = 3
  AND status = 'PENDING'
    );

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
    WHERE user_id = 2 AND message = 'Ваша запись подтверждена'
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

INSERT INTO blacklist (blocked_at, blocked_by, blocked_until, user_id, reason)
SELECT now(), 12, now() + INTERVAL '1 day', 2, 'Нарушение правил'
WHERE NOT EXISTS (
    SELECT 1 FROM blacklist
    WHERE user_id = 2 AND reason = 'Нарушение правил'
    );



