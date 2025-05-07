INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 999, true, 'master1@example.com', 'Мастер 1', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master1', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 999);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1000, true, 'master2@example.com', 'Мастер 2', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master2', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1000);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1001, true, 'master3@example.com', 'Мастер 3', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master3', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1001);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1002, true, 'master4@example.com', 'Мастер 4', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master4', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1002);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1003, true, 'master5@example.com', 'Мастер 5', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master5', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1003);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1004, true, 'master6@example.com', 'Мастер 6', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master6', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1004);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1005, true, 'master7@example.com', 'Мастер 7', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master7', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1005);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1006, true, 'master8@example.com', 'Мастер 8', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master8', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1006);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1007, true, 'master9@example.com', 'Мастер 9', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master9', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1007);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1008, true, 'master10@example.com', 'Мастер 10', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master10', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1008);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1009, true, 'master11@example.com', 'Мастер 11', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master11', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1009);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1010, true, 'master12@example.com', 'Мастер 12', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master12', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1010);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1011, true, 'master13@example.com', 'Мастер 13', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master13', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1011);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1012, true, 'master14@example.com', 'Мастер 14', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master14', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1012);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1013, true, 'master15@example.com', 'Мастер 15', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master15', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1013);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1014, true, 'master16@example.com', 'Мастер 16', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master16', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1014);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1015, true, 'master17@example.com', 'Мастер 17', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master17', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1015);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1016, true, 'master18@example.com', 'Мастер 18', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master18', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1016);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1017, true, 'master19@example.com', 'Мастер 19', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master19', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1017);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1018, true, 'master20@example.com', 'Мастер 20', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master20', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1018);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1019, true, 'master21@example.com', 'Мастер 21', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master21', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1019);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1020, true, 'master22@example.com', 'Мастер 22', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master22', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1020);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1021, true, 'master23@example.com', 'Мастер 23', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master23', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1021);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1022, true, 'master24@example.com', 'Мастер 24', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master24', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1022);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1023, true, 'master25@example.com', 'Мастер 25', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master25', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1023);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1024, true, 'master26@example.com', 'Мастер 26', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master26', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1024);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1025, true, 'master27@example.com', 'Мастер 27', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master27', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1025);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1026, true, 'master28@example.com', 'Мастер 28', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master28', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1026);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1027, true, 'master29@example.com', 'Мастер 29', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master29', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1027);

INSERT INTO users (id, email_verified, email, full_name, password, role, username, locked)
SELECT 1028, true, 'master30@example.com', 'Мастер 30', '$2a$08$vohilNRV5iT6bd1S8aKqmOCcX7RztCH6xMFacOn/zZdoDgJDeYtiq', 'MASTER', 'master30', false
    WHERE NOT EXISTS (SELECT 1 FROM users WHERE id = 1028);