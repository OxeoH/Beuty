INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 999999,
       true,
       'admin@admin.admin',
       'Admin Adminov',
       '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq',
       'ADMIN',
       'AdminAdmin777',
       false WHERE NOT EXISTS (SELECT 999999 FROM users WHERE username = 'AdminAdmin777');