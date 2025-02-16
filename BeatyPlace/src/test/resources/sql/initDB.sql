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
