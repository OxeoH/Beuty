alter table appointments
drop
column appointment_date;

ALTER TABLE appointments
    ADD COLUMN work_schedule_id BIGINT,
ADD CONSTRAINT fk_appointment_schedule FOREIGN KEY (work_schedule_id) REFERENCES work_schedules(id);
