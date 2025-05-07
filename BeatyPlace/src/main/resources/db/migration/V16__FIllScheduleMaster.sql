INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-09' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-09' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-09', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-09' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-10' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-10' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-10', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-10' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-11' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-11' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-11', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-11' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-12' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-12' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-12', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-12' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-13' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-13' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-13', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-13' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-14' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-14' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-14', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-14' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-15' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-15' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-15', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-15' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-16' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-16' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-16', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-16' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-17' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-17' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-17', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-17' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-18' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-18' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-18', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-18' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-19' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-19' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-19', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-19' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-20' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-20' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-20', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-20' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-21' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-21' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-21', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-21' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 999, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 999, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 999, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 999 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1000, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1000, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1000, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1000 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1001, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1001, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1001, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1001 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1002, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1002, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1002, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1002 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1003, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1003, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1003, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1003 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1004, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1004, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1004, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1004 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1005, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1005, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1005, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1005 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1006, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1006, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1006, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1006 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1007, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1007, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1007, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1007 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1008, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1008, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1008, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1008 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1009, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1009, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1009, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1009 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1010, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1010, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1010, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1010 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1011, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1011, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1011, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1011 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1012, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1012, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1012, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1012 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1013, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1013, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1013, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1013 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1014, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1014, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1014, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1014 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1015, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1015, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1015, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1015 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1016, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1016, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1016, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1016 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1017, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1017, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1017, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1017 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1018, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1018, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1018, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1018 AND date = '2025-06-22' AND start_time = '15:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '09:00:00', '12:00:00', 1019, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-22' AND start_time = '09:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '12:00:00', '15:00:00', 1019, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-22' AND start_time = '12:00:00'
);
INSERT INTO work_schedules (start_time, end_time, master_id, date, status)
SELECT '15:00:00', '18:00:00', 1019, '2025-06-22', 'FREE'
    WHERE NOT EXISTS (
    SELECT 1 FROM work_schedules
    WHERE master_id = 1019 AND date = '2025-06-22' AND start_time = '15:00:00'
);