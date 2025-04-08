INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 999999,
       true,
       'admin@admin.admin',
       'Admin Adminov',
       '$2a$10$QFyDacaVHsoZZ0E5cZFLu.GVx1XCRLo8.8whHVTGgOo9ld/jQOs9y',
       'ADMIN',
       'AdminAdmin777',
       false WHERE NOT EXISTS (SELECT 999999 FROM users WHERE username = 'AdminAdmin777');